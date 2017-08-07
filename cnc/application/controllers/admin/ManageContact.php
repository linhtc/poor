<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 *
 * @package Admin
 *
 *
 * @author Bui Huynh Kinh Luan <buihuynh.kinhluan@gmail.com>
 * @copyright (c) 2016, 500BITS
 * @link http://500bits.com
 * @license MIT
 * @version beta.0.1
 */
class ManageContact extends MY_Controller {

	private $class;
	private $numRow;
	private $contactModel;
	private $viewPath;
	private $folder;
	
    function __construct() {
    	parent::__construct();
    	$this->class = strtolower(preg_replace('/(?<!^)([A-Z])/', '-\\1', get_class()));
        $this->numRows = 10;
        $this->contactModel = 'cnc_contacts';
        $this->folder = 'contact';
        $this->viewPath = 'admin/contact/';
    }

    /**
     * View
     */
    public function view() {
        $permission = $this->check_permission($this->class, 'view');
        $this->layout->set_layout_dir('views/admin/layouts/');
        $this->layout->set_layout('default');

        $listCss = array(
            'static/default/template/datepicker/css/bootstrap-datetimepicker.min.css',
            'static/default/admin/template/plugins/datatables/media/css/dataTables.bootstrap.min.css',
            'static/default/admin/template/plugins/datatables/extensions/buttons/css/buttons.dataTables.min.css',
            'static/default/admin/template/plugins/toastr/toastr.min.css',
            'static/default/admin/template/plugins/bootstrap-select/bootstrap-select.min.css',

            'static/default/admin/template/css/opt.min.css',
        );
        $listJs = array(
            'static/default/template/mask/jquery.mask.js',
            'static/default/template/datepicker/js/moment.js',
            'static/default/template/datepicker/js/moment-with-locales.js',
            'static/default/template/datepicker/js/bootstrap-datetimepicker.min.js',
            'static/default/admin/template/plugins/bootpag/jquery.bootpag.min.js',
            'static/default/admin/template/plugins/toastr/toastr.min.js',
            'static/default/admin/template/plugins/blockui/jquery.blockUI.js',
            'static/default/admin/template/plugins/datatables/media/js/jquery.dataTables.min.js',
            'static/default/admin/template/plugins/datatables/media/js/dataTables.bootstrap.min.js',
            'static/default/admin/template/plugins/datatables/extensions/responsive/js/dataTables.responsive.min.js',
            'static/default/admin/template/plugins/datatables/extensions/buttons/js/dataTables.buttons.min.js',
            'static/default/admin/template/plugins/datatables/extensions/buttons/js/buttons.flash.min.js',
            'static/default/admin/template/plugins/datatables/extensions/buttons/js/jszip.min.js',
            'static/default/admin/template/plugins/datatables/extensions/buttons/js/pdfmake.min.js',
            'static/default/admin/template/plugins/datatables/extensions/buttons/js/vfs_fonts.js',
            'static/default/admin/template/plugins/datatables/extensions/buttons/js/buttons.html5.min.js',
            'static/default/admin/template/plugins/datatables/extensions/buttons/js/buttons.print.min.js',
            'static/default/admin/template/plugins/confirmation/bootstrap-confirmation.min.js',
            'static/default/admin/template/plugins/bootstrap-select/bootstrap-select.min.js',

            'static/default/admin/template/js/opt.min.js',
        );

        $data = array(
            'permission' => $permission,
            'listJs' => add_Js($listJs),
            'listCss' => add_css($listCss),
        );

        $this->parser->parse($this->viewPath."view", $data);
    }

    /**
     * Add object
     */
    public function add() {
        $permission = $this->check_permission($this->class, 'add');
        $method = $this->input->method();

        if($method === 'post'){ /*Submit form*/
            $this->layout->disable_layout();
            echo $this->modify(); exit;
        }
        /*--------------------Break--------------------*/

        $this->layout->set_layout_dir('views/admin/layouts/');
        $this->layout->set_layout('default');

        $listCss = array(
            'static/default/admin/template/plugins/toastr/toastr.min.css',
            'static/default/admin/template/plugins/bootstrap-select/bootstrap-select.min.css',
        );
        $listJs = array(
            'static/default/admin/template/plugins/jstree/jstree.min.js',
            'static/default/admin/template/plugins/toastr/toastr.min.js',
            'static/default/admin/template/plugins/blockui/jquery.blockUI.js',
            'static/default/admin/template/plugins/bootstrap-select/bootstrap-select.min.js',
        );

        $data = array(
            'viewPath' => $this->viewPath,
            'permission' => $permission,
            'listJs' => add_Js($listJs),
            'listCss' => add_css($listCss)
        );
        $this->parser->parse($this->viewPath."add", $data);
    }

