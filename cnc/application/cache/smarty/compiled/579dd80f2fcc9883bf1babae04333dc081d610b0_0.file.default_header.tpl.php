<?php /* Smarty version 3.1.27, created on 2017-08-07 17:16:58
         compiled from "/var/www/html/cnc/application/views/admin/layouts/default_header.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:185172485659883e1a5d6937_36877228%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '579dd80f2fcc9883bf1babae04333dc081d610b0' => 
    array (
      0 => '/var/www/html/cnc/application/views/admin/layouts/default_header.tpl',
      1 => 1502100799,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '185172485659883e1a5d6937_36877228',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59883e1a5db199_14046807',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59883e1a5db199_14046807')) {
function content_59883e1a5db199_14046807 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '185172485659883e1a5d6937_36877228';
?>
<!-- Logo -->
<a href="#" class="logo">
    <!-- mini logo for sidebar mini 50x50 pixels -->
    <span class="logo-mini"><b>CNC</b></span>
    <!-- logo for regular state and mobile devices -->
    <span class="logo-lg"><b>CNC</b> Precision</span>
</a>

<!-- Header Navbar: style can be found in header.less -->
<nav class="navbar navbar-static-top" role="navigation">
    <!-- Sidebar toggle button-->
    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
    </a>

    <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
            <li>
                <a href="/admin/users/language/vi" title="Tiếng Việt" <?php if ($_SESSION['lang_key'] == 'vi') {?>style="text-decoration: underline; pointer-events: none; cursor: text;"<?php }?>>Vi</a>
            </li>
            <li>
                <a href="/admin/users/language/en" title="English" <?php if ($_SESSION['lang_key'] == 'en') {?>style="text-decoration: underline; pointer-events: none; cursor: text;"<?php }?>>En</a>
            </li>
            <li>
                <a href="/admin/profiles/logout" title="Logout"><i class="fa fa-sign-out"></i></a>
            </li>
        </ul>
    </div>

</nav>
<?php }
}
?>