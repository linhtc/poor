<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 *
 * @package Admin
 *
 */
class ManageNewClass extends MY_Controller {

	private $class;
	private $numRow;
	private $classModel;
	private $subjectModel;
	private $newclassModel;
	private $viewPath;
	
    function __construct() {
    	parent::__construct();
    	$this->class = strtolower(preg_replace('/(?<!^)([A-Z])/', '-\\1', get_class()));
        $this->numRows = 10;
        $this->newclassModel= 'e_new_classes';
        $this->classModel = 'e_classes';
        $this->subjectModel = 'e_subjects';
        $this->viewPath = 'admin/newclass/';
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
        
        $stHtml = '<option value="">'.lang('all_status').'</option><option value="0">'.lang('class_waiting').'
			</option><option value="1">'.lang('class_success').'</option>'
		;

        $data = array(
            'permission' => $permission,
            'listJs' => add_Js($listJs),
            'listCss' => add_css($listCss),
        	'doneSel' => $stHtml
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
        
        $classList = $this->db->select('id, class')->from($this->classModel)->where('deleted', 0)->get()->result();
        $subjectList = $this->db->select('id, subject')->from($this->subjectModel)->where('deleted', 0)->get()->result();
        
        $data = array(
            'viewPath' => $this->viewPath,
            'permission' => $permission,
            'listJs' => add_Js($listJs),
            'listCss' => add_css($listCss),
        		'classList' => $classList,
        		'subjectList' => $subjectList
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


        $item = $this->db->select('id, modified, class, subject, address_street, address_district, times_per_week, work_time, salary, requirement, done')
            ->from($this->newclassModel)
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
        
        $classList = $this->db->select('id, class')->from($this->classModel)->where('deleted', 0)->get()->result();
        $subjectList = $this->db->select('id, subject')->from($this->subjectModel)->where('deleted', 0)->get()->result();
        
        $data = array(
            'permission' => $permission,
            'viewPath' => $this->viewPath,
            'listJs' => add_Js($listJs),
            'listCss' => add_css($listCss),
        		'item' => $item,
        		'classList' => $classList,
        		'subjectList' => $subjectList
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
            $result = $this->db->where('id', $id)->update($this->newclassModel, $pullClass);
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

        $sortMaps = array('id', 'modified', 'class', 'subject', 'address_street', 'address_district', 'times_per_week', 'work_time', 'salary', 'requirement');
        $page = $this->input->post('page', true);
        $sort = $this->input->post('sort', true);
        $type = $this->input->post('type', true);
        $numRows = $this->input->post('auto', true);
        if(!empty($numRows) && $numRows > 10 && $numRows < 101){ $this->numRows = $numRows; }
        $start = ($page-1)*$this->numRows;
        $query = "select `id`, `modified`, `ipaddress`, `class`, `subject`, `address_street`, `address_district`, `times_per_week`, 
			`work_time`, `salary`, `requirement` from ".$this->newclassModel;
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

        $sortMaps = array('id', 'modified','ipaddress', 'class');
        $sort = $this->input->get_post('sort', true);
        $type = $this->input->get_post('type', true);

        $query = "select `id`, `modified`, `ipaddress`, `class`
          FROM ".$this->classModel;
        $query .= $this->criteria();
        $query .= " order by `".(empty($sortMaps[$sort]) ? 'id' : $sortMaps[$sort]) ."` ".$type;
        $list = $this->db->query($query)->result_array();
        $header = array( array(
            'id' => lang('id'),
            'modified' => lang('last_update'),
            'ipaddress' => lang('ipaddress'),
            'class' => lang('class')
        ));
        $this->excel($header, $list);
        exit;
    }

    /**
     * Create criteria string for query
     */
    private function criteria(){
    	$id = $this->input->get_post('id', true);
    	$time = $this->input->get_post('dt', true);
    	//         $ip = $this->input->get_post('ip', true);
    	$class = $this->input->get_post('cl', true);
    	$subject = $this->input->get_post('su', true);
    	$street = $this->input->get_post('str', true);
    	$district = $this->input->get_post('di', true);
    	$timesPerWeek = $this->input->get_post('tpw', true);
    	$workTime = $this->input->get_post('wt', true);
    	$salary = $this->input->get_post('sa', true);
    	$requirement = $this->input->get_post('re', true);
    	$status = $this->input->get_post('sta', true);
        $modified = explode(' - ', $time);
        $to = null; $from = null;

        $criteria = " where `deleted` = 0 ";
        if(!empty($id)){
        	$criteria .= " AND `id` = '".addslashes($id)."' ";
        }
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
        if(!empty($class)){
        	$criteria .= " AND `class` like '%".addslashes($class)."%' ";
        }
        if(!empty($subject)){
        	$criteria .= " AND `subject` like '%".addslashes($subject)."%' ";
        }
        if(!empty($street)){
        	$criteria .= " AND `address_street` like '%".addslashes($street)."%' ";
        }
        if(!empty($district)){
        	$criteria .= " AND `address_district` like '%".addslashes($district)."%' ";
        }
        if(!empty($timesPerWeek)){
        	$criteria .= " AND `times_per_week` like '%".addslashes($timesPerWeek)."%' ";
        }
        if(!empty($workTime)){
        	$criteria .= " AND `work_time` like '%".addslashes($workTime)."%' ";
        }
        if(!empty($salary)){
        	$criteria .= " AND `salary` like '%".addslashes($salary)."%' ";
        }
        if(!empty($requirement)){
        	$criteria .= " AND `requirement` like '%".addslashes($requirement)."%' ";
        }
        if(!empty($status)){
        	$criteria .= " AND `done` = '".addslashes($status)."' ";
        }
        return $criteria;
    }

    /**
     * Modify data
     */
    private function modify(){
    	$id = $this->input->post('id', false);
    	$class = $this->input->post('class', false);
    	$subject = $this->input->post('subject', false);
    	$address_street = $this->input->post('address_street', false);
    	$address_district = $this->input->post('address_district', false);
    	$times_per_week = $this->input->post('times_per_week', false);
    	$work_time = $this->input->post('work_time', false);
    	$salary = $this->input->post('salary', false);
    	$requirement = $this->input->post('requirement', false);
    	$done = $this->input->post('done', false);
        if(!empty($class)){
        	$ip = $this->getClientIP();
            $query = "
                INSERT INTO `".$this->newclassModel."` (".(!empty($id) ? '`id`, ' : '')."`created`, `modified`, `ipaddress`, 
				`class`, `subject`, `address_street`, `address_district`, `times_per_week`, `work_time`, `salary`, `requirement`, `done`) 
                VALUES (".(!empty($id) ? $id.', ' : '')."NOW(), NOW(), '".addslashes($ip)."', '".addslashes($class)."', '".addslashes($subject)."', 
				'".addslashes($address_street)."', '".addslashes($address_district)."', '".addslashes($times_per_week)."', '".addslashes($work_time)."', 
				'".addslashes($salary)."', '".addslashes($requirement)."', '".addslashes($done)."')
                ON DUPLICATE KEY UPDATE `ipaddress` = VALUES(ipaddress), `deleted` = VALUES(deleted), modified = VALUES(modified),
					`class` = VALUES(class), `subject` = VALUES(subject), `address_street` = VALUES(address_street), `address_district` = VALUES(address_district), 
					`times_per_week` = VALUES(times_per_week), `work_time` = VALUES(work_time), `salary` = VALUES(salary), 
					`requirement` = VALUES(requirement), `done` = VALUES(done)
                ;
            ";
            $result = $this->db->query($query);
            return $result ? $result : lang('execute_error');
        }
        return lang('execute_error');
    }

    /**
     * Create excel
     * Using & to point to mem
     */
    private function excel(&$header, &$list){
        $this->load->helper('mobiistar_helper');
        
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
