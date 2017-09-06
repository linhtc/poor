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
	private $docDetailModel;
	private $classModel;
	private $pageType;
	
    function __construct() {
        parent::__construct();
        $this->class = strtolower(get_class());
        $this->viewPath = 'frontend/document/';
        $this->subjectModel = 'e_subjects';
        $this->documentModel = 'e_documents';
        $this->docDetailModel = 'e_doc_details';
        $this->classModel = 'e_classes';
        $this->pageType = 'document';
    }
    
    /**
     * View
     */
    public function view($subject='', $class='', $subclass='') {
    	$permission = 1;//$this->check_permission($this->class, 'view');
    	$this->layout->set_layout_dir('views/frontend/layouts/');
    	$this->layout->set_layout('default');
    	
    	$listCss = array(
    			'static/default/admin/template/plugins/jstree/style.min.css'
    	);
    	$listJs = array(
    			'static/default/admin/template/plugins/jstree/jstree.min.js',
    			'static/default/admin/template/plugins/blockui/jquery.blockUI.js'
    	);
    	
    	$data = array(
    			'permission' => $permission,
    			'listJs' => add_Js($listJs),
    			'listCss' => add_css($listCss),
    			'subject' => $subject,
    			'class' => $class,
    			'uuid' => $this->pageType
    	);
    	
    	$documents = array();
    	
    	if(!empty($class) && !empty($subject)){
    		
    		$subject = $this->db->select('id')
    		->from($this->subjectModel)
    		->where('deleted', 0)->where('friendly', empty($subclass) ? $subject : $subclass)
    		->get()->row();
    		$class = $this->db->select('id')
    		->from($this->classModel)
    		->where('deleted', 0)->where('friendly', $class)
    		->get()->row();
    		$document = $this->db->select('id')
    		->from($this->documentModel)
    		->where('deleted', 0)->where('subject', $subject->id)->where('class', $class->id)
    		->get()->row();
    		
    		$docStorage = new stdClass();
    		$specList = $this->db->select('id, parent, title text, path sketch')
    		->from($this->docDetailModel)
    		->where('deleted', 0)
    		->where('document', $document->id)
    		->order_by('sort', 'asc')
    		->get()->result()
    		;
    		$specs = array();
    		if(count($specList)){
    			foreach($specList as $index=>$item){
    				if($item->sketch){
    					$item->icon = 'glyphicon glyphicon-file';
    				} else{
    					$item->icon = 'glyphicon glyphicon-hdd';
    				}
    				if($item->sketch){
    					$docStorage->{$item->id} = $item->sketch;
    				}
    				if(empty($item->parent)){ $item->parent = '#'; }
    				array_push($specs, $item);
    			}
    		}
    		$data['specList'] = json_encode($specs);
    		$data['docStorage'] = json_encode($docStorage);
    		
    		$this->parser->parse($this->viewPath."detail", $data);
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
    		$documentTmp = $this->db->select('class, 
				(select c.class from '.$this->classModel.' c where c.id = d.class and c.deleted = 0) classname,
    			(select c.friendly from '.$this->classModel.' c where c.id = d.class and c.deleted = 0) friendly,
    			group_concat(concat_ws(",", (select concat(s.friendly, ":", s.subject) from e_subjects s where s.id = d.subject))) `subject`'
    		)
    		->from($this->documentModel.' d')
    		->where('deleted', 0)->where_in('subject', $subarray)
    		->group_by('d.class')
    		->get()->result_array();
    		foreach($documentTmp as $tmp){
    			$tmp = (object)$tmp;
    			$subjects = $tmp->subject;
    			$tmp->subjects = array();
    			if(!empty($subjects)){
    				$subjects = explode(',', $subjects);
    				if(count($subjects)){
    					foreach($subjects as $itmp){
    						$itmp= explode(':', $itmp);
    						if(count($itmp) === 2){
    							$subItem = new stdClass();
    							$subItem->friendly = $itmp[0];
    							$subItem->subject= $itmp[1];
    							array_push($tmp->subjects, (array)$subItem);
    						}
    					}
    				}
    			}
    			array_push($documents, (array)$tmp);
    		}
//     		print_r($documents); exit;
    		
    		$data['subject'] = $subject;
    		$data['documents'] = $documents;
    		
    		$this->parser->parse($this->viewPath."class", $data);
    	} else{
    		$documents = $this->db->select('id, subject, friendly')
    		->from($this->subjectModel)->where('deleted', 0)
    		->where('parent', 0)->get()->result_array();
    		$data['documents'] = $documents;
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
    			'class' => $class,
    			'uuid' => $this->pageType
    	);
    	
    	$this->parser->parse($this->viewPath."subject", $data);
    }
}
