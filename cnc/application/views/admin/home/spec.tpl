<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
<style>
    .apply-data{
        border: none !important;
        background: none !important;
        width: 100% !important;
        outline: none !important;
    }
    .special-box div{
        pointer-events: none;
    }
    .features-area{
        width: 100% !important;
        height: auto;
        padding: 0 !important;
        overflow: hidden;
    }
    /* Style the Image Used to Trigger the Modal */
        /* The Modal (background) */
    .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        /*z-index: 1;*/ /* Sit on top */
        padding-top: 50px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
    }

    /* Modal Content (Image) */
    .modal-content {
        margin: auto;
        display: block;
        width: 80%;
        max-width: 700px;
    }

    /* Caption of Modal Image (Image Text) - Same Width as the Image */
    #caption {
        margin: auto;
        display: block;
        width: 80%;
        max-width: 700px;
        text-align: center;
        color: #ccc;
        padding: 10px 0;
        height: calc(10% - 20px);
    }

    /* Add Animation - Zoom in the Modal */
    .modal-content, #caption {
        -webkit-animation-name: zoom;
        -webkit-animation-duration: 0.6s;
        animation-name: zoom;
        animation-duration: 0.6s;
    }

    @-webkit-keyframes zoom {
        from { -webkit-transform:scale(0) }
        to { -webkit-transform:scale(1) }
    }

    @keyframes zoom {
        from { transform:scale(0) }
        to { transform:scale(1) }
    }

    /* The Close Button */
    .close {
        position: absolute;
        top: 15px;
        right: 35px;
        color: #f1f1f1;
        font-size: 40px;
        font-weight: bold;
        transition: 0.3s;
    }

    .close:hover,
    .close:focus {
        color: #bbb;
        text-decoration: none;
        cursor: pointer;
    }

    /* 100% Image Width on Smaller Screens */
    @media only screen and (max-width: 700px){
        .modal-content {
            width: 100%;
        }
    }
    .device-image{
        text-align: center;
        min-height: 380px;
        background-repeat: no-repeat;
        background-size: contain;
        background-position: center center;
    }
    .sketch-image{
        text-align: center;
        min-height: 90%;
        background-repeat: no-repeat;
        background-size: auto 100%;
        background-position: center center;
    }
    .table{
        width: auto;
        min-width: 100%;
        max-width: none;
    }
    .table tr td:first-child{
        width: 250px !important;
        min-width: 150px !important;
    }
    .table tr td:last-child{
        min-width: 200px !important;
    }
    .td-sketch:after{
        content: " *";
    }
    .table sup{
        cursor: move;
    }
    .modal .table{
        max-width: 100%;
        overflow-x: hidden;
    }
    .modal .table tr td{
        width: auto !important;
        min-width: 50px !important;
    }
</style>

