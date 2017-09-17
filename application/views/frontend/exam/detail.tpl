<div class="row" style="min-height: 300px;">
	<div class="col-md-9 row-container-doc">
		{include file='frontend/layouts/breadcrumb.tpl'}
		
		<h3>{$subject->subject} {$class->class}</h3>
		
		<div id="jstree">
		
		</div>
		<iframe id="iframe-doc-contain" class="iframe-doc iframe-doc-contain" src="" width="100%" height="100%"></iframe>
	</div>
	<div class="col-md-3">
		{include file='frontend/layouts/document.tpl'}
		{include file='frontend/layouts/newclass.tpl'}
		{include file='frontend/layouts/hotnews.tpl'}
	</div>
</div>

<!-- .toolbarButton.closeview::before { display: inline-block;content: url(images/toolbarButton-close.png); } -->


<script>
var specList = '{$specList}';
var docStorage = '{$docStorage}';
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

function closeDocumentView(){
	$('.module').css('overflowY', 'auto');
	$('#jstree').show();
	$('.iframe-doc').hide();
	$('#iframe-doc-contain').removeClass('iframe-doc-fullscreen');
}

function fullscreenDocumentView(){
	initLoading($('html'));
	if($('#iframe-doc-contain').hasClass( "iframe-doc-fullscreen" )){
		$('#iframe-doc-contain').removeClass('iframe-doc-fullscreen');
	} else{
		$('#iframe-doc-contain').addClass('iframe-doc-fullscreen');
	}
	setTimeout(function(){
    	destroyLoading($('html'));
    }, 500);
}

$(document).ready(function() {
    $('#jstree').jstree({
        'core' : { 'data' : specList, "check_callback" : true, },
        'ui': { select_multiple_modifier : false },
        "plugins" : [ "noclose" ]
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
        	/* $('.module').css('overflowY', 'hidden'); */
        	$('#jstree').hide();
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
        $('.jstree-ocl').hide();
    });
    $('#jstree').jstree().hide_dots();
});
</script>