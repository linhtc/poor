<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />

<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        {lang('home')}
        <small id="real-title">{lang('edit')}</small>
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
                    <h3 class="box-title">{lang('info')}</h3>
                    <div class="pull-right box-tools">
                        <button class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>

                <div class="box-body pad">
                    <div class="col-md-6">
                        <form>
                            <div class="form-group">
                                <label for="brand">{lang('id')} (*)</label>
                                <input id="id" type="text" class="form-control params" notnull value="{$item->id}" readonly >
                            </div>
                            
                            <div class="form-group">
                                <label for="brand">{lang('photo')} (*)</label>
                                <input id="photo" onclick="changePhoto();" type="text" class="form-control params" notnull value="{$item->photo}" readonly style="cursor:pointer;" >
                            </div>

                            <div class="form-group">
                                <label for="crawler">{lang('caption')}</label>
                                <textarea id="caption" class="form-control params">
                                {$item->caption}
                                </textarea>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="box-footer">
                    <button type="submit" class="btn btn-success" onclick="funcSubmit();">{lang('save')}</button>
                    <button type="submit" class="btn btn-danger" onclick="funcCancel();">{lang('back')}</button>
                </div>
            </div>
        </div>
    </div>
</section>

<input id="src_photo" type="file" class="form-control"  style="opacity:0; pointer-events: none; position: absolute;" accept="image/*" />

<script>
    var langCheckInputData = '{lang('check_input_data')}';
    var langNotify = '{lang('notify')}';
    var langComplete = '{lang('complete')}';
    var langChooseOne = '{lang('choose_one_option')}';

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
        window.location = '{base_url()}admin/manage-home/view';
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
    function changePhoto() {
        $("#src_photo").click();
    }
    
    $(document).ready(function() {
        $('#prototype').selectpicker({
            size: 10,
            liveSearch: true,
            noneSelectedText: langChooseOne
        }).on('hidden.bs.select', function (e){ });
        $("#src_photo").change(function (e) {
            var element = '#photo';
            files = e.target.files;
            var formData = new FormData();
            for (var i = 0; i < files.length; i++) {
                var file = files[i];
                formData.append('upfiles', file, file.name);
            }
            var id = $('#id').val();
            formData.set('id', id);
            
            initLoading(element);

            $.ajax({
                url: '{base_url()}admin/manage-home/photo',
                type: 'POST',
                data: formData,
                dataType: 'JSON',
                success: function (res) {
                    toastr.remove();
                    if(res.result){
                        toastr.success('Tải lên thành công!', 'Thông báo');
                        console.log(res);
                        /*setTimeout(function(){ location.reload(); }, 1000);*/
                        $('#photo').val(res.url);
                    } else{
                        toastr.warning('Tải lên chưa được!', 'Thông báo');
                    }
                    destroyLoading(element);
                },
                error: function(err){
                    console.log(err.message);
                },
                cache: false,
                contentType: false,
                processData: false
            });
        });
    });
</script>