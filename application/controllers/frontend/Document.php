<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Books
 *
 * @author CPU10890-local
 */
class Document extends MY_Controller {

	private $class;
	private $folder;
	private $viewPath;
	
    function __construct() {
        parent::__construct();
        $this->class = strtolower(get_class());
        $this->viewPath = 'frontend/document/';
    }
    
    /**
     * View
     */
    public function view() {
    	$permission = 1;//$this->check_permission($this->class, 'view');
    	$this->layout->set_layout_dir('views/frontend/layouts/');
    	$this->layout->set_layout('default');
    	
    	$listCss = array(
    			
    	);
    	$listJs = array(
    			
    	);
    	
    	$data = array(
			'permission' => $permission,
			'listJs' => add_Js($listJs),
			'listCss' => add_css($listCss)
    	);
    	
    	$this->parser->parse($this->viewPath."view", $data);
    }
    
    /**
     * Subject
     */
    public function subject($subject='', $class='') {
    	$permission = 1;//$this->check_permission($this->class, 'view');
    	$this->layout->set_layout_dir('views/frontend/layouts/');
    	$this->layout->set_layout('default');
    	
    	$listCss = array(
    			
    	);
    	$listJs = array(
    			
    	);
    	
    	$data = array(
    		'permission' => $permission,
    		'listJs' => add_Js($listJs),
    		'listCss' => add_css($listCss),
    		'subject' => $subject,
    		'class' => $class
    	);
    	
    	$this->parser->parse($this->viewPath."subject", $data);
    }
}
