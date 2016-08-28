<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]>  <html lang="en" class="no-js">     <![endif]-->
<html lang="en" class="no-js">
<head>
<title>每日统计</title>
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
<!-- chart -->
<script src="${ctx}/js/Chart.js"></script>
  <script src="${ctx}/js/esl.js" type="text/javascript"></script>
<!-- //chart -->
<style type="text/css">
<!--
.STYLE2 {font-size: 1.7em}
-->
</style>
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
                    <span class="icon-bar"></span>                </button>
                <a class="navbar-brand" href="index.html">数据可视化平台</a>
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
							    <span class="sr-only">40% Complete (success)</span>							  </div>
							</div>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/1.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
								<span class="label label-info">NEW</span>							</a>						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/2.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
								<span class="label label-info">NEW</span>							</a>						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/3.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>							</a>						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/4.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>							</a>						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/5.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>							</a>						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/pic1.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>							</a>						</li>
						<li class="dropdown-menu-footer text-center">
							<a href="#">View all messages</a>						</li>	
	        		</ul>
	      		</li>
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="${ctx}/assets/img/1.png" alt=""/><span class="badge">9</span></a>
	        		<ul class="dropdown-menu">
						<li class="dropdown-menu-header text-center">
							<strong>Account</strong>						</li>
						<li class="m_2"><a href="#"><i class="fa fa-bell-o"></i> Updates <span class="label label-info">42</span></a></li>
						<li class="m_2"><a href="#"><i class="fa fa-envelope-o"></i> Messages <span class="label label-success">42</span></a></li>
						<li class="m_2"><a href="#"><i class="fa fa-tasks"></i> Tasks <span class="label label-danger">42</span></a></li>
						<li><a href="#"><i class="fa fa-comments"></i> Comments <span class="label label-warning">42</span></a></li>
						<li class="dropdown-menu-header text-center">
							<strong>Settings</strong>						</li>
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
	    <div class="graph_box">
			<h3 class="xs">微博统计</h3>
			<div class="grid_3 grid_5">
		   <label for="meeting">选择查询日期：</label><input id="meeting" type="date" value="2015-09-13"/>
		   </div>

     <div class="but_list">

	    <ol class="breadcrumb">
	      <li><a href="#".html">微博地图</a></li>
	      <li><a href="citylist.html">微博统计图</a></li>
	    </ol>
	  </div>

			<!--map!-->
			
							    <div id="mainMap" style="height:500px;border:1px solid #ccc;padding:10px;"></div>
								<script src="${ctx}/js/echarts.js"></script>
							    <script src="${ctx}/js/jquery-1.8.2.min.js"></script>
							    
							    <script type="text/javascript">
							    	// Step:3 为模块加载器配置echarts的路径，从当前页面链接到echarts.js，定义所需图表路径
							    require.config({
								        paths: {
								            echarts: '${ctx}/js'
								        }
								    });
								    $(function(){
							    		require(['echarts','echarts/chart/map'],DrawEChart);
							    	});
								    
								    function DrawEChart(ec) {
							        	//创建图片对象
								    	var myChart = ec.init(document.getElementById('mainMap'));
								    	myChart.showLoading({
								    		text: "图表数据正在努力加载...",
								    	});
								    	//异步加载数据显示
								    	$.getJSON('${ctx}/chart/mapjson.do', function (data) {
									    	myChart.setOption(data);
									    	myChart.hideLoading();
							   	        });  
							    	}
							    	// Step:4 动态加载echarts然后在回调函数中开始使用，注意保持按需加载结构定义图表路径
							    </script>

                   


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
<!-- Bootstrap Core JavaScript -->
<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="${ctx}/js/Chart.js"></script>
</body>
</html>
