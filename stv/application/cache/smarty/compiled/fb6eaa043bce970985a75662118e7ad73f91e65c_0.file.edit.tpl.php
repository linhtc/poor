<?php /* Smarty version 3.1.27, created on 2017-08-09 16:29:20
         compiled from "/var/www/html/elearning/application/views/admin/document/edit.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1959632938598ad5f007fa34_75635771%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fb6eaa043bce970985a75662118e7ad73f91e65c' => 
    array (
      0 => '/var/www/html/elearning/application/views/admin/document/edit.tpl',
      1 => 1502270956,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1959632938598ad5f007fa34_75635771',
  'variables' => 
  array (
    'subjectList' => 0,
    'itemp' => 0,
    'classList' => 0,
    'item' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_598ad5f008b4c2_54739415',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_598ad5f008b4c2_54739415')) {
function content_598ad5f008b4c2_54739415 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1959632938598ad5f007fa34_75635771';
?>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />

<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        <?php echo lang('class');?>

        <small id="real-title"><?php echo lang('add');?>
</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-spinner fa-pulse fa-fw"></i> Loading...</a></li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <div class="box-header">
                    <h3 class="box-title"><?php echo lang('info');?>
</h3>
                    <div class="pull-right box-tools">
                        <button class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>

                <div class="box-body pad">
                    <div class="col-md-6">
                        <form>
                            <div class="form-group">
                                <label for="subject"><?php echo lang('subject');?>
 (*)</label>
                                <select id="subject" class="form-control selectpicker params" notnull>
                                    <option value=""></option>
                                    <?php
$_from = $_smarty_tpl->tpl_vars['subjectList']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['itemp'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['itemp']->_loop = false;
$_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
foreach ($_from as $_smarty_tpl->tpl_vars['i']->value => $_smarty_tpl->tpl_vars['itemp']->value) {
$_smarty_tpl->tpl_vars['itemp']->_loop = true;
$foreach_itemp_Sav = $_smarty_tpl->tpl_vars['itemp'];
?>
                                        <option value="<?php echo $_smarty_tpl->tpl_vars['itemp']->value->id;?>
"><?php echo $_smarty_tpl->tpl_vars['itemp']->value->subject;?>
</option>
                                    <?php
$_smarty_tpl->tpl_vars['itemp'] = $foreach_itemp_Sav;
}
?>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="class"><?php echo lang('class');?>
 (*)</label>
                                <select id="class" class="form-control selectpicker params" notnull>
                                    <option value=""></option>
                                    <?php
$_from = $_smarty_tpl->tpl_vars['classList']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['itemp'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['itemp']->_loop = false;
$_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
foreach ($_from as $_smarty_tpl->tpl_vars['i']->value => $_smarty_tpl->tpl_vars['itemp']->value) {
$_smarty_tpl->tpl_vars['itemp']->_loop = true;
$foreach_itemp_Sav = $_smarty_tpl->tpl_vars['itemp'];
?>
                                        <option value="<?php echo $_smarty_tpl->tpl_vars['itemp']->value->id;?>
"><?php echo $_smarty_tpl->tpl_vars['itemp']->value->class;?>
</option>
                                    <?php
$_smarty_tpl->tpl_vars['itemp'] = $foreach_itemp_Sav;
}
?>
                                </select>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="box-footer">
                    <button type="submit" class="btn btn-success" onclick="funcSubmit();"><?php echo lang('save');?>
</button>
                    <button type="submit" class="btn btn-danger" onclick="funcCancel();"><?php echo lang('back');?>
</button>
                </div>
            </div>
        </div>
    </div>
</section>

<?php echo '<script'; ?>
>
    var langCheckInputData = '<?php echo lang('check_input_data');?>
';
    var langNotify = '<?php echo lang('notify');?>
';
    var langComplete = '<?php echo lang('complete');?>
';
    var langChooseOne = '<?php echo lang('choose_one_option');?>
';

    var itemSubject = '<?php echo $_smarty_tpl->tpl_vars['item']->value->subject;?>
';
    var itemClass = '<?php echo $_smarty_tpl->tpl_vars['item']->value->class;?>
';

    function funcSubmit() {
        var params = getParams();
        if(params === false){
            toastr.warning(langCheckInputData, langNotify);
            return false;
        }
        initLoading('.box-info');
        $.post('edit', params, function (data) {
            destroyLoading('.box-info');
            toastr.remove();
            if (data == 1) {
                toastr.success(langComplete, langNotify);
            } else{
                toastr.error(data, langNotify);
            }
        });
    }

    function funcCancel() {
        window.location = '<?php echo base_url();?>
admin/manage-document/view';
    }

    function initLoading(element){
        $(element).block({
            message: '<i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i>',
            themedCSS: { width:  '30%', top:    '45%', left:   '45%' },
            css: { border: 'none', background: 'none', color: '#ffffff' }
        });
    }

    function destroyLoading(element){
        $(element).unblock();
    }

    function getParams(){
        var params = { };
        $( ".params" ).each(function( index ) {
            var proptype = $( this ).prop('type'), cvalue = $( this ).val(), cid = $( this ).attr('id');
            if(proptype == undefined){ proptype = ''; }
            if(proptype.indexOf('select') >= 0){ cvalue = $( this ).selectpicker('val'); }
            var notnull = $( this ).attr('notnull');
            if(notnull != undefined && cid != null && (cvalue == null || cvalue == '')){ params = false; return false; }
            if(cid != null && cid != '') { params[cid] = cvalue; }
        });
        return params;
    }
    
    $(document).ready(function() {
    	$('#subject').selectpicker({
            size: 10,
            liveSearch: true,
            noneSelectedText: langChooseOne
        }).on('hidden.bs.select', function (e){ });
    	$('#class').selectpicker({
            size: 10,
            liveSearch: true,
            noneSelectedText: langChooseOne
        }).on('hidden.bs.select', function (e){ });
    	$('#subject').selectpicker('val', itemSubject);
    	$('#class').selectpicker('val', itemClass);
    });
<?php echo '</script'; ?>
>
<?php }
}
?>