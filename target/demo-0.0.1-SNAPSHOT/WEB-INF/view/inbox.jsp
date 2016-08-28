<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]>  <html lang="en" class="no-js">     <![endif]-->
<html lang="en" class="no-js">
<head>
<title>主题词管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="${ctx}/assets/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="${ctx}/assets/css/style.css" rel='stylesheet' type='text/css' />
<link href="${ctx}/assets/css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="${ctx}/js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="${ctx}/js/bootstrap.min.js"></script>
 
</head>
<body>
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">数据可视化平台</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	        		<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-comments-o"></i><span class="badge">4</span></a>
	        		<ul class="dropdown-menu">
						<li class="dropdown-menu-header">
							<strong>Messages</strong>
							<div class="progress thin">
							  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
							    <span class="sr-only">40% Complete (success)</span>
							  </div>
							</div>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/1.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
								<span class="label label-info">NEW</span>
							</a>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/2.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
								<span class="label label-info">NEW</span>
							</a>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/3.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
							</a>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/4.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
							</a>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/5.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
							</a>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/pic1.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
							</a>
						</li>
						<li class="dropdown-menu-footer text-center">
							<a href="#">View all messages</a>
						</li>	
	        		</ul>
	      		</li>
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="${ctx}/assets/img/1.png" alt=""/><span class="badge">9</span></a>
	        		<ul class="dropdown-menu">
						<li class="dropdown-menu-header text-center">
							<strong>Account</strong>
						</li>
						<li class="m_2"><a href="#"><i class="fa fa-bell-o"></i> Updates <span class="label label-info">42</span></a></li>
						<li class="m_2"><a href="#"><i class="fa fa-envelope-o"></i> Messages <span class="label label-success">42</span></a></li>
						<li class="m_2"><a href="#"><i class="fa fa-tasks"></i> Tasks <span class="label label-danger">42</span></a></li>
						<li><a href="#"><i class="fa fa-comments"></i> Comments <span class="label label-warning">42</span></a></li>
						<li class="dropdown-menu-header text-center">
							<strong>Settings</strong>
						</li>
						<li class="m_2"><a href="#"><i class="fa fa-user"></i> Profile</a></li>
						<li class="m_2"><a href="#"><i class="fa fa-wrench"></i> Settings</a></li>
						<li class="m_2"><a href="#"><i class="fa fa-usd"></i> Payments <span class="label label-default">42</span></a></li>
						<li class="m_2"><a href="#"><i class="fa fa-file"></i> Projects <span class="label label-primary">42</span></a></li>
						<li class="divider"></li>
						<li class="m_2"><a href="#"><i class="fa fa-shield"></i> Lock Profile</a></li>
						<li class="m_2"><a href="#"><i class="fa fa-lock"></i> Logout</a></li>	
	        		</ul>
	      		</li>
			</ul>
			<form class="navbar-form navbar-right">
              <input type="text" class="form-control" value="Search..." onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search...';}">
            </form>
            <%@ include file="nav_bar.jsp"%>
        </nav>
        <div id="page-wrapper">
        <div class="graphs">
	     <div class="xs">
  	     <h3>主题词管理</h3>
  	        <div class="col-md-4 email-list1">
               <ul class="collection">
                    <li class="collection-item avatar email-unread">
                      <i class="fa fa-users icon_1"></i>
                      <div class="avatar_left">
                      	<span class="email-title">灾害</span>
                        <p class="truncate grey-text ultra-small">地震</p>
                      </div>
                      <a href="#!" class="secondary-content"><span class="new badge blue">11144</span></a>
                      <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread">
                      <i class="fa fa-exclamation-circle icon_2"></i>
                      <div class="avatar_left">
                      	<span class="email-title">灾害</span>
                        <p class="truncate grey-text ultra-small">泥石流</p>
                      </div>
                      <a href="#!" class="secondary-content"><span class="new badge red">5984</span></a>
                      <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread">
                      <i class="fa fa-tag icon_3"></i>
                      <div class="avatar_left">
                      	<span class="email-title">灾害</span>
                        <p class="truncate grey-text ultra-small">矿泉水</p>
                      </div>
                      <a href="#!" class="secondary-content"><span class="new badge blue1">1874</span></a>
                      <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread">
                      <i class="icon_4">4</i>
                      <div class="avatar_left">
                      	<span class="email-title">环境</span>
                        <p class="truncate grey-text ultra-small">PM2.5</p>
                      </div>
                      <a href="#!" class="secondary-content"><span class="blue-text ultra-small">112</span></a>
                      <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread">
                      <i class="icon_4 icon_5">5</i>
                      <div class="avatar_left">
                      	<span class="email-title">阅兵</span>
                        <p class="truncate grey-text ultra-small">习主席</p>
                      </div>
                      <a href="#!" class="secondary-content"><span class="blue-text ultra-small">56</span></a>
                      <div class="clearfix"> </div>
                    </li>
                    <li class="collection-item avatar email-unread email_last">
                      <i class="icon_4 icon_6">6</i>
                      <div class="avatar_left">
                      	<span class="email-title">节日</span>
                        <p class="truncate grey-text ultra-small">国庆节</p>
                      </div>
                      <a href="#!" class="secondary-content"><span class="blue-text ultra-small">32</span></a>
                      <div class="clearfix"> </div>
                    </li>
              </ul>
         <div class="content-box  mrg15B">
          <div class="content-box-wrapper text-center">
            <h4 class="content-box-header">
            图片展示
            <small>地图和统计图</small></h4>
			  <ul class="shortcut-buttons-set">
      <li><a class="shortcut-button" href="tmap.jsp"><span> <img src="${ctx}/assets/img/thememap.png" alt="icon" /><br />
        主题词统计地图 </span></a></li>
      <li><a class="shortcut-button" href="#"><span> <img src="${ctx}/assets/img/paper_content_pencil_48.png" alt="icon" /><br />
        Create a New Page </span></a></li>
      <li><a class="shortcut-button" href="#"><span> <img src="${ctx}/assets/img/image_add_48.png" alt="icon" /><br />
        Upload an Image </span></a></li>
      <li><a class="shortcut-button" href="#"><span> <img src="${ctx}/assets/img/clock_48.png" alt="icon" /><br />
        Add an Event </span></a></li>
      <li><a class="shortcut-button" href="#messages" rel="modal"><span> <img src="${ctx}/assets/img/comment_48.png" alt="icon" /><br />
        Open Modal </span></a></li>
    </ul>
		    </div>
         </div>
        </div>
        <div class="col-md-8 inbox_right">
         	<form action="#" method="GET">
                <div class="input-group">
                    <input type="text" name="search" class="form-control1 input-search" placeholder="请输入主题词...">
                    <span class="input-group-btn">
                        <button class="btn btn-success" type="button"><i class="fa fa-search"></i></button>
                    </span>
                </div><!-- Input Group -->
            </form>
            <div class="mailbox-content">
               <div class="mail-toolbar clearfix">
			     <div class="float-left">
			        <div class="btn btn_1 btn-default mrg5R">
			           <i class="fa fa-refresh"> </i>
			        </div>
			        <div class="dropdown">
			            <a href="#" title="" class="btn btn-default" data-toggle="dropdown" aria-expanded="false">
			                <i class="fa fa-cog icon_8"></i>
			                <i class="fa fa-chevron-down icon_8"></i>
			            <div class="ripple-wrapper"></div></a>
			            <ul class="dropdown-menu float-right">
			                <li>
			                    <a href="#" title="">
			                        <i class="fa fa-pencil-square-o icon_9"></i>
			                        编辑
			                    </a>
			                </li>
			                <li>
			                    <a href="#" title="">
			                        <i class="fa fa-download icon_9"></i>
			                        下载
			                    </a>
			                </li>
			                <li class="divider"></li>
			                <li>
			                    <a href="#" class="font-red" title="">
			                        <i class="fa fa-times" icon_9=""></i>
			                        删除
			                    </a>
			                </li>
							<li class="divider"></li>
							 <li>
			                    <a href="validation.jsp" title="">
			                        <i class="fa fa-calendar icon_9"></i>
			                        增加主题词
			                    </a>
			                </li>
			            </ul>
			        </div>
			        <div class="clearfix"> </div>
			    </div>
			    <div class="float-right">
			        
			              
                            <span class="text-muted m-r-sm">显示20/346 </span>
                            <div class="btn-group m-r-sm mail-hidden-options" style="display: inline-block;">
                                <div class="btn-group">
                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-folder"></i> <span class="caret"></span></a>
                                    <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                        <li><a href="#">灾害</a></li>
                                        <li><a href="#">环境</a></li>
                                        <li><a href="#">救灾</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">水质</a></li>
                                        <li><a href="#">节日</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">其他</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group">
                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tags"></i> <span class="caret"></span></a>
                                    <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                        <li><a href="#">地震</a></li>
                                        <li><a href="#">泥石流</a></li>
                                        <li><a href="#">山体滑坡</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">雪崩</a></li>
                                        <li><a href="#">冰雹</a></li>
                                        <li><a href="#">洪水</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="btn-group">
                                <a class="btn btn-default"><i class="fa fa-angle-left"></i></a>
                                <a class="btn btn-default"><i class="fa fa-angle-right"></i></a>
                            </div>
                        
			        
			    </div>
               </div>
                <table width="64%" class="table">
                    <tbody>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                             <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                            	<input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                              <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                              <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                              <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                               <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                             <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                               <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                             <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star icon-state-warning"></i>
                            </td>
                            <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                             <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                             <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
							 <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                        <tr class="read checked">
                            <td class="hidden-xs">
                                <input type="checkbox" class="checkbox">
                            </td>
                            <td class="hidden-xs">
                                <i class="fa fa-star"></i>
                            </td>
                            <td class="hidden-xs">
                                灾害
                            </td>
							  <td class="hidden-xs">
                                泥石流
                            </td>
                            <td class="hidden-xs">
                                789
                            </td>
                            <td>
                            </td>
                            <td class="hidden-xs">
                                2015-9-8
                            </td>
                        </tr>
                    </tbody>
              </table>
          </div>
            </div>
            <div class="clearfix"> </div>
       </div>
       <div class="copy_layout">
         <p>Copyright &copy; 2015.Company name All rights reserved 中国地质大学（武汉）</p>
       </div>
   </div>
      </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
<!-- Nav CSS -->
<link href="${ctx}/assets/css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="${ctx}/js/metisMenu.min.js"></script>
<script src="${ctx}/js/custom.js"></script>
</body>
</html>
