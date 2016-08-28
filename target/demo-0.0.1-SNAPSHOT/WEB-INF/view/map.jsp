<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="shared/taglib.jsp"%>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]>  <html lang="en" class="no-js">     <![endif]-->
<%@ include file="shared/importJs.jsp"%>
<html lang="en" class="no-js">
    <jsp:include page="shared/pageHead.jsp"/>
    <!-- BEGIN BODY -->
    <body class="page-header-fixed">
        <!-- BEGIN HEADER -->
        <%@ include file="shared/pageHeader.jsp"%>
        <!-- END HEADER -->
        <div class="clearfix"></div>
        <!-- BEGIN CONTAINER -->
        <div class="page-container">
            <%@ include file="shared/sidebar.jsp"%>
            <!-- BEGIN CONTENT -->
            <div class="page-content-wrapper">
                <div class="page-content">
                    <%@ include file="shared/styleSet.jsp"%>
                    <!-- BEGIN DASHBOARD-->
					<!-- BEGIN PAGE HEADER-->
					<div class="row">
					    <div class="col-md-12">
					        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
					 		<h3 class="page-title" id="index-page-title">欢迎使用</h3>
					 		<ul class="page-breadcrumb breadcrumb">
							     <li class="start">
							         <i class="fa fa-home"></i>
							         <a href="javascript:;">首页</a>
							     </li>
							 </ul>
					 		<!-- END PAGE TITLE & BREADCRUMB-->
					    </div>
					</div>
					<div class="row">
						<div class="col-md-12">
								<!--Step:1 为ECharts准备一个具备大小（宽高）的Dom-->
							    <div id="mainMap" style="height:500px;border:1px solid #ccc;padding:10px;"></div>
							    
							    <!--Step:2 引入echarts.js-->
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
						</div>
					</div>
					<!-- END PAGE HEADER-->
                    <!-- END DASHBOARD-->
                </div>
            </div>
            <!-- END CONTENT -->
        </div>
        <!-- END CONTAINER -->
        
       <%@ include file="shared/pageFooter.jsp"%>
    </body>
</html>
