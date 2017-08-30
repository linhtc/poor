<?php /* Smarty version 3.1.27, created on 2017-08-31 00:08:34
         compiled from "/var/www/html/poor/application/views/frontend/document/detail.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:147270039359a6f112694cb2_49710931%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '571489812d351ed3c4bc1c5489fdcef50ff031bb' => 
    array (
      0 => '/var/www/html/poor/application/views/frontend/document/detail.tpl',
      1 => 1504112895,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '147270039359a6f112694cb2_49710931',
  'variables' => 
  array (
    'specList' => 0,
    'docStorage' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59a6f112699e19_57794028',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59a6f112699e19_57794028')) {
function content_59a6f112699e19_57794028 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '147270039359a6f112694cb2_49710931';
?>
<div class="row" style="min-height: 300px;">
	<div class="col-md-9 row-container-doc">
		<div id="jstree">
		
		</div>
	</div>
	<div class="col-md-3">
		<div class="panel panel-primary">
		  	<div class="panel-heading">Tài liệu mới</div>
		  	<div class="panel-body">
				<ul class="list-group">
				  	<li class="list-group-item">First item</li>
				  	<li class="list-group-item">Second item</li>
					<li class="list-group-item">Third item</li>
				</ul>
			</div>
		</div>
		<div class="panel panel-primary">
		  	<div class="panel-heading">Lớp mới đăng</div>
		  	<div class="panel-body">
				<ul class="list-group">
				  	<li class="list-group-item">First item</li>
				  	<li class="list-group-item">Second item</li>
					<li class="list-group-item">Third item</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<iframe id="iframe-doc-contain" class="iframe-doc iframe-doc-contain" src="" width="100%" height="100%"></iframe>
<button onclick="$('.iframe-doc').hide();" type="button" class="btn btn-danger iframe-doc iframe-doc-button">X</button>
<?php echo '<script'; ?>
>
var specList = '<?php echo $_smarty_tpl->tpl_vars['specList']->value;?>
';
var docStorage = '<?php echo $_smarty_tpl->tpl_vars['docStorage']->value;?>
';
try{
	specList = JSON.parse(specList);
	docStorage = JSON.parse(docStorage);
} catch(exx){
	console.log(exx.message);
}

function initLoading(dom){
    dom.block({
        message: '<i class="fa fa-spinner fa-pulse fa-fw" style="color: black;font-size: 900%;"></i>',
        themedCSS: {
            width:  '30%',
            top:    '0%',
            left:   '0%'
        },
        css: {
            border: 'none',
            background: 'none',
            color: '#ffffff'
        }
    });
    $(".blockUI").css("background-color", "transparent");
}
function destroyLoading(dom){
    dom.unblock();
}

$(document).ready(function() {
    $('#jstree').jstree({
        'core' : { 'data' : specList, "check_callback" : true, },
        'ui': { select_multiple_modifier : false },
        /* "plugins" : [ "dnd" ] */
    }).on('changed.jstree', function (e, data) {
        if(data.selected.length == 1) {
            var node = $('#jstree').jstree("get_text", data.selected);
            console.log(node);
        }
    }).bind('select_node.jstree', function(e, data){
        if(data.selected.length > 1){
            data.instance.deselect_node( [ data.selected[0] ] );
        }
        console.log(data.selected[0]);
        if(typeof docStorage[data.selected[0]] == 'string'){
        	console.log(docStorage[data.selected[0]]);
        	$('#iframe-doc-contain').attr('src', docStorage[data.selected[0]]);
        	initLoading($('html'));
        	setTimeout(function(){
            	destroyLoading($('html'));
            	$('.iframe-doc').show();
            }, 500);
        }
    }).bind("move_node.jstree", function(e, data) {
        console.log("Drop node " + data.node.id + " to " + data.parent);
        /*moveMenu(data.node.id, data.parent, e);*/
    }).bind("ready.jstree", function(e, data) {
        console.log("Ready jstree");
        $("#jstree").jstree("open_all");
    });
});
<?php echo '</script'; ?>
><?php }
}
?>