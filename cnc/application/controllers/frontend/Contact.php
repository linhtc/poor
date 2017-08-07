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
class Contact extends MY_Controller {

	private $class;
	private $viewPath;
	private $contactModel;
	
    function __construct() {
        parent::__construct();
        $this->class = strtolower(get_class());
        $this->viewPath = 'frontend/contact/';
        $this->contactModel = 'cnc_contacts';
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
        		'static/default/frontend/js/cnctech.min.js',
        );

        $list = $this->db->select('id, company, address, phone, fax, email, embed, place')
        ->from($this->contactModel)
        ->where('deleted', 0)
        ->get()
        ->result_array()
        ;
        
        $data = array(
            'permission' => $permission,
            'listJs' => add_Js($listJs),
        		'listCss' => add_css($listCss),
        		'title' => 'Contact - CNC Technology Solutions',
        		'uuid' => 'contact',
        		'list' => $list
        );

        $this->parser->parse($this->viewPath."view", $data);
    }
}
