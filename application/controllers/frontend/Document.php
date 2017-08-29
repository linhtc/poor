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
	private $subjectModel;
	private $documentModel;
	private $classModel;
	
    function __construct() {
        parent::__construct();
        $this->class = strtolower(get_class());
        $this->viewPath = 'frontend/document/';
        $this->subjectModel = 'e_subjects';
        $this->documentModel = 'e_documents';
        $this->classModel = 'e_classes';
    }
    
    /**
     * View
     */
    public function view($subject='', $class='') {
    	$permission = 1;//$this->check_permission($this->class, 'view');
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
    	
    	$data = array(
    			'permission' => $permission,
    			'listJs' => add_Js($listJs),
    			'listCss' => add_css($listCss),
    			'subject' => $subject,
    			'class' => $class
    	);
    	
    	$documents = array();
    	
    	if(!empty($class) && !empty($subject)){
    		$this->parser->parse($this->viewPath."view", $data);
    	} elseif(!empty($subject)){
    		$subject = $this->db->select('id, subject, friendly')
    		->from($this->subjectModel)
    		->where('deleted', 0)->where('parent', 0)->where('friendly', $subject)
    		->get()->row();
    		$sublist = $this->db->select('id, subject, friendly')
    		->from($this->subjectModel)
    		->where('deleted', 0)->where('parent', $subject->id)
    		->get()->result();
    		$subarray = array();
    		array_push($subarray, $subject->id);
    		foreach($sublist as $sub){
    			array_push($subarray, $sub->id);
    		}
    		$documents = $this->db->select('class, (select c.class from '.$this->classModel.' c where c.id = d.class and c.deleted = 0) classname')
    		->from($this->documentModel.' d')
    		->where('deleted', 0)->where_in('subject', $subarray)
    		->group_by('d.class')
    		->get()->result_array();
    		$data['documents'] = $documents;
    		
    		$this->parser->parse($this->viewPath."class", $data);
    	} else{
    		$this->parser->parse($this->viewPath."view", $data);
    	}
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
