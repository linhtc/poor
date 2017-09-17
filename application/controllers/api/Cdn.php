<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/**
 *
 * @package Api
 *
 */
class Cdn extends MY_Controller {

	private $metalogModel;
	private $configModel;
	
    function __construct() {
        parent::__construct();
        $this->metalogModel = 'sys_metalogs';
        $this->configModel = 'e_configuration';
    }

    /**
     * Tra ve resource cho client va luu lai thong tin
     * @request: {}
     * @response: {}
     **/
    public function metadata($path=''){
        $this->layout->disable_layout(); // disable layout

//         $imei = $this->input->get('i');
        $page = $this->input->get('page');
        if(empty($page)){
        	$page = 1;
        }
        $file = MEDIAPATH.'uploads/documents/'.$path;
// echo $file; exit;
        if (file_exists($file)){
        	$count = $this->db->select()->from($this->metalogModel)->where('ipaddress', $this->getClientIP())->where('file', $path)
        	->get()->num_rows();
        	$threshold = $this->db->select('apply_value')->from($this->configModel)->where('apply_key', 'threshold_viewer')->get()->row();
        	$threshold = !empty($threshold->apply_value) ? $threshold->apply_value : 0;
        	if($count > $threshold){
//         		echo 'Để xem tiếp tài liệu này vui lòng liên hệ trung tâm';
        		echo lang('contact_admin_to_continue');
        		exit;
        	}
        	$pullClass = array(
        			'created' => date('Y-m-d H:i:s', time()),
        			'modified' => date('Y-m-d H:i:s', time()),
        			'ipaddress' => $this->getClientIP(),
        			'file' => $path
        	);
        	$this->db->insert($this->metalogModel, $pullClass);
        	
//         	if($_SERVER['HTTP_REFERER']){
//         		echo $_SERVER['HTTP_REFERER']; exit;
//         	}
        	
//             header('Content-Description: File Transfer');
//             header('Content-Type: application/octet-stream');
//             header('Content-Disposition: attachment; filename='.basename($file));
//             header('Content-Transfer-Encoding: binary');
//             header('Expires: 0');
//             header('Cache-Control: must-revalidate');
//             header('Pragma: public');
//             header('Content-Length: ' . filesize($file));
//             readfile($file);

//         	header("Content-type:application/pdf");
        	
//         	// It will be called downloaded.pdf
//         	header('Content-Disposition: attachment; filename='.basename($file));
        	
//         	// The PDF source is in original.pdf
//         	readfile($file);
        	$url = base_url().'media/uploads/documents/'.$path.'#toolbar=0&navpanes=0&page='.$page;
        	$next = base_url().'api/cdn/metadata/'.$path.'?page='.($page+1);
        	
        	$url = base_url().'static/default/template/ViewerJS/#../../../../media/uploads/documents/'.$path;
        	echo '<html><body style="margin: 0px; padding: 0px; overflow: hidden; width: 100%; height: 100%;">';
        	echo '<script>
				if(location.href == top.location.href){
					window.location = "'.base_url().'";
				}
				function disableContextMenu() {
				    document.getElementById("iframe").contentWindow.document.oncontextmenu = function(){ console.log("No way!"); return false;};  
				} 
				function closeDocumentView(){
					window.parent.closeDocumentView();
				}
				function fullscreenDocumentView(){
					window.parent.fullscreenDocumentView();
				}
			</script>';
        	echo '<iframe id="iframe" src="'.$url.'" onload="disableContextMenu();" oncontextmenu="return false" width="100%" height="100%" style="margin-top:0px;"></iframe>';
			echo '</body></html>';
            exit;
        }
    }

}