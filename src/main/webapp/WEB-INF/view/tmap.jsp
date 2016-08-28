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
     <!--Begin Navigation -->
    	 <%@ include file="shared/pageHeader.jsp"%>
     <!--End Navigation -->
        <%@ include file="shared/nav_bar.jsp"%>
        <div id="page-wrapper">
        
        <div class="graphs">
	    <div class="graph_box">
			<h3 class="xs">主题词统计地图</h3>
			<!--map!-->
			<div class="col-md-12">


            <!-- dateform1 start -->
               <script type="text/javascript" src="${ctx}/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
				<script type="text/javascript" src="${ctx}/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
            		<div class="form-group">
                <label for="dtp_input2" class="col-md-2 control-label">起始日期选择</label>
                <div class="input-group date form_date col-md-5" data-date="2015-11-01" data-date-format="yyyy-mm-dd " data-link-field="dtp_input2" data-link-format="yyyy-mm-dd" >
                    <input id="dateform" class="form-control" size="8" type="text" value="2015-11-01">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
				<input type="hidden" id="dtp_input2" value="" /><br/>
            </div>
            <script type="text/javascript">
            	$('.form_date').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
            	</script>
            <!-- dateform2 end -->
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
								    	$.getJSON('${ctx}/chart/keywordmapjson.do?date=2015-11-01&value=0008', function (data) {
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
							</div>
		
		    <div class="media_1">
	      <div class="col-md-6 media_1-left">
           <div class="panel_2">
             <h3>一级主题词</h3>
			 <div class="form-group">
								
								<div class="col-sm-8">
								<select id="01" multiple="" class="form-control1">
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
					<select id="02" multiple="" class="form-control1">
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

	<script type="text/javascript">/*初始化1、2级关键字  */
$.getJSON('${ctx}/chart/contentjson.do',function displayDate(date)
{
	var record  =eval(date)
	 {
		var j = 0;
		for(i = 0 ; i < record.length; i++)
			{
			var levelOneContent = document.createElement('option');
			levelOneContent.text = record[i].content;
			levelOneContent.level = record[i].level;
			levelOneContent.front_level_id = record[i].front_level_id;
			levelOneContent.id = record[i].demand_id;
			var levelOneSelect=document.getElementById("01");
			levelOneSelect.remove(j);
			if(levelOneContent.level == 0)
				{
				levelOneContent.onclick = function(){
					var level2select = document.getElementById("02");
					for(k = 0; k < level2select.length ; k++)
						{
						level2select.options[k].disabled=false; /* 刷新 */
						}
					for(k = 0; k < level2select.length ; k++)
					{
						if(level2select.options[k].front_level_id != this.id)
							{
							level2select.options[k].disabled=true; /* 禁止显示非所选关键字  */
							}
					}
				};
				levelOneSelect.add(levelOneContent,j);
				j++;
				}
			}
		var j = 0;
		for(i = 1 ; i < record.length; i++)
		{
		var levelTwoContent=document.createElement('option');
		levelTwoContent.text = record[i].content;
		levelTwoContent.level = record[i].level;
		levelTwoContent.front_level_id = record[i].front_level_id;
		levelTwoContent.id = record[i].demand_id;
		var levelTwoSelect=document.getElementById("02");
		levelTwoSelect.remove(j);
		if(levelTwoContent.level == 1)
			{
			levelTwoContent.onclick = function(){ returndate(document.getElementById('dateform').value,this.id);};
			levelTwoSelect.add(levelTwoContent,j);	
			j++;
			
			}
		}
	 }
});
</script>

	<!-- ajax -->
   <script type="text/javascript">
	function returndate(value1,value2){
		 require.config({
		        paths: {
		            echarts: '${ctx}/js'
		        }
		    });
		    $(function(){
	    		require(['echarts','echarts/chart/line'],DrawEChart);
	    	});
		    
		    function DrawEChart(ec) {
	        	//创建图片对象
		    	var myChart = ec.init(document.getElementById('mainMap'));
		    	myChart.showLoading({
		    		text: "图表数据正在努力加载...",
		    	});
		    	//异步加载数据显示
		    	$.getJSON('${ctx}/chart/keywordmapjson.do?date='+value1+'&value=' + value2 , function (data) {
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