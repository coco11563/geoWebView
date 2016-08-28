<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>ECharts</title>
	</head>

	<body>
		<!--Step:1 为ECharts准备一个具备大小（宽高）的Dom-->
		<div id="main" style="height: 500px; border: 1px solid #ccc; padding: 10px;"></div>

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
    		require(['echarts','echarts/chart/line'],DrawEChart);
    	});

    	function DrawEChart(ec) {
        	//创建图片对象
	    	var myChart = ec.init(document.getElementById('main'));
	    	myChart.showLoading({
	    		text: "图表数据正在努力加载...",
	    	});
	    	//异步加载数据显示
	    	$.getJSON('${ctx}/chart/linejson.do', function (data) {
		    	myChart.setOption(data);
		    	myChart.hideLoading();
   	        });  
    	}
    </script>
	</body>
</html>