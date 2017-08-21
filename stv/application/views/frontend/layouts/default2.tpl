<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
      background-color: #01315A;
    	color: #FFF;
    	padding-bottom: 20px;
    }
    
    .jumbotron .container{
    	border-bottom: 5px solid #096DB9;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #01315A;
      color: #FFF;
      padding: 25px;
    }
    
    .header-left{
    	background-image: url("http://giasusangtaoviet.edu.vn/wp-content/uploads/2017/07/Logo-1-e1499270184520.png");
    	background-size: contain;
    	background-repeat: no-repeat;
    	background-position: center;
    	width: 100%;
    	height: 100px;
    }
    
    .header-center h2{
    	margin-top: 10px;
    }
    
    .header-right{
    	/* background-image: url("https://api.asm.skype.com/v1/objects/0-sa-d1-9a1613aefa56b9676b8a8dcccd8a673f/views/imgpsh_fullsize"); */
    	background-image: url("{base_url()}media/images/header/teacher.png");
    	background-size: contain;
    	background-repeat: no-repeat;
    	background-position: center;
    	width: 100%;
    	height: 100px;
    }
    
    /* navbar */
    .navbar {
    	margin-top: 20px;
      margin-bottom: 0px;
      margin-left: auto;
      margin-right: auto;
      border-radius: 0;
      background-color: #014279;
    }
    
.navbar-default {
    background-color: #014279;
    border-color: #014279;
    
    text-align: center;
    float:none;
}
.navbar-default .nav{
    width: 100%;
}
/* Title */
.navbar-default .navbar-brand {
    color: #FFF;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
    color: #5E5E5E;
}
/* Link */
.navbar-default .navbar-nav > li {
    display:inline-block;
	float:none;
	margin:0 5px;
	vertical-align:middle;
}
.navbar-default .navbar-nav > li > a {
    color: #FFF;
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
    color: #FA6210;
}
.navbar-default .navbar-nav > .active > a,
.navbar-default .navbar-nav > .active > a:hover,
.navbar-default .navbar-nav > .active > a:focus {
    color: #FA6210;
    background-color: #014279;
}
.navbar-default .navbar-nav > .open > a,
.navbar-default .navbar-nav > .open > a:hover,
.navbar-default .navbar-nav > .open > a:focus {
    color: #FFF;
    background-color: #01315A;
}
/* Caret */
.navbar-default .navbar-nav > .dropdown > a .caret {
    border-top-color: #FFF;
    border-bottom-color: #FFF;
}
.navbar-default .navbar-nav > .dropdown > a:hover .caret,
.navbar-default .navbar-nav > .dropdown > a:focus .caret {
    border-top-color: #FA6210;
    border-bottom-color: #FA6210;
}
.navbar-default .navbar-nav > .open > a .caret,
.navbar-default .navbar-nav > .open > a:hover .caret,
.navbar-default .navbar-nav > .open > a:focus .caret {
    border-top-color: #FFF;
    border-bottom-color: #FFF;
}
/* Mobile version */
.navbar-default .navbar-toggle {
    border-color: #01315A;
}
.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {
    background-color: #01315A;
}
.navbar-default .navbar-toggle .icon-bar {
    background-color: #01315A;
}
.navbar-default .navbar-nav .open .dropdown-menu {
	background-color: #01315A;
}
.navbar-default .navbar-nav .open .dropdown-menu > li > a {
     color: #FFF;
}
.navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
.navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
	background-color: #014279;
}
  
@media (max-width: 767px) {
    .navbar-default .navbar-nav .open .dropdown-menu > li > a {
        color: #FFF;
    }
    .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
    .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
          color: #333;
    }
}
</style>
</head>
<body>

<div class="jumbotron">
  <div class="container">
  	<div class="row">
  		<div class="col-sm-3 text-left">
  			<div class="header-left">
  			
  			</div>
  		</div>
  		<div class="col-sm-6 text-center header-center">
  			<h2>GIA SƯ SÁNG TẠO VIỆT</h2>
  			<h5>Tri thức chắp cánh tương lai</h5>
  			<h5>Địa chỉ: 68/1 QL13 Hiệp Bình Chánh, Thủ Đức, Hồ Chí Minh</h5>
  		</div>
  		<div class="col-sm-3 text-right">
  			<div class="header-right">
  			
  			</div>
  		</div>
  	</div>
  	<div class="row">
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <ul class="nav navbar-nav">
		      <li class="active"><a href="#">Trang chủ</a></li>
		      <li><a href="#">Tin tức</a></li>
		      <li class="dropdown">
		        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Tài liệu
		        <span class="caret"></span></a>
		        <ul class="dropdown-menu">
		          <li><a href="#">Page 1-1</a></li>
		          <li><a href="#">Page 1-2</a></li>
		          <li><a href="#">Page 1-3</a></li>
		        </ul>
		      </li>
		      <li class="dropdown">
		        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Đề thi
		        <span class="caret"></span></a>
		        <ul class="dropdown-menu">
		          <li><a href="#">Page 1-1</a></li>
		          <li><a href="#">Page 1-2</a></li>
		          <li><a href="#">Page 1-3</a></li>
		        </ul>
		      </li>
		      <li><a href="#">Lớp mới</a></li>
		      <li><a href="#">Học phí</a></li>
		      <li><a href="#">Mức phí nhận lớp</a></li>
		      <li class="dropdown">
		        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Đăng ký
		        <span class="caret"></span></a>
		        <ul class="dropdown-menu">
		          <li><a href="#">Page 1-1</a></li>
		          <li><a href="#">Page 1-2</a></li>
		        </ul>
		      </li>
		      <li><a href="#">Tuyển dụng</a></li>
		      <li><a href="#">Liên hệ</a></li>
		    </ul>
		  </div>
		</nav>
  	</div>
  </div>
</div>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
    </div>
    <div class="col-sm-8 text-left"> 
      <h1>Welcome</h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      <hr>
      <h3>Test</h3>
      <p>Lorem ipsum...</p>
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Copyright © 2017 Gia sư Sáng Tạo Việt.</p>
</footer>

</body>
</html>