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
class Mold extends MY_Controller {

	private $class;
	private $folder;
	private $viewPath;
	private $sliderModel;
	
    function __construct() {
        parent::__construct();
        $this->class = strtolower(get_class());
        $this->viewPath = 'frontend/mold/';
        $this->folder = 'mold';
        $this->sliderModel = 'cnc_sliders';
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
        		'static/default/frontend/js/jquery.easing.min.js',
        		'static/default/frontend/js/jquery.animate-enhanced.min.js',
        		'static/default/frontend/js/jquery.hammer.min.js',
        		'static/default/frontend/js/jquery.superslides.min.js',
        		'static/default/frontend/js/cnctech.min.js',
        );

        $list = $this->db->select('id, class, photo, caption')
        ->from($this->sliderModel)
        ->where('class', $this->folder)->where('deleted', 0)
        ->get()
        ->result_array()
        ;
        
        $data = array(
            'permission' => $permission,
            'listJs' => add_Js($listJs),
            'listCss' => add_css($listCss),
        		'title' => 'Mold &amp; Part - CNC Technology Solutions',
        		'uuid' => 'mold',
        		'list' => $list
        );

        $this->parser->parse($this->viewPath."view", $data);
    }
}
