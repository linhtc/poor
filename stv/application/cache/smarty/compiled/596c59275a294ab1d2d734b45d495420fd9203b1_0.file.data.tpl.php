<?php /* Smarty version 3.1.27, created on 2017-08-08 17:14:23
         compiled from "/var/www/html/elearning/application/views/admin/document/data.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:86691665659898eff75f195_67350296%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '596c59275a294ab1d2d734b45d495420fd9203b1' => 
    array (
      0 => '/var/www/html/elearning/application/views/admin/document/data.tpl',
      1 => 1502184304,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '86691665659898eff75f195_67350296',
  'variables' => 
  array (
    'list' => 0,
    'item' => 0,
    'permission' => 0,
    'this' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59898eff769f02_76949774',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59898eff769f02_76949774')) {
function content_59898eff769f02_76949774 ($_smarty_tpl) {
if (!is_callable('smarty_modifier_date_format')) require_once '/var/www/html/elearning/application/third_party/smarty/libs/plugins/modifier.date_format.php';

$_smarty_tpl->properties['nocache_hash'] = '86691665659898eff75f195_67350296';
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
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value['ipaddress'];?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value['subject'];?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['item']->value['class'];?>
</td>
            <td style="text-align: center;">
                <?php if ((!empty($_smarty_tpl->tpl_vars['permission']->value['execute'])) || $_smarty_tpl->tpl_vars['permission']->value == 1) {?>
                    <a href="detail/<?php echo $_smarty_tpl->tpl_vars['this']->value->mask($_smarty_tpl->tpl_vars['item']->value['id']);?>
" onclick="window.location='detail/<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
'" class="label label-info" style="cursor: pointer;"><?php echo lang('write');?>
</a>
                <?php }?>
                <?php if ((!empty($_smarty_tpl->tpl_vars['permission']->value['edit'])) || $_smarty_tpl->tpl_vars['permission']->value == 1) {?>
                    <a href="edit/<?php echo $_smarty_tpl->tpl_vars['this']->value->mask($_smarty_tpl->tpl_vars['item']->value['id']);?>
" onclick="window.location='edit/<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
'" class="label label-info" style="cursor: pointer;"><?php echo lang('edit');?>
</a>
                <?php }?>
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