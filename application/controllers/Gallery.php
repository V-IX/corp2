<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Gallery extends SITE_Controller {
	
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
		$this->init_site($this->page);
		
		$params = array('visibility' => 1);
		$this->data['imgs'] = $this->model->getImgs(false, false, false, 'addDate|DESC', $params, true);
		
		$this->data['items'] = $this->model->getItems(false, false, 'num|DESC', $params);
		
		$this->breadcrumbs->add($this->data['pageinfo']['name'], uri(1));
		
		if(count($this->data['items']) == 1)
		{
			$this->data['item'] = $this->data['items'][0];
			
			$this->breadcrumbs->add($this->data['item']['title'], uri(1).'/'.$this->data['item']['alias']);
			$this->data['view'] = 'pages/gallery-view';
		} else {
			$this->data['view'] = 'pages/gallery-albums';
		}
		
		$this->site_seo();
		
		$this->load->view('site/common/template', $this->data);
	}
	
	public function view()
	{
		$this->init_site($this->page);
		$data = $this->data;
		
		$item = $this->model->getItem(uri(2), true, array('visibility' => 1));
		if(empty($item)) redirect(uri(1));
		
		$this->data['item'] = $item;
		
		$this->data['imgs'] = $this->model->getImgs($item['idItem']);
		
		$this->breadcrumbs->add($this->data['pageinfo']['name'], uri(1));
		$this->breadcrumbs->add($item['title'], uri(1).'/'.$item['alias']);
		
		$this->site_seo();
		$this->data['view'] = 'pages/gallery-view';
		$this->load->view('site/common/template', $this->data);
	}
}
