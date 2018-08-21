<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Services extends SITE_Controller {
	
	protected $model = '';
	protected $page = 'services';
	
	public function __construct ()
	{
		parent::__construct();
		$this->load->model('services_model');
		$this->model = $this->services_model;
	}
	
	public function index()
	{
		$this->init_site($this->page);
		
		$_nav_current = 0;
		$_nav_parent = 0;
		
		$this->data['navs'] = $this->model->getItemsTreeFull();
		$this->data['navs_current'] = $_nav_current;
		$this->data['navs_parent'] = $_nav_parent;
		
		$this->data['items'] = $this->data['navs'];
		
		$this->load->helper('text');
		
		$this->breadcrumbs->add($this->data['pageinfo']['name'], uri(1));
		
		$this->site_seo();
		$this->data['view'] = 'pages/services-list';
		$this->load->view('site/common/template', $this->data);
	}
	
	public function view()
	{
		$this->init_site($this->page);
		
		$item = $this->model->getItem(uri(2), true, array('visibility' => 1));
		if(empty($item)) redirect(uri(1));
		
		$this->data['item'] = $item;
		
		$this->data['navs'] = $this->model->getItemsTreeFull();
		$this->data['navs_current'] = $item['idItem'];
		$this->data['navs_parent'] = $item['idParent'];
		
		$this->data['items'] = $this->model->getItems(false, false, 'num|DESC', array('idParent' => $item['idItem'], 'visibility' => 1));
		
		$this->breadcrumbs->add($this->data['pageinfo']['name'], uri(1));
		$this->breadcrumbs->add($item['title'], uri(1).'/'.$item['alias']);
		
		$this->site_seo();
		$this->data['view'] = 'pages/services-view';
		$this->load->view('site/common/template', $this->data);
	}
}
