<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends ADMIN_Controller {
	
	public function index()
	{
		$this->init_admin('home');
		$data = $this->data;
		
		$this->load->model('feedback_model');
		$data['counter']['feedback'] = $this->feedback_model->getCount(array('isRead' => 0));
		$data['feedbacks'] = $this->feedback_model->getItems(false, false, 'addDate|DESC', array('isRead' => 0));
		
		$this->load->model('reviews_model');
		$data['reviews'] = $this->reviews_model->getItems(false, false, 'addDate|DESC', array('isRead' => 0));
		
		$this->load->model('services_model');
		$data['counter']['services'] = $this->services_model->getCount();
		
		$this->load->model('news_model');
		$data['counter']['news'] = $this->news_model->getCount();
		$data['news'] = $this->news_model->getItems(3, false, 'addDate|DESC');
		
		$this->load->model('articles_model');
		$data['counter']['articles'] = $this->articles_model->getCount();
		$data['articles'] = $this->articles_model->getItems(3, false, 'addDate|DESC');
		
		$news = file_get_contents('http://narisuemvse.by/news/get?limit=3');
		$news = json_decode($news, true);
		if(!is_array($news)) $news = array();
		$data['news_nv'] = $news;
		
		$data['view'] = 'common/index';
		$this->load->view('admin/common/template', $data);
	}
}
