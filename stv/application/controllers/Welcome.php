<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends MY_Controller {
    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     * 	- or -
     * 		http://example.com/index.php/welcome/index
     * 	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see http://codeigniter.com/user_guide/general/urls.html
     *
     * @author Bui Huynh Kinh Luan <buihuynh.kinhluan@gmail.com>
     * @copyright (c) 2016, 500BITS
     * @link http://500bits.com
     * @license MIT
     * @version beta.0.1
     */

    /**
     * Index page
     */
    public function index() {
//     	echo 1; exit;
//         redirect(base_url() . "admin");
       redirect(base_url() . "trang-chu");
//         $this->layout->set_layout_dir('views/frontend/layouts/');
//         $this->layout->set_layout('default');
    }

}