    /**
     * Edit object
     */
    public function edit($id='') {
        $permission = $this->check_permission($this->class, 'edit');
        $method = $this->input->method();

        if(!empty($id)){
            $id = $this->unmask($id);
        }

        if($method === 'post'){ /*Submit form*/
            $this->layout->disable_layout();
            echo $this->modify(); exit;
        }
        /*--------------------Break--------------------*/

        $this->layout->set_layout_dir('views/admin/layouts/');
        $this->layout->set_layout('default');


        $item = $this->db->select('id, `modified`, `ipaddress`, `company`, `address`, `phone`,  `fax`,  `email`,  `embed`,  `place`')
            ->from($this->contactModel)
            ->where('id', $id)
            ->get()
            ->row()
        ;
        if(empty($item->id)){
            redirect(base_url() . "admin/permission-denied");
            exit;
        }

        $listCss = array(
            'static/default/admin/template/plugins/toastr/toastr.min.css',
            'static/default/admin/template/plugins/bootstrap-select/bootstrap-select.min.css',
        );
        $listJs = array(
            'static/default/admin/template/plugins/jstree/jstree.min.js',
            'static/default/admin/template/plugins/toastr/toastr.min.js',
            'static/default/admin/template/plugins/blockui/jquery.blockUI.js',
            'static/default/admin/template/plugins/bootstrap-select/bootstrap-select.min.js',
        );
        $data = array(
            'permission' => $permission,
            'viewPath' => $this->viewPath,
            'listJs' => add_Js($listJs),
            'listCss' => add_css($listCss),
            'item' => $item
        );
        $this->parser->parse($this->viewPath."edit", $data);
    }

    /**
     * Delete object
     */
    public function delete() {
        $this->check_permission($this->class, 'delete');
        $this->layout->disable_layout();

        $id = $this->input->post('id', true);
        if(!empty($id)){
            $pullClass = array('deleted' => 1);
            $result = $this->db->where('id', $id)->update($this->contactModel, $pullClass);
            echo $result; exit;
        }
        echo 0; exit;
    }

    /**
     * Get data with ajax
     */
    public function data() {
        $permission = $this->check_permission($this->class, 'view');
        $this->layout->disable_layout();

        $sortMaps = array('id', 'modified', 'ipaddress', 'company', 'address', 'phone', 'fax', 'email', 'embed', 'place');
        $page = $this->input->post('page', true);
        $sort = $this->input->post('sort', true);
        $type = $this->input->post('type', true);
        $numRows = $this->input->post('auto', true);
        if(!empty($numRows) && $numRows > 10 && $numRows < 101){ $this->numRows = $numRows; }
        $start = ($page-1)*$this->numRows;
        $query = "select `id`, `modified`, `ipaddress`, `company`,  `address`, `phone`,  `fax`,  `email`,  `embed`,  `place` from ".$this->contactModel;
        $query .= $this->criteria();
        $num = $this->db->query($query)->num_rows();
        $query .= " order by `".(empty($sortMaps[$sort]) ? 'id' : $sortMaps[$sort]) ."` ".$type;
        $query .= " limit $start, ".$this->numRows;
        $list = $this->db->query($query)->result_array();
        $this->smarty->assign('list', $list);
        $this->smarty->assign('permission', $permission);
        $html = $this->smarty->fetch($this->viewPath."data.tpl");

        $response = new stdClass();
        $response->html = $html;
        $response->num = ceil($num/$this->numRows);
        $response->total = $num;
        $response->page = $page;
        $response->sort = $sort;
        $response->type = $type;
        echo json_encode($response); exit;
    }

