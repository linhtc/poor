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
class Register extends MY_Controller {

	private $class;
	private $folder;
	private $viewPath;
	
    function __construct() {
        parent::__construct();
        $this->class = strtolower(get_class());
        $this->viewPath = 'frontend/register/';
        $this->folder = 'machining';
    }

    /**
     * View
     */
    public function teacher() {
        $permission = 1;//$this->check_permission($this->class, 'view');
        $this->layout->set_layout_dir('views/frontend/layouts/');
        $this->layout->set_layout('default');

        $listCss = array(
        	'static/default/frontend/css/custom.css'
        );
        $listJs = array(
        	
        );
        

        $data = array(
            'permission' => $permission,
            'listJs' => add_Js($listJs),
        	'listCss' => add_css($listCss),
        	'title' => '',
        	'uuid' => 'register'
        );

        $this->parser->parse($this->viewPath."teacher", $data);
    }
}