<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        {lang('model')}
        <small id="real-title">{lang('spec')}</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-spinner fa-pulse fa-fw"></i> Loading...</a></li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-6">
            <div class="box special-box" style="cursor: pointer;" onmousedown="playPhoto(event);" title="{lang('clk2view_rclk2up')}">
                <div class="box-header">
                    <h3 class="box-title">{$item->brand} {$item->model}</h3>
                </div>
                <div id="device-background" class="box-body no-padding device-image" style="background-image: url({$item->image});">
                    {*<img id="device-source" height="350" src="{$item->image}" style="margin-bottom: 10px; max-width: 90%;" />*}
                </div>
                <div class="box-footer">

                </div>
            </div>
            <input id="device-image" type="file" accept="image/*" style="opacity:0; pointer-events: none; position: absolute;" />
            <input id="device-spec" type="file" accept="image/*" style="opacity:0; pointer-events: none; position: absolute;" />
        </div>

        <div class="col-md-6">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">{lang('overview')}</h3>
                </div>
                <div class="box-body no-padding">
                    <div class="table-responsive">
                    <table class="table table-striped">
                        <tbody>
                        <tr>
                            <td style="width: 250px;">{lang('brand')}</td>
                            <td>{$item->brand}</td>
                        </tr>
                        <tr>
                            <td style="width: 250px;">{lang('model')}</td>
                            <td>{$item->model}</td>
                        </tr>
                        <tr>
                            <td style="width: 250px;">{lang('price')}</td>
                            <td>{$item->price}</td>
                        </tr>
                        <tr>
                            <td style="width: 250px;">{lang('rate')}</td>
                            <td>
                                <a style="cursor: pointer;" onclick="document.getElementsByClassName('rating')[0].scrollIntoView(false);" id="anchor-rate">
                                    {$item->rate}
                                </a>
                            </td>
                        </tr>
                        {foreach from=$overviews key=idx item=ele}
                            <tr>
                                <td style="width: 250px;">{lang($ele->overview)}</td>
                                <td><input type="text" class="apply-data overviews" key="{$ele->overview}" value="{$ele->des}" ></td>
                            </tr>
                        {/foreach}
                        </tbody>
                    </table>
                </div>
                </div>
            </div>
        </div>
    </div>

    {foreach from=$specs key=key item=items}
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">{lang($key)}</h3>
                    </div>
                    <div class="box-body no-padding">
                        <div class="table-responsive">
                        <table class="table table-striped">
                            <tbody>
                            {foreach from=$items key=idx item=ele}
                                <tr>
                                    <td {if $ele->prototype eq 1}
                                            {assign var="sketch" value="`$idx` Sketch"}
                                            style="width: 250px; cursor: move;"
                                            onmousedown="sketch(this, event);"
                                            sketch-key="{$idx}"
                                            photo="{$features->$sketch}"
                                            title="{lang('clk2view_rclk2up')}"
                                            class="td-sketch"
                                        {else}style="width:250px;"
                                        {/if}>
                                        {lang($idx)}
                                    </td>
                                    <td>
                                        {if isset($areas->$idx)}
                                            <textarea rows="1" class="apply-data features-area features " key="{$idx}" >{$features->$idx}</textarea>
                                        {else}
                                            <input type="text" class="apply-data features" key="{$idx}" value="{$features->$idx}" >
                                        {/if}
                                    </td>
                                </tr>
                            {/foreach}
                            </tbody>
                        </table>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    {/foreach}

    {foreach from=$points key=key item=items}
        <div class="row rating">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">{lang('rate')} - {lang($key)}</h3>
                    </div>
                    <div class="box-body no-padding">
                        <div class="table-responsive">
                        <table class="table table-striped">
                            <tbody>
                            {foreach from=$items key=idx item=ele}
                                <tr>
                                    <td style="width: 250px;">{lang($idx)}
                                        <sup onclick="voter(this, '{$idx}', '{lang($idx)}', '{$rates->$idx}');" title="{lang('average_point')}">
                                            ({$rates->$idx})
                                        </sup>
                                    </td>
                                    <td>
                                        {if (not empty($permission['rating'])) or $permission eq 1}
                                            <input type="number" min="0" max="10" class="apply-data rates" key="{$idx}" value="{$votes->$idx}" >
                                        {else}
                                            <input readonly="readonly" class="apply-data rates" key="{$idx}" value="{$votes->$idx}" >
                                        {/if}
                                    </td>
                                </tr>
                            {/foreach}
                            </tbody>
                        </table>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    {/foreach}
</section>

<!-- The Modal -->
<div id="sketchModel" class="modal">

    <!-- The Close Button -->
    {*<span class="close" onclick="document.getElementById('myModal').style.display='none'">X</span>*}

    <!-- Modal Content (The Image) -->
    {*<img alt="Let upload new sketch" class="modal-content" id="sketchPhoto" src="" style="min-height: 305px;">*}
    <div class="modal-content sketch-image" id="sketchPhoto"></div>

    <!-- Modal Caption (Image Text) -->
    <div id="caption"></div>
</div>

<div class="modal fade" id="voterModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">{lang('info')}</h4>
            </div>
            <div class="modal-body">
                <p>Some text in the modal.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">{lang('close')}</button>
            </div>
        </div>

    </div>
</div>