    /**
     * Export data with ajax
     */
    public function export() {
        $this->check_permission($this->class, 'export');
        $this->layout->disable_layout();

        $sortMaps = array('id', 'modified','brand', 'model', 'prototype', 'price', 'rate', 'crawler');
        $sort = $this->input->get_post('sort', true);
        $type = $this->input->get_post('type', true);

        $query = "select `id`, `modified`, `brand`, `model`, `prototype`, `price`, `rate`, `crawler`
          FROM ".$this->modelModel . " u ";
        $query .= $this->criteria();
//        $query .= " order by u.id desc ";
        $query .= " order by `".(empty($sortMaps[$sort]) ? 'id' : $sortMaps[$sort]) ."` ".$type;
        $list = $this->db->query($query)->result_array();
        $header = array( array(
            'id' => lang('id'),
            'modified' => lang('last_update'),
            'brand' => lang('brand'),
            'model' => lang('model'),
            'prototype' => lang('prototype'),
            'price' => lang('price'),
            'rate' => lang('rate'),
            'crawler' => lang('crawler')
        ));
        $this->excel($header, $list);
        exit;
    }

    /**
     * Create criteria string for query
     */
    private function criteria(){
        $time = $this->input->get_post('dt', true);
        $photo = $this->input->get_post('p', true);
        $caption = $this->input->get_post('c', true);
        $modified = explode(' - ', $time);
        $to = null; $from = null;

        $criteria = " where `deleted` = 0 ";
        if(is_array($modified)){
            if(count($modified) === 2){
                $from = $modified[0];
                $to = $modified[1];
            }
            if(count($modified) === 1){
                $from = $modified[0];
            }
        }
        if(!empty($from)){
            $from = date('Y-m-d', strtotime($from));
            $criteria .= " AND `modified` >= '$from 00:00:00' ";
        }
        if(!empty($to)){
            $to = date('Y-m-d', strtotime($to));
            $criteria .= " AND `modified` <= '$to 23:59:59' ";
        }
        if(!empty($photo)){
        	$criteria .= " AND `photo` like '%".addslashes($photo)."%' ";
        }
        if(!empty($caption)){
        	$criteria .= " AND `caption` like '%".addslashes($caption)."%' ";
        }
        return $criteria;
    }

    /**
     * Modify data
     */
    private function modify(){
    	$id = $this->input->post('id', false);
    	$company = $this->input->post('company', false);
    	$address = $this->input->post('address', false);
    	$phone = $this->input->post('phone', false);
    	$fax = $this->input->post('fax', false);
    	$email = $this->input->post('email', false);
    	$embed = $this->input->post('embed', false);
    	$place = $this->input->post('place', false);
    	if(!empty($company)){
            $query = "
                INSERT INTO `".$this->contactModel."` (".(!empty($id) ? '`id`, ' : '')."`created`, `modified`, `company`, `address`, 
					`phone`, `fax`, `email`, `embed`, `place`) 
                VALUES (".(!empty($id) ? $id.', ' : '')."NOW(), NOW(), '".addslashes($company)."', '".addslashes($address)."', 
					'".addslashes($phone)."', '".addslashes($fax)."', '
					".addslashes($email)."', '".addslashes($embed)."', '".addslashes($place)."')
                ON DUPLICATE KEY UPDATE `company` = VALUES(company), `address` = VALUES(address), `phone` = VALUES(phone), `fax` = VALUES(fax), 
					`email` = VALUES(email), `embed` = VALUES(embed), `place` = VALUES(place),
					`deleted` = VALUES(deleted), modified = VALUES(modified)
                ;
            ";
            $result = $this->db->query($query);
            return $result ? $result : lang('execute_error');
        }
        return lang('execute_error');
    }

    /**
     * Create excel
     */
    private function excel(&$header, &$list){ /* using & to point to list in export, not copy to excel func */
        $this->load->helper('mobiistar_helper');
        $giftList = array_gif2();

        //load our new PHPExcel library
        $this->load->library('excel');
        //activate worksheet number 1
        $this->excel->setActiveSheetIndex(0);
        //name the worksheet
        $this->excel->getActiveSheet()->setTitle('Data');

        $list_all = array_merge($header, $list);
        // read data to active sheet
        $this->excel->getActiveSheet()->fromArray($list_all);

        $filename = 'Data_'.$this->class.'_'.time().'.xlsx'; //save our workbook as this file name

        header('Content-Type: application/vnd.ms-excel'); //mime type

        header('Content-Disposition: attachment;filename="'.$filename.'"'); //tell browser what's the file name

        header('Cache-Control: max-age=0'); //no cache

        //save it to Excel5 format (excel 2003 .XLS file), change this to 'Excel2007' (and adjust the filename extension, also the header mime type)
        //if you want to save it as .XLSX Excel 2007 format

        $objWriter = PHPExcel_IOFactory::createWriter($this->excel, 'Excel2007');

        //force user to download the Excel file without writing it to server's HD
        $objWriter->save('php://output');

    }

}
