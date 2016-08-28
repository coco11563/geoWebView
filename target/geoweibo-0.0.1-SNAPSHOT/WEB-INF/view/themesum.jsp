<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]>  <html lang="en" class="no-js">     <![endif]-->
<html lang="en" class="no-js">
<head>
<title>主题词统计</title>
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
    <link href="${ctx}/assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<!-- jQuery -->
<script src="${ctx}/js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="${ctx}/js/bootstrap.min.js"></script>
<!-- chart -->
<script src="${ctx}/js/Chart.js"></script>
<script src="${ctx}/js/1-6-10.esl.js"></script>
<script src="${ctx}/js/echarts.js"></script>
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
			<h3 class="xs">主题词统计</h3>
		<table class="table">
			  <tbody>
			      <tr>
			         <td >
			         	<!-- dateform1 start -->
			               <script type="text/javascript" src="${ctx}/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
							<script type="text/javascript" src="${ctx}/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
			            		<div class="form-group">
			                <label for="dtp_input2" class="col-md-2 control-label">起始日期</label>
			                <div class="input-group date form_date col-md-5" data-date="2015-11-01" data-date-format="yyyy-mm-dd " data-link-field="dtp_input2" data-link-format="yyyy-mm-dd" >
			                    <input id="dateform1" class="form-control" size="8" type="text"  value="2015-11-01">
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
			            <!-- dateform1 end -->
			         </td>
			         <td>
						<!-- dateform2 start -->
			               	<script type="text/javascript" src="${ctx}/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
							<script type="text/javascript" src="${ctx}/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
			            		<div class="form-group" >
			                <label for="dtp_input2" class="col-md-2 control-label">结尾日期</label>
			                <div class="input-group date form_date col-md-5" data-date="" data-date-format="yyyy-mm-dd " data-link-field="dtp_input2" data-link-format="yyyy-mm-dd" >
			                    <input id="dateform2" class="form-control" size="8" type="text" value="2015-11-10">
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
			            <!-- dateform end -->
					</td>
			      </tr>
			   
			   </tbody>
			</table>
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
        // 使用
        require
        (
            [
                'echarts',
                'echarts/chart/bar', // 使用柱状图就加载bar模块，按需加载
				'echarts/chart/line'
            ],
								    
								    function DrawEChart(ec) {
							        	//创建图片对象
								    	var myChart = ec.init(document.getElementById('mainMap'));
								    	myChart.showLoading({
								    		text: "图表数据正在努力加载...",
								    	});
								    	//异步加载数据显示
								    	$.getJSON('${ctx}/chart/linejson.do?date1=2015-11-01&date2=2015-11-10&value1=0008',function (data) {
									    	myChart.setOption(data);
									    	myChart.hideLoading();
							   	        });  
							    	});
							    	// Step:4 动态加载echarts然后在回调函数中开始使用，注意保持按需加载结构定义图表路径
							    </script>
						</div>
   <script type="text/javascript">
	function returndate(value1,value2,value3){
	     require.config({
	            paths: {
	                echarts: '${ctx}/js'
	            }
	        });
	        // 使用
	        require
	        (
	            [
	                'echarts',
	                'echarts/chart/bar', // 使用柱状图就加载bar模块，按需加载
					'echarts/chart/line'
	            ],
		    function DrawEChart(ec) {
	        	//创建图片对象
		    	var myChart = ec.init(document.getElementById('mainMap'));
		    	myChart.showLoading({
		    		text: "图表数据正在努力加载...",
		    	});
		    	//异步加载数据显示
		    	$.getJSON('${ctx}/chart/linejson.do?date1='+value1+'&date2='+value2+'&value1=' + value3 , function (data) {
			    	myChart.setOption(data);
			    	myChart.hideLoading();
	   	        });  
	    	});
	}
	</script> 

						<div class="tab-pane active" id="horizontal-form">
							<form class="form-horizontal">
     					<div class="but_list">
       					<ol class="breadcrumb">
	      					<li><a href="${ctx}/chart/tmap.do">查看主题词全国统计地图</a></li>
	    				</ol>
	 				    </div>

							<button type="button" class="btn btn-sm btn-primary"><a href="${ctx}/chart/validation.do">新增主题词</a></button>
							</form>
							 <div class="media_1">
	      <div class="col-md-6 media_1-left">
           <div class="panel_2">
             <h3>一级主题词</h3>
			 <div class="form-group">
			 	<div id ="level1"  class="col-sm-8">
								<select id = "01"  multiple="" class="form-control1" >
								</select>
							</div>
				
			<table class="table table-hover">
              </table>	</div>
             
           </div>
       </div>
	   
         <div class="col-md-6 media_1-left">
           <div class="panel_2">
             <h3>二级主题词</h3>
              <div class="form-group">
				<div class="col-sm-8">
					<select id = "02"  multiple="" class="form-control1">
					</select>
				</div>
				
			</div>
                <table class="table table-hover">
              </table>
           </div>
       </div>
       <div class="clearfix"> </div>
	    </div> 
						
							
							</div>
							
							</div>
		
		   	
								
								<!--start实现从数据库中获取标签-->
<script type="text/javascript">
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
			levelTwoContent.onclick = function(){ returndate(document.getElementById('dateform1').value,document.getElementById('dateform2').value,this.id);};
			levelTwoSelect.add(levelTwoContent,j);	
			j++;
			
			}
		}
	 }
});
</script>
	<!--end实现从数据库中获取标签-->
	
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
<script src="${ctx}/js/bootstrap-3.3.4.min.js"></script>
<script src="${ctx}/js/Chart.js"></script>

</body>
</html>
