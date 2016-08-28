<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]>  <html lang="en" class="no-js">     <![endif]-->
<html lang="en" class="no-js">
<head>
<title>主题词统计地图</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="${ctx}/assets/css/bootstrap-3.3.4.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="${ctx}/assets/css/style.css" rel='stylesheet' type='text/css' />
<link href="${ctx}/assets/css/font-awesome.css" rel="stylesheet"> 
<link href="${ctx}/assets/css/custom.css" rel="stylesheet">
    <link href="${ctx}/assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<!-- jQuery -->
<script src="${ctx}/js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- chart -->
<script src="${ctx}/js/Chart.js"></script>
<script src="${ctx}/js/1-6-10.esl.js"></script>
<script src="${ctx}/js/echarts.js"></script>
<script src="${ctx}/js/echarts-map.js"></script>
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
	    <div class="graph_box">
			<h3 class="xs">主题词统计地图</h3>
			<!--map!-->
<div class="col-md-12">


            <!-- dateform start -->
               <script type="text/javascript" src="${ctx}/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
				<script type="text/javascript" src="${ctx}/js/bootstrap-datetimepicker.zh-CN" charset="UTF-8"></script>
            		<div class="form-group">
                <label for="dtp_input2" class="col-md-2 control-label">Date Picking</label>
                <div class="input-group date form_date col-md-5" data-date="2015-08-01" data-date-format="yyyy MM dd " data-link-field="dtp_input2" data-link-format="yyyy-MM-dd" >
                    <input id="dateform" class="form-control" size="16" type="text" value="2015-08-01" onchange="returndata(this.value)" readonly >
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
				<input type="hidden" id="dtp_input2" value="" /><br/>
            </div>
            <script type="text/javascript">
            	$('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
            	</script>
            <!-- dateform end -->
								<!--Step:1 为ECharts准备一个具备大小（宽高）的Dom-->
							    <div id="mainMap" style="height:500px;border:1px solid #ccc;padding:10px;"></div>
							    
							    <!--Step:2 引入echarts.js-->
							    <script src="${ctx}/js/echarts.js"></script>
							    <script src="${ctx}/js/jquery-1.11.1.min.js"></script>
							    
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
						</div>
        


						<div class="tab-pane active" id="horizontal-form">
							<form class="form-horizontal">
						<div class="but_list">
       					<ol class="breadcrumb">
	      					<li><a href="themesum.jsp">查看主题词统计图</a></li>
	    				</ol>
	 				    </div>
							
							</form>
							</div>
							<form class="form-horizontal">
							 <div class="form-group">
							 <label class="col-sm-2 control-label">选择主题词</label>
								<div class="col-sm-8">
								<select  multiple="" class="form-control1">
								<option>地质</option>
								<option>环境</option>
								</select>
							</div>
							</div>
							</form>
							</div>
		
		    <div class="media_1">
	      <div class="col-md-6 media_1-left">
           <div class="panel_2">
             <h3>一级主题词</h3>
			 <div class="form-group">
								
								<div class="col-sm-8">
								<select multiple="" class="form-control1">
								<option>灾害</option>
								<option>景观</option>
								</select>
							</div>
				
			<table class="table table-hover">
              </table>	</div>
             
           </div>
       </div>
	   
       <div class="col-md-6 media_1-right">
           <div class="panel_2 panel_3">
             <h3>二级主题词</h3>
              <div class="form-group">
				<div class="col-sm-8">
					<select multiple="" class="form-control1">
					<option>地震</option>
					<option>泥石流</option>
					<option>洪水</option>
					<option>旱灾</option>
					<option>滑坡</option>
					</select>
				</div>
				
			</div>
                <table class="table table-hover">
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
   <span id="sss"></span>
    <!-- /#wrapper -->
    <!-- Nav CSS -->
    <!-- ajax -->
    <script type="text/javascript">
	function returndata(value){
		alert(value);
		require.config({
	        paths: {
	            echarts: '${ctx}/js'
	        }
	    });
		$(function(){
    		require(['echarts','echartsart/map'],DrawEChart1);
    	});
		function DrawEChart1(ec) {
        	//创建图片对象
	    	var myChart = ec.init(document.getElementById('mainMap'));
	    	myChart.showLoading({
	    		text: "图表数据正在努力加载...",
	    	});
	    	//异步加载数据显示
	    	$.getJSON('${ctx}/chart/mapjson.do?date='+value, function (data) {
		    	myChart.setOption(data);
		    	myChart.hideLoading();
   	        });  
    	}
	}
	</script>
	<!-- ajax -->
<!-- Metis Menu Plugin JavaScript -->

<script src="${ctx}/js/metisMenu.min.js"></script>
<script src="${ctx}/js/custom.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${ctx}/js/bootstrap-3.3.4.min.js"></script>
<script src="${ctx}/js/Chart.js"></script>
</body>
</html>