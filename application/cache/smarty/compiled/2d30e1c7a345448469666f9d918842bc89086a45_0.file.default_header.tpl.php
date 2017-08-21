<?php /* Smarty version 3.1.27, created on 2017-08-21 15:27:54
         compiled from "/var/www/html/elearning/application/views/admin/layouts/default_header.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1748815917599a998ac7e290_28691706%%*/
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
  'nocache_hash' => '1748815917599a998ac7e290_28691706',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_599a998ac80444_45724075',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_599a998ac80444_45724075')) {
function content_599a998ac80444_45724075 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1748815917599a998ac7e290_28691706';
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