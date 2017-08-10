<?php /* Smarty version 3.1.27, created on 2017-08-07 17:16:58
         compiled from "/var/www/html/cnc/application/views/admin/contact/view.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:123278462059883e1a5a92a1_45302163%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c948abdbece313f35fdecc559c8078c89db38546' => 
    array (
      0 => '/var/www/html/cnc/application/views/admin/contact/view.tpl',
      1 => 1502096599,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '123278462059883e1a5a92a1_45302163',
  'variables' => 
  array (
    'permission' => 0,
    'brand' => 0,
    'pm' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_59883e1a5baac9_63416951',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_59883e1a5baac9_63416951')) {
function content_59883e1a5baac9_63416951 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '123278462059883e1a5a92a1_45302163';
?>
<style>
    .photo-list{
        -webkit-background-size: contain !important;
        background-size: contain !important;
        background-repeat: no-repeat !important;
        height: 100px !important;
        cursor: pointer;
    }
    .larger-photo-list{
        -webkit-background-size: contain !important;
        background-size: contain !important;
        background-repeat: no-repeat !important;
        height: 300px !important;
        cursor: pointer;
        background-position: center;
    }
    .table-responsive .table tr td {
   		vertical-align: middle;
    }
</style>

<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        <?php echo lang('mold');?>

        
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
                    <h3 class="box-title"><?php echo lang('list');?>
</h3>
                    <?php if ((!empty($_smarty_tpl->tpl_vars['permission']->value['export'])) || $_smarty_tpl->tpl_vars['permission']->value == 1) {?>
                        <div class="pull-right box-tools">
                            <button onclick="optimizer.exportData();" class="btn btn-info btn-xs" data-widget="export" data-toggle="tooltip" title="<?php echo lang('export');?>
">
                                <i class="fa fa-download"></i>
                            </button>
                        </div>
                    <?php }?>
                </div>
                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered nowrap" cellspacing="0" id="data-table">
                            <thead>
                            <tr>

                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th col-id="id"><?php echo lang('id');?>
</th>
                                <th col-id="dt"><?php echo lang('last_update');?>
</th>
                                <th col-id="dt"><?php echo lang('ipaddress');?>
</th>
                                <th col-id="m"><?php echo lang('company');?>
</th>
                                <th col-id="m"><?php echo lang('address');?>
</th>
                                <th col-id="p"><?php echo lang('phone');?>
</th>
                                <th col-id="p"><?php echo lang('fax');?>
</th>
                                <th col-id="p"><?php echo lang('email');?>
</th>
                                <th col-id="p"><?php echo lang('embed');?>
</th>
                                <th col-id="p"><?php echo lang('place');?>
</th>
                                <th col-id="action"><?php echo lang('action');?>
</th>
                            </tr>
                            </tfoot>
                            <tbody>

                            </tbody>
                        </table>
                    </div>
                    <div id="page-detail" style="float:left;">
                        <ul class="pagination bootpag"><li data-lp="10"><?php echo lang('record_found');?>
 <p class="total-rows" style="display: inline;"></p></li></ul>
                    </div>
                    <div id="page-selection" style="float:right;"></div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"><?php echo lang('info');?>
</h4>
            </div>
            <div class="modal-body">
                <p>Some text in the modal.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo lang('close');?>
</button>
            </div>
        </div>

    </div>
</div>

<?php echo '<script'; ?>
 type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"><?php echo '</script'; ?>
>
<!-- Include Date Range Picker -->

<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo base_url();?>
static/default/admin/template/plugins/daterangepicker/daterangepicker.js"><?php echo '</script'; ?>
>
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>
static/default/admin/template/plugins/daterangepicker/daterangepicker.css" />

<?php echo '<script'; ?>
>
    var selMap = {
        b: '<?php echo $_smarty_tpl->tpl_vars['brand']->value;?>
',
        pm: '<?php echo $_smarty_tpl->tpl_vars['pm']->value;?>
'
    };
    var areYouSure = '<?php echo lang('are_u_sure');?>
';
    var okButton = '<?php echo lang('ok');?>
';
    var cancelButton = '<?php echo lang('cancel');?>
';
    var langSeek = '<?php echo lang('seek');?>
';
    var filterBy = '<?php echo lang('filter_by');?>
';
    var includeLang = '<?php echo lang('include');?>
';
    var langCapatity = '<?php echo lang('capacity');?>
';
    var langColor = '<?php echo lang('color');?>
';
    var langPrice = '<?php echo lang('price');?>
';
    var langFeature = '<?php echo lang('feature');?>
';
    var langRate = '<?php echo lang('rate');?>
';
    var langNotFound = '<?php echo lang('not_found');?>
';

    function viewLargerPhoto(that){
    	var photo = $(that).css('background-image');
    	$('.modal-body').html("<div class='larger-photo-list' style='background-image:"+photo+";'></div>");
        $("#myModal").modal();
    }
    function viewFullCaption(that){
    	var caption = $(that).text();
    	$('.modal-body').html(caption);
        $("#myModal").modal();
    }
    function listingPrice(that){
        event.preventDefault();
        initLoading($(that));
        var brand = $(that).attr('brand');
        var model = $(that).attr('model');
        $.ajax({
            url: 'pricing',
            type: 'POST',
            data: { brand: brand, model: model },
            dataType: 'JSON',
            async: true,
            success: function (data) {
                showPricing(brand, model, data);
                destroyLoading($(that));
            },
            error: function(err){
                console.log(err.message);
            },
        });
    }
    function showPricing(brand, model, listing){
        if(listing.length < 1){
            $('.modal-body').html(brand+' '+model+': '+langNotFound);
        } else{
            var html = '<br />';
            html += '<table class="table">';
            html += '<thead> <tr><th>'+langColor+'</th> <th>'+langCapatity+'</th> <th>'+langPrice+'</th> </tr> </thead><tbody>';
            try{
                for(var key in listing){
                    if(listing.hasOwnProperty(key)){
                        var item = listing[key];
                        html += '<tr><td>'+item.color+'</td> <td>'+item.capacity+'</td> <td>'+item.price+'</td> </tr>';
                    }
                }
                $('.modal-body').html(brand+' '+model+': <br />'+html+'</tbody></table>');
            } catch (e){
                console.log(e.message);
                $('.modal-body').html(brand+' '+model+': '+langNotFound);
            }
        }
        $("#myModal").modal();
    }
    function listingRate(that){
        event.preventDefault();
        initLoading($(that));
        var brand = $(that).attr('brand');
        var model = $(that).attr('model');
        var summary = $(that).text();
        $.ajax({
            url: 'rating',
            type: 'POST',
            data: { brand: brand, model: model },
            dataType: 'JSON',
            async: true,
            success: function (data) {
                showRating(brand, model, summary, data);
                destroyLoading($(that));
            },
            error: function(err){
                console.log(err.message);
            },
        });
    }
    function showRating(brand, model, summary, listing){
        if(listing.length < 1){
            $('.modal-body').html(brand+' '+model+': '+langNotFound);
        } else{
            var html = '<br />';
            html += '<table class="table">';
            html += '<thead> <tr><th>'+langFeature+'</th> <th>'+langRate+'</th></tr> </thead><tbody>';
            try{
                for(var key in listing){
                    if(listing.hasOwnProperty(key)){
                        var item = listing[key];
                        html += '<tr><td>'+item.feature+'</td> <td>'+item.rate+'</td></tr>';
                    }
                }
                $('.modal-body').html(brand+' '+model+': '+summary+'<br />'+html+'</tbody></table>');
            } catch (e){
                console.log(e.message);
                $('.modal-body').html(brand+' '+model+': '+langNotFound);
            }
        }
        $("#myModal").modal();
    }
    function initLoading(dom){
        dom.block({
            message: '<i class="fa fa-spinner fa-pulse fa-fw"></i>',
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
    }
    function destroyLoading(dom){
        dom.unblock();
    }

    $(document).ready(function() {
        optimizer.prepare();

        $(dTable+' tfoot th').each( function () {
            var tmpTitle = $(this).text();
            var tmpID = $(this).attr('col-id');
            var tmpVal = typeof filterList[tmpID] !== 'undefined' ? filterList[tmpID] : '';
            var tmpSel = $(this).attr('col-sel');
            var tmpMulti = $(this).attr('col-multi');
            var element = '<input class="filter-data params" type="text" placeholder="'+filterBy+' '+tmpTitle+'" id="'+tmpID+'" value="'+tmpVal+'" />';
            if(tmpSel == 1){ element = '<select '+tmpMulti+' class="filter-data params selectpicker" id="'+tmpID+'" data-container="body">'+selMap[tmpID]+'</select>'; }
            if(tmpID == 'gift'){ optimizer.getGiftByCampaign(tmpVal); }
            if(tmpID == 'action' || tmpID == 'location'){ element = '<span>-</span>'; }
            $(this).html( element );
            $(dTable+' thead tr').append('<th>'+tmpTitle+'</th>');
            if(tmpID == 'action' || tmpID == 'dt' || tmpID == 'ol' || tmpID == 'config'){ optimizer.genDatePicker(tmpID); }
            if(tmpSel == 1){
                $('#'+tmpID).selectpicker({
                    size: 10,
                    liveSearch: true,
                    liveSearchPlaceholder: langSeek,
                    noneSelectedText: filterBy+' '+tmpTitle
                }).on('hide.bs.select', function () {
                    var tmpVal = $( this ).selectpicker('val');
                    var tmpVal2 = filterList[tmpID];
                    if(tmpVal == null){ tmpVal = ''; }
                    if(typeof tmpVal == 'object' && typeof tmpVal2 == 'object'){ if(tmpVal.sort().toString() == tmpVal2.sort().toString()){ return false; } }
                    if(tmpVal != tmpVal2){ optimizer.getData(1); }
                });
                $('#'+tmpID).selectpicker('val', tmpVal.split(','));
            }
        } );
        $('.params').on('keyup', function (e) { if(e.keyCode == 13){ optimizer.getData(1); } });
        currTable = $(dTable).dataTable({ filter: false, bPaginate: false, bInfo: false });

        optimizer.getData(filterList['page']);
    });
<?php echo '</script'; ?>
><?php }
}
?>