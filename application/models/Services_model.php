<? class Services_model extends CI_Model {

	protected $_folder = 'services';
	protected $_table = 'services';
	protected $_page = 'services';
    
    public function getItems($limit = false, $offset = false, $order = false, $params = array())
	{
		$items = $this->query->items($this->_table, $limit, $offset, $order, $params);
		return $items;		
	}
    
    public function getItemsList($limit = false, $offset = false, $order = false, $params = array())
	{
		$items = $this->getItems($limit, $offset, $order, $params);
		if(empty($items)) return array();
		
		$return = $this->query->items_list($items, 'idItem', 'title');
		return $return;
	}
    
    public function getItemsTree()
	{
		$this->db->select('idItem, title');
		$parents = $this->getItems(false, false, 'num|DESC//title|ASC', array('idParent' => 0));
		if(empty($parents)) return array();
		
		$this->db->select('idItem, idParent, title');
		$childs = $this->getItems(false, false, 'num|DESC//title|ASC', array('idParent !=' => 0));
		
		$tree = array();
		foreach($parents as $item)
		{
			$tree[$item['idItem']] = $item;
			$tree[$item['idItem']]['child'] = array();
		}
		
		foreach($childs as $child)
		{
			$tree[$child['idParent']]['child'][$child['idItem']] = $child;
		}
		
		return $tree;
	}
    
    public function getItemsTreeFull()
	{
		$parents = $this->getItems(false, false, 'num|DESC//title|ASC', array('idParent' => 0, 'visibility' => 1));
		if(empty($parents)) return array();
		
		$childs = $this->getItems(false, false, 'num|DESC//title|ASC', array('idParent !=' => 0, 'visibility' => 1));
		
		$tree = array();
		foreach($parents as $item)
		{
			$tree[$item['idItem']] = $item;
			$tree[$item['idItem']]['child'] = array();
		}
		
		foreach($childs as $child)
		{
			$tree[$child['idParent']]['child'][$child['idItem']] = $child;
		}
		
		return $tree;
	}
	
	public function getItem($id, $alias = false, $params = array())
	{
		if($alias) $params['alias'] = $id;
		else $params['idItem'] = $id;
		
		$item = $this->query->item($this->_table, $params);
		return $item;
		
	}
	
	/* WORK WITH UPDATE */
	
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
			$id = $this->db->insert_id();
			$update['upline'] = '0.';
			if($insert['idParent'] != 0) $update['upline'] .= $insert['idParent'].'.';
			$update['upline'] .= $id;
			
			$this->db->where('idItem', $id);
			$this->query->update($this->_table, $update, array('idItem' => $id));
			
			set_flash('result', action_result('success', fa('check mr5').' Запись <span class="medium">"'.$insert['title'].'"</span> успешно создана!', true));
			return false;
		}
	}
	
	public function update($id)
	{
		$insert = $this->post();
		
		$insert['upline'] = '0.';
		if($insert['idParent'] != 0) $insert['upline'] .= $insert['idParent'].'.';
		$insert['upline'] .= $id;
		
		//var_dump($insert['upline']); die;
		
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
		
		if($item['idParent'] == 0)
		{
			$check = $this->query->items_count($this->_table, array('idParent' => $item['idItem']));
			if($check != 0)
			{
				set_flash('result', action_result('error', fa('warning mr5').' Удаление не возможно. Запись не пуста!', true));
				return true;
			}
		}
		
		$this->db->where('idItem', $id);
		if($this->db->delete($this->_table))
		{
			$this->deletephoto($item['img']);
			$this->session->set_flashdata('result', action_result('success', fa('trash mr5').' Запись <span class="medium">"'.$item['title'].'"</span> успешно удалена!', true));
			return true;
		} else {
			$this->session->set_flashdata('result', action_result('error', fa('trash mr5').' '.server_error(), true));
			return false;
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
		
		if(array_key_exists('home', $return)) $return['home'] = $return['home'] ? 1 : 0;
		else $return['home'] = 0;
		
		return $return;
	}
	
	public function getCount($params = array())
	{
		return $this->query->items_count($this->_table, $params);
	}
	
	# VALIDATE
	
	public function validate()
	{
		$rules = array(
			array(
				'field' => 'title',
				'label' => 'Заголовок',
				'rules'   => 'trim|required|max_length[255]'
			),
			array(
				'field' => 'idParent',
				'label' => 'Родительская категория',
				'rules'   => 'trim|required|integer'
			),
			array(
				'field' => 'text',
				'label' => 'Текст',
				'rules'   => ''
			),
			array(
				'field' => 'alias',
				'label' => 'Ссылка',
				'rules'   => 'trim|required|max_length[255]'
			),
			array(
				'field' => 'mTitle',
				'label' => 'Title',
				'rules'   => 'trim|required|max_length[255]'
			),
			array(
				'field' => 'mKeywords',
				'label' => 'Ключевые слова',
				'rules'   => 'trim'
			),
			array(
				'field' => 'mDescription',
				'label' => 'Ключевое описание',
				'rules'   => 'trim'
			),
			array(
				'field' => 'num',
				'label' => 'Номер по порядку',
				'rules'   => 'trim|integer'
			),
			array(
				'field' => 'home_num',
				'label' => 'Номер на главной',
				'rules'   => 'trim|integer'
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
	

} ?>