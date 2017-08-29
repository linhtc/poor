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
	private $subjectModel;
	private $pageType;
	
    function __construct() {
        parent::__construct();
        $this->class = strtolower(get_class());
        $this->viewPath = 'frontend/contact/';
        $this->contactModel = 'e_contacts';
        $this->subjectModel = 'e_subjects';
        $this->pageType = 'contact';
    }

    /**
     * View
     */
    public function view() {
        $this->layout->set_layout_dir('views/frontend/layouts/');
        $this->layout->set_layout('default');
        
        /////////////////////////////
        $subjects = $this->db->select('id, subject, friendly')->from($this->subjectModel)->where('deleted', 0)->where('parent', 0)->get()->result();
        $docMenu = $this->session->userdata('subject_menu');
        $this->session->set_userdata('subject_menu', $subjects);
        /////////////////////////////

        $listCss = array(
        		
        );
        $listJs = array(
        	
        );

        $item = $this->db->select('id, phone, email, address, maps')
        ->from($this->contactModel)
        ->get()
        ->row()
        ;
        
        $data = array(
            'listJs' => add_Js($listJs),
        		'listCss' => add_css($listCss),
        		'uuid' => 'contact',
        		'contact' => $item,
        		'uuid' => $this->pageType
        );

        $this->parser->parse($this->viewPath."view", $data);
    }
}
