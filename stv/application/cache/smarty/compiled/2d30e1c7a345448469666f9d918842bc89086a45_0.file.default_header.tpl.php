<?php /* Smarty version 3.1.27, created on 2017-08-09 16:29:20
         compiled from "/var/www/html/elearning/application/views/admin/layouts/default_header.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1495784401598ad5f00a1509_85414090%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2d30e1c7a345448469666f9d918842bc89086a45' => 
    array (
      0 => '/var/www/html/elearning/application/views/admin/layouts/default_header.tpl',
      1 => 1502175236,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1495784401598ad5f00a1509_85414090',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_598ad5f00a3578_37919406',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_598ad5f00a3578_37919406')) {
function content_598ad5f00a3578_37919406 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1495784401598ad5f00a1509_85414090';
?>
<!-- Logo -->
<a href="#" class="logo">
    <!-- mini logo for sidebar mini 50x50 pixels -->
    <span class="logo-mini"><b>STV</b></span>
    <!-- logo for regular state and mobile devices -->
    <span class="logo-lg"><b>STV</b> Tool</span>
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