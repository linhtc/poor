<?php /* Smarty version 3.1.27, created on 2017-08-07 17:16:58
         compiled from "/var/www/html/cnc/application/views/admin/layouts/default_sidebar.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:8149554759883e1a5ddd37_66799088%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e56b9f69bf08dce63632b298b3d3dcd00f05d5d8' => 
    array (
      0 => '/var/www/html/cnc/application/views/admin/layouts/default_sidebar.tpl',
      1 => 1502101005,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8149554759883e1a5ddd37_66799088',
  'variables' => 
  array (
    'this' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59883e1a5e69f5_44215972',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59883e1a5e69f5_44215972')) {
function content_59883e1a5e69f5_44215972 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '8149554759883e1a5ddd37_66799088';
?>

<section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
        <div class="pull-left image">
            <a href="/<?php echo $_smarty_tpl->tpl_vars['this']->value->session->userdata('lang_key');?>
/admin/profiles/view" style="color:#ffffff;">
            <img style="width:45px; height: 45px;" src="<?php if ($_smarty_tpl->tpl_vars['this']->value->session->userdata('user_avatar') == '') {?>http://placehold.it/160x160<?php } else {
echo base_url();?>
media/images/profiles/<?php echo $_smarty_tpl->tpl_vars['this']->value->session->userdata('user_avatar');
}?>" class="img-circle" alt="User Image" />
            </a>
        </div>
        <div class="pull-left info">
            <p><a href="/<?php echo $_smarty_tpl->tpl_vars['this']->value->session->userdata('lang_key');?>
/admin/profiles/view" style="color:#ffffff;"><?php echo $_smarty_tpl->tpl_vars['this']->value->session->userdata('user_fullname');?>
</a></p>
            <a href="/<?php echo $_smarty_tpl->tpl_vars['this']->value->session->userdata('lang_key');?>
/admin/profiles/view"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
    </div>
    <?php echo $_smarty_tpl->tpl_vars['this']->value->session->userdata('user_menu');?>

</section>
<!-- /.sidebar -->
<?php echo '<script'; ?>
>
    /*Active menu*/
    var homeText = '<?php echo lang('home');?>
';
    var excludeList = {
        models_spec: 'models_view',
        models_edit: 'models_view',
        models_release: 'models_view',
        brands_edit: 'brands_view',
        comparisons_detail: 'comparisons_view',
        comparisons_edit: 'comparisons_view',
        skus_edit: 'skus_view',
        skus_spec: 'skus_view',
        segments_edit: 'segments_view',
        points_detail: 'points_view',
        points_edit: 'points_view',
        languages_edit: 'languages_view',
        'skus-comparisons_edit': 'skus-comparisons_view',
        'skus-comparisons_detail': 'skus-comparisons_view'
    };
    try{
        var langKey = '<?php echo $_SESSION['lang_key'];?>
';
        var currPath = window.location.pathname;
        var realTitle = '';
        currPath = currPath.replace('/'+langKey+'/admin/', '');
        currPath = currPath.replace('/admin/', '');
        currPath = currPath.replace('/', '_');
        currPath = (currPath.indexOf('/') > 0) ? currPath.substr(0, currPath.indexOf('/')) : currPath;
        console.log(currPath);
        if(excludeList.hasOwnProperty(currPath)){
            currPath = excludeList[currPath];
            realTitle = true;
        }
        var objTmp = $('.'+currPath);
        objTmp.addClass('active');
        var level = $('.'+currPath).attr('level');
        var breadcrumb = [objTmp.text()];
        if(level != '' && level != undefined && level != null && parseInt(level) > 0){
            if(objTmp.attr('level') == 1){
                breadcrumb.push(objTmp.attr('head'));
            }
            level = parseInt(level);
            for(var i=0; i<level; i++){
                objTmp = objTmp.parent().parent();
                if(objTmp.prop('nodeName') === 'LI'){
                    objTmp.addClass('active');
                    var anchorText = objTmp.find('a');
                    if(typeof anchorText === 'object'){
                        anchorText = anchorText[0];
                        breadcrumb.push($(anchorText).text());
                    }
                }
                if(objTmp.attr('level') == 1){
                    breadcrumb.push(objTmp.attr('head'));
                }
            }
        } else {
            $('.'+currPath).parent().parent().addClass('active');
        }
        $(document).ready(function() {
            try{
                if(realTitle){
                    realTitle = $('#real-title').text();
                    if(realTitle != ''){
                        breadcrumb[0] = realTitle;
                    }
                }
                var lenCrumb = breadcrumb.length;
                var bcHtml = '<li><a href="#"><i class="fa fa-home"></i> '+homeText+'</a></li>';
                for(var i=lenCrumb - 1; i >= 0; i--){
                    bcHtml += '<li>'+breadcrumb[i]+'</li>';
                }
                $('.breadcrumb').html(bcHtml);
                var iTmp = 1;
                if(lenCrumb == 2){
                    iTmp = 0;
                }
                if(typeof breadcrumb[iTmp] == 'string'){
                    document.title += ' - '+ breadcrumb[iTmp];
                }
            } catch (e){
                console.log(e.message);
            }
        });
    } catch(e){
        console.log(e.message);
    }
<?php echo '</script'; ?>
>
<?php }
}
?>