<script>
    var langCheckInputData = '{lang('check_input_data')}';
    var langNotify = '{lang('notify')}';
    var langComplete = '{lang('complete')}';
    var langError = '{lang('error')}';
    var langChooseOne = '{lang('choose_one_option')}';
    var langRatingRange = '{lang('rating_range')}';
    var langAveragePoint = '{lang('average_point')}';
    var langPerson = '{lang('voter')}';
    var langRate = '{lang('rate')}';
    var langNotFound = '{lang('not_found')}';
    var thisUrl = '{base_url()}{$viewPath}';
    var privateBrand = '{$item->brand}';
    var privateModel = '{$item->model}';
    var rootSketch = '';
    var typingTimerMap = { };
    var typingTimerStore = new Array();
    var doneTypingInterval = 1000;
    var moved = false;

    function updateOverviews(key, val){
        console.log(key+': '+val);
        var data = { brand: privateBrand, model: privateModel, key: key, value: val };
        $.post(thisUrl+'overview', data, function (data) {
            if (data != 1) {
                toastr.error(data, key);
            }
            clearTypingStorage(key);
        });
    }
    function updateFeatures(key, val){
        console.log(key+': '+val);
        var data = { brand: privateBrand, model: privateModel, key: key, value: val };
        $.post(thisUrl+'feature', data, function (data) {
            if (data != 1) {
                toastr.error(data, key);
            }
            clearTypingStorage(key);
        });
    }
    function updateRates(key, val){
        console.log(key+': '+val);
        var total = 0;
        try{
            var rates = $('.rates');
            for(var i=0; i<rates.length; i++){
                var rate = rates[i];
                total += parseInt(rate.value);
            }
            total = (total/rates.length).toFixed(1);
        } catch (e){
            console.log(e.message);
        }
        var that = $(".rates[key='" + key + "']");
        $(that[0]).parent().parent().find('sup').html('<i class="fa fa-spinner fa-pulse fa-fw"></i>');
        var data = { brand: privateBrand, model: privateModel, key: key, value: val, total: total };
        $.post(thisUrl+'rate', data, function (data) {
            try{
                console.log(data);
                clearTypingStorage(key);
                data = JSON.parse(data);
                if (data.result != 1) {
                    toastr.error(data, key);
                } else{
                    var that = $(".rates[key='" + key + "']");
                    if(that.length == 1){
                        $(that[0]).attr('valid-val', $(that[0]).val());
                        $(that[0]).parent().parent().find('sup').text('('+data.votes+')');
                    }
                    $('#anchor-rate').text(data.rates);
                }
            } catch(exx){
                console.log(exx.message);
            }
        });
    }
    function clearTypingStorage(key){
        var index = typingTimerMap[key];
        if(typeof index != 'undefined'){
            clearTimeout(typingTimerStore[typingTimerMap[key]]);
            delete typingTimerMap[key];
            var size = Object.keys(typingTimerMap).length;
            if(size < 1){
                typingTimerStore = new Array();
            }
        }
    }
    function initLoading(dom){
        if(typeof dom != 'object'){
            dom = $('.'+dom);
        }
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
        if(typeof dom != 'object'){
            dom = $('.'+dom);
        }
        dom.unblock();
    }
    function playPhoto(event){
        event.preventDefault();
        if(event.button == 2){
            $("#device-image").click();
        } else if(event.button == 0){
            var modal = document.getElementById('sketchModel');
            var captionText = document.getElementById("caption");
            var modalImg = document.getElementById('sketchPhoto');
            var modalBackground = document.getElementById('device-background');

            /*modal.style.backgroundColor = "#ffffff";*/
            modal.style.display = "block";
            modalImg.style.backgroundImage = modalBackground.style.backgroundImage;
            captionText.innerHTML = privateBrand+' '+privateModel;
            modal.onclick = function() {
                modal.style.display = "none";
            }
        }
    }
    function sketch(that, event){
        event.preventDefault();
        if(event.button == 2){
            rootSketch = $(that).attr('sketch-key');
            $("#device-spec").click();
        } else if(event.button == 0){
            var modal = document.getElementById('sketchModel');
            var captionText = document.getElementById("caption");
            var modalImg = document.getElementById('sketchPhoto');

            /*modal.style.backgroundColor = "rgba(0,0,0,0.9)";*/
            modal.style.display = "block";
            /*modalImg.src = $(that).attr('photo');*/
            modalImg.style.backgroundImage = "url('"+$(that).attr('photo')+"')";
            captionText.innerHTML = $(that).text();
            modal.onclick = function() {
                modal.style.display = "none";
            }
        }
    }
    function voter(that, feature, translator, summary){
        event.preventDefault();
        initLoading($(that));
        $.ajax({
            url: thisUrl+'voting',
            type: 'POST',
            data: { brand: privateBrand, model: privateModel, feature: feature },
            dataType: 'JSON',
            async: true,
            success: function (data) {
                voters(translator, summary, data);
                destroyLoading($(that));
            },
            error: function(err){
                console.log(err.message);
                destroyLoading($(that));
            },
        });
    }
    function voters(feature, summary, listing){
        if(listing.length < 1){
            $('#voterModal .modal-body').html(feature+': '+langNotFound);
        } else{
            var html = '<br />';
            html += '<table class="table">';
            html += '<thead> <tr><th>'+langPerson+'</th> <th>'+langRate+'</th></tr> </thead><tbody>';
            try{
                for(var key in listing){
                    if(listing.hasOwnProperty(key)){
                        var item = listing[key];
                        html += '<tr><td>'+item.user+'</td> <td>'+item.rate+'</td></tr>';
                    }
                }
                summary = langAveragePoint+': '+summary;
                $('#voterModal .modal-body').html(summary+'<br />'+html+'</tbody></table>');
                $('#voterModal .modal-title').text(feature);
            } catch (e){
                console.log(e.message);
                $('#voterModal .modal-body').html(feature+': '+langNotFound);
            }
        }
        $("#voterModal").modal();
    }

    $(document).ready(function() {
        var deviceBg = $('.special-box');
        if(deviceBg.length > 0){
            for(var i=0; i<deviceBg.length; i++){
                var el = deviceBg[i];
                el.addEventListener("touchend", function(event){
                    event.preventDefault();
                    if(moved == false){
                        $("#device-image").click();
                    }
                }, false);
                /*el.addEventListener("touchmove", function(event){
                    event.preventDefault();
                    moved = true;
                    var modal = document.getElementById('sketchModel');
                    var captionText = document.getElementById("caption");
                    var modalImg = document.getElementById('sketchPhoto');
                    var modalBackground = document.getElementById('device-background');

                    modal.style.display = "block";
                    modalImg.style.backgroundImage = modalBackground.style.backgroundImage;
                    captionText.innerHTML = privateBrand+' '+privateModel;
                    modal.onclick = function() {
                        modal.style.display = "none";
                        moved = false;
                    }
                }, false);*/
            }
        }
        var tds = $('.td-sketch');
        if(tds.length > 0){
            for(var i=0; i<tds.length; i++){
                var el = tds[i];
                el.addEventListener("touchend", function(event){
                    event.preventDefault();
                    if(moved == false){
                        var that = this;
                        rootSketch = $(that).attr('sketch-key');
                        $("#device-spec").click();
                    }
                }, false);
                el.addEventListener("touchmove", function(event){
                    event.preventDefault();
                    moved = true;
                    var that = this;
                    var modal = document.getElementById('sketchModel');
                    var captionText = document.getElementById("caption");
                    var modalImg = document.getElementById('sketchPhoto');

                    /*modal.style.backgroundColor = "rgba(0,0,0,0.9)";*/
                    modal.style.display = "block";
                    /*modalImg.src = $(that).attr('photo');*/
                    modalImg.style.backgroundImage = "url('"+$(that).attr('photo')+"')";
                    captionText.innerHTML = $(that).text();
                    var span = document.getElementsByClassName("close")[0];
                    modal.onclick = function() {
                        modal.style.display = "none";
                        moved = false;
                    }
                }, false);
            }
        }

        $("#device-image").change(function (e) {
            var element = 'special-box';
            files = e.target.files;
            var formData = new FormData();
            for (var i = 0; i < files.length; i++) {
                var file = files[i];
                formData.append('images', file, file.name);
            }
            formData.set('brand', privateBrand);
            formData.set('model', privateModel);

            initLoading(element);

            $.ajax({
                url: thisUrl+'image',
                type: 'POST',
                data: formData,
                dataType: 'JSON',
                success: function (res) {
                    if(res.result == 0){
                        toastr.warning(langError, langNotify);
                    } else {
                        $('#device-source').attr('src', res.url);
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
        $("#device-spec").change(function (e) {
            var that = this;
            files = e.target.files;
            var formData = new FormData();
            for (var i = 0; i < files.length; i++) {
                var file = files[i];
                formData.append('images', file, file.name);
            }
            formData.set('brand', privateBrand);
            formData.set('model', privateModel);
            formData.set('feature', rootSketch);

            $.ajax({
                url: thisUrl+'sketch',
                type: 'POST',
                data: formData,
                dataType: 'JSON',
                success: function (res) {
                    if(res.result == 0){
                        toastr.warning(langError, langNotify+' '+rootSketch);
                    } else {
                        $("tr").find("[sketch-key='" + rootSketch + "']").attr('photo', res.url);
                    }
                },
                error: function(err){
                    console.log(err.message);
                    toastr.warning(langError, langNotify+' '+rootSketch);
                },
                cache: false,
                contentType: false,
                processData: false
            });
        });
        $('.overviews').on('keyup change paste', function(){
            var that = $(this);
            var index = typingTimerMap[that.attr('key')];
            if(typeof index != 'undefined'){
                clearTimeout(typingTimerStore[typingTimerMap[that.attr('key')]]);
            }
            typingTimerStore.push(setTimeout(function(){ updateOverviews(that.attr('key'), that.val()); }, doneTypingInterval));
            typingTimerMap[that.attr('key')] = typingTimerStore.length - 1;
        });
        $('.overviews').on('keydown', function(){
            var that = $(this);
            if(typeof index != 'undefined'){
                clearTimeout(typingTimerStore[typingTimerMap[that.attr('key')]]);
            }
        });
        $('.features').on('keyup change paste', function(){
            var that = $(this);
            var index = typingTimerMap[that.attr('key')];
            if(typeof index != 'undefined'){
                clearTimeout(typingTimerStore[typingTimerMap[that.attr('key')]]);
            }
            typingTimerStore.push(setTimeout(function(){ updateFeatures(that.attr('key'), that.val()); }, doneTypingInterval));
            typingTimerMap[that.attr('key')] = typingTimerStore.length - 1;
            if(that.prop('type') == 'textarea'){
                /*this.style.height = this.scrollHeight + 'px';*/
                var lines = this.value.split('\n');
                var height = lines.length * 20;
                if(height > this.scrollHeight){
                    height = this.scrollHeight;
                }
                this.style.height = height + 'px';
            }
        });
        $('.features').on('keydown', function(){
            var that = $(this);
            if(typeof index != 'undefined'){
                clearTimeout(typingTimerStore[typingTimerMap[that.attr('key')]]);
            }
        });
        $('.rates').on('keyup change paste', function(e){
            if ((e.keyCode == 8) || (e.keyCode >= 48 && e.keyCode <= 57) || (e.keyCode >= 96 && e.keyCode <= 105)) {
                var that = $(this);
                if(that.val() >= 0 && that.val() <= 10){
                    var index = typingTimerMap[that.attr('key')];
                    if(typeof index != 'undefined'){
                        clearTimeout(typingTimerStore[typingTimerMap[that.attr('key')]]);
                    }
                    typingTimerStore.push(setTimeout(function(){ updateRates(that.attr('key'), that.val()); }, doneTypingInterval));
                    typingTimerMap[that.attr('key')] = typingTimerStore.length - 1;
                } else{
                    console.log('up: invalid range');
                    if(typeof index != 'undefined'){
                        clearTimeout(typingTimerStore[typingTimerMap[that.attr('key')]]);
                    }
                    e.preventDefault();
                    e.stopPropagation();
                    toastr.remove();
                    toastr.warning(langRatingRange, langNotify);
                    $(that).val($(that).attr('valid-val'));
                    return false;
                }
            }
        }).on('keydown', function(e){
            if ((e.keyCode >= 48 && e.keyCode <= 57) || (e.keyCode >= 96 && e.keyCode <= 105)) {
                var that = $(this);
                if(typeof index != 'undefined'){
                    clearTimeout(typingTimerStore[typingTimerMap[that.attr('key')]]);
                }
            }
        }).on('focusin', function(e){
            var that = $(this);
            $(that).attr('valid-val', that.val());
        });

        var areas = document.getElementsByClassName("features-area");
        for(var i=0; i<areas.length; i++){
            var item = areas[i];
            item.style.height = item.scrollHeight + "px";
        }
        /*var queryString = '';
         var queryString2 = '';
         var specs = $('.aps-specs-list');
         for(var i=0; i<specs.length; i++){
         var spec = $(specs[i]).find('li');
         for(var j=0; j<spec.length; j++){
         var name = $(spec[j]).context.firstElementChild.innerText;
         var tooltip = $($(spec[j]).find('.aps-tooltip-data'));
         var values = $($(spec[j]).find('.aps-attr-value'));
         console.log(name);
         if(tooltip.length > 0){
         tooltip = tooltip[0].innerText;
         tooltip = tooltip.replace(/'/g, "\\'");
         console.log(tooltip);
         } else {
         tooltip = '';
         }
         var value = '';
         if(values.length > 0){

         value = values[0].innerText;
         if(value == '' || value == null){
         value = values[0].innerHTML;
         if(value.indexOf('check') >= 0){
         value = 'Yes';
         }
         if(value.indexOf('cancel') >= 0){
         value = 'No';
         }
         }
         value = value.replace(/'/g, "\\'");
         console.log(value);
         } else {
         value = '';
         }
         console.log('-----------');
         queryString += (queryString == '' ? '' : ', ') + "('"+(i+1)+"', '"+name+"', '"+tooltip+"')";
         queryString2 += (queryString2 == '' ? '' : ', ') + "('Samsung', 'Galaxy S8', '"+name+"', '"+value+"')";
         }
         }
         console.log(queryString2);*/

        /*
         var table = $('.abc');
         var rows = table.find('tr');
         for(var i=0; i<rows.length; i++){
         var row = rows[i];
         $(row).find('td:last').after('<td>new col</td>');
         }
         */
    });
</script>