<?php /* Smarty version 3.1.27, created on 2017-08-21 15:27:55
         compiled from "/var/www/html/elearning/application/views/admin/studentregis/data.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1683708321599a998b5106e3_83929136%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '68b1248c8dfef4b0467a2073ae5cc88d048ae670' => 
    array (
      0 => '/var/www/html/elearning/application/views/admin/studentregis/data.tpl',
      1 => 1503302502,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1683708321599a998b5106e3_83929136',
  'variables' => 
  array (
    'list' => 0,
    'item' => 0,
    'permission' => 0,
    'this' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_599a998b520f32_56162255',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_599a998b520f32_56162255')) {
function content_599a998b520f32_56162255 ($_smarty_tpl) {
if (!is_callable('smarty_modifier_date_format')) require_once '/var/www/html/elearning/application/third_party/smarty/libs/plugins/modifier.date_format.php';

$_smarty_tpl->properties['nocache_hash'] = '1683708321599a998b5106e3_83929136';
if (!empty($_smarty_tpl->tpl_vars['list']->value)) {?>
    <?php
$_from = $_smarty_tpl->tpl_vars['list']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['item'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['item']->_loop = false;
$_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
foreach ($_from as $_smarty_tpl->tpl_vars['i']->value => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
$foreach_item_Sav = $_smarty_tpl->tpl_vars['item'];
?>
        <tr>
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
</td>
            <td><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['item']->value['modified'],lang('smt_dt_format'));?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value['fullname'];?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value['address'];?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value['phone'];?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value['email'];?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value['classname'];?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value['subjects'];?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value['requirement_teachers'];?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value['notes'];?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value['done'];?>
</td>
            <td style="text-align: center;">
                <?php if ((!empty($_smarty_tpl->tpl_vars['permission']->value['execute'])) || $_smarty_tpl->tpl_vars['permission']->value == 1) {?>
                    <a info-id="<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" info-action="done" class="label label-warning a-confirmation" style="cursor: pointer;"><?php echo lang('done');?>
</a>
                <?php }?>
                <!-- <?php if ((!empty($_smarty_tpl->tpl_vars['permission']->value['edit'])) || $_smarty_tpl->tpl_vars['permission']->value == 1) {?>
                    <a href="edit/<?php echo $_smarty_tpl->tpl_vars['this']->value->mask($_smarty_tpl->tpl_vars['item']->value['id']);?>
" onclick="window.location='edit/<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
'" class="label label-info" style="cursor: pointer;"><?php echo lang('edit');?>
</a>
                <?php }?> -->
                <?php if ((!empty($_smarty_tpl->tpl_vars['permission']->value['delete'])) || $_smarty_tpl->tpl_vars['permission']->value == 1) {?>
                    <a info-id="<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" info-action="delete" class="label label-danger a-confirmation" style="cursor: pointer;"><?php echo lang('delete');?>
</a>
                <?php }?>
            </td>
        </tr>
    <?php
$_smarty_tpl->tpl_vars['item'] = $foreach_item_Sav;
}
?>
<?php }
}
}
?>