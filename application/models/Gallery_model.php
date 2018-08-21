<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Gallery_model extends CI_Model {
	
	protected $_folder = 'gallery';
	protected $_table = 'gallery';
	protected $_imgs = 'gallery_imgs';
	protected $_page = 'gallery';
	
	public function getItems($limit = false, $offset = false, $order = false, $params = array())
	{
		$this->db->select('gallery.*, COUNT(gallery_imgs.idParent) as count_imgs');
		
		$this->db->join('gallery_imgs', 'gallery.idItem = gallery_imgs.idParent', 'left');
		$this->db->group_by('gallery.idItem');
		
		$items = $this->query->items($this->_table, $limit, $offset, $order, $params);
		return $items;
	}
	
	public function getItem($id, $alias = false, $params = array())
	{
		if($alias) $params['alias'] = $id;
		else $params['idItem'] = $id;
		
		$item = $this->query->item($this->_table, $params);
		return $item;
	}
	
	public function getCount($params = array())
	{
		return $this->query->items_count($this->_table, $params);
	}
	
	public function insert()
	{
		$insert = $this->post();
		
		$check = $this->getCount(array('alias' => $insert['alias']));
		if($check != 0) return action_result('error', fa('warning mr5').' Запись с ссылкой <span class="medium">'.$insert['title'].'</span> уже есть в базе!', true);
		
		if($_FILES['img']['name'] != '')
		{
			$img = $this->loadphoto('img');
			if(!$img) return action_result('error', fa('warning mr5').' Ошибка загрузки изображения!', true);
			else $insert['img'] = $img;
		}
		
		$error = $this->query->insert($this->_table, $insert);
		if($error)
		{
			if(isset($insert['img'])) $this->deletephoto($insert['img']);
			return $error;
		} else {
			set_flash('result', action_result('success', fa('check mr5').' Запись <span class="medium">"'.$insert['title'].'"</span> успешно создана!', true));
			return false;
		}
	}
	
	public function update($id)
	{
		$insert = $this->post();
		
		$check = $this->getCount(array('alias' => $insert['alias'], 'idItem !=' => $id));
		if($check != 0) return action_result('error', fa('warning mr5').' Запись с ссылкой <span class="medium">'.$insert['alias'].'</span> уже есть в базе!', true);
		
		if(array_key_exists('oldImg', $insert))
		{
			$oldImg = $insert['oldImg'];
			unset($insert['oldImg']);
		}
		
		if($_FILES['img']['name'] != '')
		{
			$img = $this->loadphoto('img');
			if(!$img) return action_result('error', fa('warning mr5').' Ошибка загрузки изображения!', true);
			else $insert['img'] = $img;
		}
		
		$error = $this->query->update($this->_table, $insert, array('idItem' => $id));
		if($error)
		{
			if(isset($insert['img'])) $this->deletephoto($insert['img']);
			return $error;
		} else {
			if(isset($insert['img']) and isset($oldImg)) $this->deletephoto($oldImg);
			set_flash('result', action_result('success', fa('check mr5').' Запись <span class="medium">"'.$insert['title'].'"</span> успешно обновлена!', true));
			return false;
		}
	}
	
	public function delete($id)
	{
		$insert = $this->post();
		if($insert['delete'] != 'delete')
		{
			set_flash('result', action_result('error', fa('warning mr5').' Ошибка данных POST!', true));
			return true;
		}
		
		$item = $this->getItem($id);
		if(empty($item))
		{
			set_flash('result', action_result('error', fa('warning mr5').' Запись не найдена!', true));
			return true;
		}
		
		$error = $this->query->delete($this->_table, array('idItem' => $id));
		if(!$error)
		{
			if(isset($item['img'])) $this->deletephoto($item['img']);
			
			$imgs = $this->getImgs($id);
			foreach($imgs as $img) $this->deletephoto($img['img']);
			$this->query->delete($this->_imgs, array('idParent' => $id));
			
			set_flash('result', action_result('success', fa('trash mr5').' Запись <span class="medium">"'.$item['title'].'"</span> успешно удалена!', true));
			return false;
		} else {
			set_flash('result', $error);
			return true;
		}
	}
	
	public function ajaxDeleteImg($id)
	{
		$insert = $this->post();
		if($insert['delete_img'] != 'delete')
		{
			return array('error' => true, 'text' => 'Ошибка данных POST');
		}
		
		$item = $this->getItem($id);
		if(empty($item))
		{
			return array('error' => true, 'text' => 'Запись не найдена');
		}
		
		$error = $this->query->update($this->_table, array('img' => null), array('idItem' => $id));
		if(!$error)
		{
			if(isset($item['img'])) $this->deletephoto($item['img']);
			return array('error' => false, 'text' => 'Запись успешно удалена');
		} else {
			return array('error' => true, 'text' => 'Ошибка сервера');
		}
	}
	
	
	# HELPER
	
	public function post()
	{
		$return = $this->input->post();
		if(array_key_exists('csrf_test_name', $return)) unset($return['csrf_test_name']);
		
		if(array_key_exists('visibility', $return)) $return['visibility'] = $return['visibility'] ? 1 : 0;
		else $return['visibility'] = 0;
		
		return $return;
	}
	
	# VALIDATE
	
	public function validate()
	{
		$rules = array(
			array(
				'field' => 'title',
				'label' => 'Заголовок',
				'rules'   => 'trim|required|max_length[255]',
			),
			array(
				'field' => 'alias',
				'label' => 'Ссылка (ЧПУ)',
				'rules'   => 'trim|required|max_length[255]',
			),
			array(
				'field' => 'text',
				'label' => 'Текст',
				'rules'   => 'trim',
			),
			array(
				'field' => 'num',
				'label' => 'Номер по порядку',
				'rules'   => 'trim|integer',
			),
			array(
				'field' => 'mTitle',
				'label' => 'Meta Title',
				'rules'   => 'trim|required|max_length[255]',
			),
			array(
				'field' => 'mKeywords',
				'label' => 'Meta Keywords',
				'rules'   => 'trim|max_length[255]',
			),
			array(
				'field' => 'mDescription',
				'label' => 'Meta Description',
				'rules'   => 'trim',
			),
		);
		
		$this->load->library('form_validation');
		$this->form_validation->set_error_delimiters('<div class="form-error">', '</div>');
		$this->form_validation->set_rules($rules);
		return $this->form_validation->run();
	}
	
	# LOAD IMAGE
	
	public function configPhoto()
	{
		$this->load->library('SimpleImage');
		$config['upload_path'] = './assets/uploads/'.$this->_folder.'/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg';
		$config['max_size'] = 2048;
		$config['encrypt_name'] = true;
		$config['remove_spaces'] = false;
		$congig['overwrite'] = true;
		return $config;
	}
	
	public function thumbSize($axis = false)
	{
		$this->db->select('thumb_x, thumb_y');
		$item = $this->query->item('pages_site', array('alias' => $this->_page));
		
		$return = array(
			'x' => $item['thumb_x'],
			'y' => $item['thumb_y'],
		);
		
		if($axis !== false) return $return[$axis];
		else return $return;
	}
	
	public function loadphoto($img)
	{
		$this->load->helper('file');
		if($this->upload->do_upload($img)) {
			$img = $this->upload->data();
			$file = $img['file_name'];
			
			$size = $this->thumbSize();
			$this->simpleimage->load('assets/uploads/'.$this->_folder.'/'.$img['file_name'])->thumbnail($size['x'], $size['y'])->save('assets/uploads/'.$this->_folder.'/thumb/'.$img['file_name']);
			
			return $file;
		} else {
			return false;
		}		
	}
	
	public function deletephoto($file)
	{
		$paths = array(
			'/assets/uploads/'.$this->_folder.'/'.$file,
			'/assets/uploads/'.$this->_folder.'/thumb/'.$file,
		);
		deletefile($paths);
	}
	
	
	# WORK WITH IMGS
	
	public function upload_imgs($parent)
	{
		$errors_status = false;
		$error = '<h4 class="medium">'.fa('warning mr5').' Ошибка загрузки!</h4>';
		
		$files = $_FILES;
		$cpt = count($_FILES['userfile']['name']);
		for($i=0; $i<$cpt; $i++)
		{           
			$_FILES['img']['name'] 		= $files['userfile']['name'][$i];
			$_FILES['img']['type'] 		= $files['userfile']['type'][$i];
			$_FILES['img']['tmp_name']	= $files['userfile']['tmp_name'][$i];
			$_FILES['img']['error']		= $files['userfile']['error'][$i];
			$_FILES['img']['size']		= $files['userfile']['size'][$i];
			
			//$this->upload->initialize($config);
			if (!$this->upload->do_upload('img'))
			{
				$errors_status = true;
				$error .= '<div class="mt10"><span class="medium">Ошибка загрузки изображения '.$_FILES['img']['name'].'</span><br/>'.$this->upload->display_errors().'</div>';
			}    
			else
			{
				$img = $this->upload->data();
				$db_err = $this->addImg($img, $parent);
				if($db_err) $error .= '<div class="mt10"><span class="medium">Ошибка загрузки изображения '.$_FILES['img']['name'].'</span><br/>'.$db_err.'</div>';
				
				$this->load->library('SimpleImage');
				
				$size = $this->thumbSize();
				$this->simpleimage->load('assets/uploads/'.$this->_folder.'/'.$img['file_name'])->thumbnail($size['x'], $size['y'])->save('assets/uploads/'.$this->_folder.'/thumb/'.$img['file_name']);
			}
		}
		
		if($errors_status) $this->session->set_flashdata('result', action_result('error', $error, true));
		else $this->session->set_flashdata('result', action_result('success', '<i class="fa fa-fw fa-check"></i> Все фотографии успешно добавлены!', true));
	}
	
	public function addImg($img, $parent)
	{
		//var_dump($img); die;
		$insert = array(
			'idParent' => $parent,
			'img' => $img['file_name'],
		);
		if(!$this->db->insert($this->_imgs, $insert))
		{
			return $this->db->_error_message();
		} else {
			return false;
		}
	}
	
	public function getImgs($parent = false, $limit = false, $offset = false, $order = false, $users = false)
	{
		if($users)
		{
			$this->db->where('visibility', 0);
			$al = $this->db->get($this->_table);
			if($al->num_rows() > 0)
			{
				$al = $al->result_array();
				$w = '(`idParent` != 0 ';
				foreach($al as $or)
				{
					$w .= 'AND `idParent` != '.$or['idItem'].' ';
				}
				$w .= ')';
				$this->db->where($w);
			}
		}
		
		if($parent) $this->db->where('idParent', $parent);
		
		$items = $this->query->items($this->_imgs, $limit, $offset, $order);
		
		return $items;
	}
	
	public function getImgsCount($parent = false)
	{
		if($parent) $this->db->where('idParent', $parent);		
		return $this->db->count_all_results($this->_imgs);
	}
	
	public function edit_img($post)
	{
		$insert = array(
			'ru' => $post['ru'],
			'en' => $post['en'],
		);
		
		$this->db->where('idItem', $post['idItem']);
		if(!$this->db->update($this->_imgs, $insert))
		{
			return $this->db->_error_message(); 
		} else {
			return false;
		}
	}
	
	public function delete_img($post)
	{
		$this->db->where('idItem', $post['idItem']);
		$file = $this->db->get($this->_imgs);
		$file = $file->row_array();
		
		$this->db->where('idItem', $post['idItem']);
		if(!$this->db->delete($this->_imgs))
		{
			return $this->db->_error_message(); 
		} else {
			$this->deletephoto($file['img']);
			return false;
		}
	}
}
