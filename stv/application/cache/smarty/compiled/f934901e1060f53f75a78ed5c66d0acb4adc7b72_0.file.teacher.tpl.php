<?php /* Smarty version 3.1.27, created on 2017-08-11 23:07:32
         compiled from "/var/www/html/poor/stv/application/views/frontend/register/teacher.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:506967598dd64480d115_53159593%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f934901e1060f53f75a78ed5c66d0acb4adc7b72' => 
    array (
      0 => '/var/www/html/poor/stv/application/views/frontend/register/teacher.tpl',
      1 => 1502467647,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '506967598dd64480d115_53159593',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_598dd644821aa3_81710243',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_598dd644821aa3_81710243')) {
function content_598dd644821aa3_81710243 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '506967598dd64480d115_53159593';
?>
<div class="container-fluid">
  <div class="row">
    <div class="col-sm-9">
	    <div class="panel panel-default panel-custom">
			<div class="panel-heading">Tài liệu mới</div>
			<div class="panel-body">
				<form>
	    			<div class="form-group">
	    				<label for="email">Email address:</label>
	    				<input type="email" class="form-control"
	    					id="email">
	    			</div>
	    			<div class="form-group">
	    				<label for="pwd">Password:</label>
	    				<input type="password" class="form-control"
	    					id="pwd">
	    			</div>
	    			<div class="checkbox">
	    				<label>
	    					<input type="checkbox">
	    					Remember me
	    				</label>
	    			</div>
	    			<button type="submit" class="btn btn-default">
	    				Submit
	    			</button>
	    		</form>
			</div>
		</div>
    </div>
    	<div class="col-sm-3">
			<div class="panel panel-default panel-custom">
				<div class="panel-heading">Tài liệu mới</div>
				<div class="panel-body">
					<ul class="list-group">
					  <li class="list-group-item">New <span class="badge">12</span></li>
					  <li class="list-group-item">Deleted <span class="badge">5</span></li> 
					  <li class="list-group-item">Warnings <span class="badge">3</span></li> 
					</ul>
				</div>
			</div>
		</div>
	</div>
</div><?php }
}
?>