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
<!--Begin MapApi -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
  <title>点标记的使用（添加、更新、删除）</title>
  <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main.css"/>
  <script src="http://webapi.amap.com/maps?v=1.3&key=cbe96d92ecd3a0d8f36303a3ac9e9ca9"></script>
  <style>
    .marker {
      color: #ff6600;
      padding: 4px 10px;
      border: 1px solid #fff;
      white-space: nowrap;
      font-size: 12px;
      font-family: "";
      background-color: #0066ff;
    }
    #bottomNav
     { 
       z-index:999; 
       position:fixed;
       bottom:10px; 
       right:10px; ; 
     }
     #Container
     { 
      width:100%; 
      height: 100%;
     }
  </style>
<!--End MapApi -->
</head>
<body>
<div id="wrapper">
     <!--Begin Navigation -->
    	 <%@ include file="shared/pageHeader.jsp"%>
     <!--End Navigation -->
     <div class="page-container">
     <%@ include file="shared/nav_bar.jsp"%>
        <div id="page-wrapper">
        <div class="graphs"> 
         <div class="graph_box">
		<!--Begin MapApi -->
			<div id="mapContainer" style="left :250px" ></div>
			<div id="Container"style="height:500px;border:1px solid #ccc;padding:10px;" ></div>
			  <div id="bottomNav" class="button-group">
			  <!-- <div id="tip" class="button-group"> -->
			    <input type="button" class="button" value="添加点标记覆盖物" id="addMarker" />
			    <!--  <input type="button" class="button" value="删除点标记覆盖物" id="clearMarker" />--> 
			  </div>
			  <script>
			    var map, marker;
				
			    map = new AMap.Map("mapContainer", {
			      resizeEnable: true,
			      center: [103.27064, 30.601103],
			      zoom: 10
			    });
			    
			    AMap.event.addDomListener(document.getElementById('addMarker'),'click', function() {
			      addMarker();
			    }, false);
			    
			     AMap.event.addDomListener(document.getElementById('clearMarker'),'click', function() {
			      marker && marker.setMap(null);
			    }, false); 
			
			    // 实例化点标记
			     
			     function addMarker() {	
			    	 $.getJSON('${ctx}/chart/mapapi.do',function displayDate(date)
					{
			    		  
			    		var point_list =eval(date) 
			    		{
			    			//alert(point_list[6].text.toString());
			    			
			    			for( i=0;i<point_list.length;i++ )
			    			{ 	
			    				if(!(point_list[i].geo_x==null)){
			    				var x=point_list[i].geo_x.toString();
			    				var y=point_list[i].geo_y.toString();
			    				marker = new AMap.Marker({
							        icon: "http://webapi.amap.com/images/marker_sprite.png",
							        title : point_list[i].text.toString(),
							        position: [x, y]
								});
							    marker.setMap(map);
			    				}
			    			}
			    	 	}
					}) 
			    }
			  </script>
		<!--End MapApi -->	
	 </div>

	<div class="copy_layout">
         <p>Copyright &copy; 2015.Company name All rights reserved 中国地质大学（武汉）</p>
	</div>
   </div>
      </div>
      </div>
      <!-- /#page-wrapper -->
   </div>
   <span id="sss"></span>
    <!-- /#wrapper -->



<!-- Metis Menu Plugin JavaScript -->

<script src="${ctx}/js/metisMenu.min.js"></script>
<script src="${ctx}/js/custom.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${ctx}/js/bootstrap-3.3.4.min.js"></script>
<script src="${ctx}/js/Chart.js"></script>
</body>
</html>