<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends SITE_Controller {

	protected $model = '';
	protected $page = 'home';
	
	public function __construct ()
	{
		parent::__construct();
	}
	
	public function index()
	{
		$this->init_site($this->page);
		
		$this->load->model('slider_model');
		$this->data['slider'] = $this->slider_model->getItems(false, false, 'num|DESC', array('visibility' => 1));
		
		$this->load->model('news_model');
		$this->data['lmenu_news'] = $this->news_model->getItems(false, false, 'addDate|DESC', array('visibility' => 1));
		
		$this->data['tpl_home'] = true;
		
		$this->site_seo();
		$this->data['view'] = 'common/index';
		$this->load->view('site/common/template', $this->data);
	}
	
	public function sitemap()
	{
		$error = $this->settings_model->sitemap();
		var_dump($error);
	}
}
