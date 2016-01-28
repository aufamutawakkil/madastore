<?php
	/**
	* 
	*/
	class ControllerDesignGridBanner extends Controller
	{
		public function index(){
			# language
			$this->load->language('design/gridbanner');
			$data['text_heading'] = $this->language->get('text_grid_banner');



			$this->document->setTitle( $this->language->get('text_heading') );
			$this->load->model('design/gridbanner');
			
			# link navigation
			$data['breadcrumbs'] = array();
			$data['breadcrumbs'][] = array(
				'text' 	=> 	$this->language->get('text_home'),
				'url' 	=>	$this->url->link('common/dashboard','token='.$this->session->data['token'],'SSL')
			);
			$data['breadcrumbs'][] = array(
				'text' 	=> 	$this->language->get('text_grid_banner'),
				'url' 	=>	$this->url->link('design/gridbanner','token='.$this->session->data['token'],'SSL')
			);

			if( isset($this->error['warning']) ){
				$data['error_warning'] = $this->error['warning'];
			}else{
				$data['error_warning'] = '';
			}

			if( isset($this->error['success']) ){
				$data['success'] = $this->error['success'];
				unset( $this->session->data['success'] );
			}else{
				$data['success'] = '';
			}

			$data['header'] = $this->load->controller('common/header');
			$data['column_left'] = $this->load->controller('common/column_left');
			$data['footer'] = $this->load->controller('common/footer');
			$this->response->setOutput( $this->load->view('design/gridbanner.tpl',$data));

		}

		public function addBanner(){

			if( ($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()){
				$this->model->add();
			}

			if( isset($this->error['warning']) ){
				$data['error_warning'] = $this->error['warning'];
			}else{
				$data['error_warning'] = '';
			}

			if( isset($this->error['success']) ){
				$data['success'] = $this->error['success'];
				unset( $this->session->data['success'] );
			}else{
				$data['success'] = '';
			}
		}
		
		
	}
?>