<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Gallery extends ADMIN_Controller {
	
	protected $model = '';
	protected $page = 'gallery';
	
	public function __construct ()
	{
		parent::__construct();
		$this->load->model('gallery_model');
		$this->model = $this->gallery_model;
	}
	
	public function index()
	{
		$this->init_admin($this->page);
		$data = $this->data;
		
		$count = $this->model->getCount();
		$pagination = admin_pagination(uri(2).'/index', $count);
		
		$data['items'] = $this->model->getItems($pagination['per_page'], $pagination['offset'], 'addDate|DESC', array());
		$this->load->library('pagination');
		$this->pagination->initialize($pagination);
		
		$this->breadcrumbs->add($data['pageinfo']['name'], uri(2));
		
		$data['view'] = uri(2).'/index';
		$this->load->view('admin/common/template', $data);
	}
	
	public function create()
	{
		$this->load->library('upload', $this->model->configPhoto());
		
		$this->init_admin($this->page);
		$data = $this->data;
		
		$error = false;
		if($this->input->post() and $this->model->validate())
		{
			$error = $this->model->insert();
			if(!$error) redirect('/admin/'.uri(2));
		}
		
		$data['size'] = $this->model->thumbSize();
		
		$this->breadcrumbs->add($data['pageinfo']['name'], uri(2));
		$this->breadcrumbs->add('Добавить', '');
		
		$data['_error'] = $error;
		$data['view'] = uri(2).'/create';
		$this->load->view('admin/common/template', $data);
	}
	
	public function edit()
	{
		$this->load->library('upload', $this->model->configPhoto());
		
		$this->init_admin($this->page);
		$data = $this->data;
		
		$error = false;
		if($this->input->post() and $this->model->validate())
		{
			$error = $this->model->update(uri(4));
			if(!$error) redirect('/admin/'.uri(2));
		}
		
		$data['item'] = $this->model->getItem(uri(4));
		if(empty($data['item']))
		{
			set_flash('result', action_result('error', fa('warning mr5').' Запись не найдена!', true));
			redirect('admin/'.uri(2));
		}
		
		$data['size'] = $this->model->thumbSize();
		
		$this->breadcrumbs->add($data['pageinfo']['name'], uri(2));
		$this->breadcrumbs->add('Редактирование', '');
		
		$data['_error'] = $error;
		$data['view'] = uri(2).'/edit';
		$this->load->view('admin/common/template', $data);
	}
	
	public function view()
	{
		$this->init_admin($this->page);
		$data = $this->data;
		
		$data['item'] = $this->model->getItem(uri(4));
		if(empty($data['item']))
		{
			set_flash('result', action_result('error', fa('warning mr5').' Запись не найдена!', true));
			redirect('admin/'.uri(2));
		}
		
		$this->breadcrumbs->add($data['pageinfo']['name'], uri(2));
		$this->breadcrumbs->add('Просмотр', '');
		
		$data['view'] = uri(2).'/view';
		$this->load->view('admin/common/template', $data);
	}
	
	public function delete()
	{
		if($this->input->post()) $this->model->delete(uri(4));
		redirect('admin/'.uri(2));
	}
	
	public function ajaxDeleteImg()
	{
		$this->output->set_content_type('application/json');
		
		if($this->input->post()) {
			$data = $this->model->ajaxDeleteImg(uri(4));
		}
		
		$this->output->set_output(json_encode($data));
	}
	
	
	/* imgs */
	
	public function imgs()
	{
		$this->init_admin($this->page);
		$data = $this->data;
		
		$data['item'] = $this->model->getItem(uri(4));
		if(empty($data['item']))
		{
			set_flash('result', action_result('error', fa('warning mr5').' Запись не найдена!', true));
			redirect('admin/'.uri(2));
		}
		
		$data['count'] = $this->model->getImgsCount(uri(4));
		$data['items'] = $this->model->getImgs(uri(4), false, false, 'addDate|DESC');
		
		$this->breadcrumbs->add($data['pageinfo']['name'], uri(2));
		$this->breadcrumbs->add('Фотографии', '');
		
		$data['view'] = uri(2).'/imgs';
		$this->load->view('admin/common/template', $data);
	}
	
	function upload()
	{	
		$parent = $this->input->post('idParent');
		if(!$parent)
		{
			$this->session->set_flashdata('result', action_result('error', '<i class="fa fa-fw fa-times"></i> Родительская категория не указана!', true));
			redirect('admin/gallery');
		}
		
		$this->load->library('upload', $this->model->configPhoto());
		
		$this->model->upload_imgs($parent);
		redirect('admin/'.uri(2).'/imgs/'.$parent);
	}
	
	public function ajaxEdit()
	{
		$this->output->set_content_type('application/json');
		
		$post = $this->input->post();
		
		$data['error'] = false;
		$data['success'] = false;
		
		$error = $this->model->edit_img($post);
		if($error) $data['error'] = $error;
		else $data['success'] = true;
		
		$this->output->set_output(json_encode($data));
		return;
	}
	
	public function ajaxDelete()
	{
		$this->output->set_content_type('application/json');
		
		$post = $this->input->post();
		
		$data['error'] = false;
		$data['success'] = false;
		
		$error = $this->model->delete_img($post);
		if($error) $data['error'] = $error;
		else $data['success'] = true;
		
		$this->output->set_output(json_encode($data));
		return;
	}
	
}
