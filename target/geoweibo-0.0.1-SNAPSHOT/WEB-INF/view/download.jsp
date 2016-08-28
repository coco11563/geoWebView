<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]>  <html lang="en" class="no-js">     <![endif]-->
<html lang="en" class="no-js">
<head>
<title>结果下载</title>
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
   <!----webfonts--->
   <link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
   <!---//webfonts--->  
<!-- jQuery -->
<script src="${ctx}/js/jquery.min.js"></script>
<script src="${ctx}/js/jquery-1.11.1.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${ctx}/js/bootstrap.min.js"></script>

</head>
<body>
<div id="wrapper">
     <!--Begin Navigation -->
    	 <%@ include file="shared/pageHeader.jsp"%>
     <!--End Navigation -->
     	<%@ include file="shared/nav_bar.jsp"%>
        <div id="page-wrapper"> 
        <div class="graphs">
	     <div class="xs">
  	         <div class="col-md-8 inbox_right"><div class="Compose-Message"><div class="panel panel-default">
  	         <h3></h3>
  	           <div class="panel-heading">
                        聚类结果下载
               </div>
               
                    <div class="panel-body" >
                    
                        <div class="alert alert-info">
                            可以根据日期选择数据库中已为您计算好的各城市微博聚类数据，地区可以根据下拉框选择或者手动输入
                        </div>						
						<hr>
						<label class="col-sm-2 control-label">选择时间 </label>
						<div class="input-group date form_date col-md-5" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd" >
			                   <input id="date1" name="date1" type="text" class="form-control control3"  required = "required" placeholder="请选择：日期" onchange="returndata(this.value)">
			                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
			            </div>
	                        <!-- <input name="date1" type="text" class="form-control1" id="date1" readonly="readonly" required = "required" placeholder="请选择：日期" data-date="" data-date-format="yyyy-mm-dd " data-link-field="dtp_input2" data-link-format="yyyy-mm-dd" onchange="returndata(this.value)"> -->
	                        	
                       
                        <label class="col-sm-2 control-label">可选地区 </label>
						<select id="city1" runat="server" style=" width:200px;" onchange="setcity1(this)"></select>
                        <input id="cityname1"  name ="cityname1" type="text" class="form-control1 control3"  placeholder="请输入：城市名" >
                        <script type="text/javascript">
						function returndata(value){
								 $.getJSON("${ctx}/chart/dbresult.do?date="+value,function displayDate(date)
							    {
									var record  =eval(date)
							    	 {
										if(record.length==0){alert("抱歉，日期"+value+"无数据，请重新选择")}
							    		var a = "--请选择城市--";
						        		record.unshift(a);
							    		var ddldate = document.getElementById("city1");
							    		ddldate.options.length = 0;
										for(var i =0;i<record.length; i++)
									    {
									        var option = document.createElement("option");
									        option.appendChild(document.createTextNode(record[i]));
									        option.value = record[i];
									        option.onclick=function(){document.getElementById("cityname1").value = obj.value;};
									        ddldate.appendChild(option);
									    }
							    	 }
							    });
						    }
						  function setcity1(obj)
						  {
							  if(!(obj.value=="--请选择城市--")){
							  document.getElementById("cityname1").value = obj.value; 
							  }
						  }
						</script>	 
                      </hr>
                       <button class="btn btn-default" onclick="dbscan()">下 载</botton>
                       <script type="text/javascript">
						function dbscan(){
							var date = document.getElementById("date1").value;
							var cityname1 = document.getElementById("cityname1").value;
							var url = "http://192.168.1.181:8080/geoweiboback/download?filepath=dbscan/"+date+"&filename="+cityname1+".txt"
							window.open(url);
						}
						</script>
                    </div>
                     
                 </div>
              </div>
         </div>
         <div class="col-md-8 inbox_right"><div class="Compose-Message"><div class="panel panel-default">
  	         <h3></h3>
  	           <div class="panel-heading">
                        关键词结果下载
               </div>
              
                    <div class="panel-body" >
                    
                        <div class="alert alert-info">
                            提供您在计算申请页面申请过的数据下载，若无可选项，请先前去计算申请中提交计算请求
                        </div>						
						<hr>
                       <label class="col-sm-2 control-label">关键字</label>
                        <select id="key" runat="server" style=" width:200px;"onchange="setkey(this)" ></select>
                        <input  id = "keyword" type="text" name="keyword" placeholder="请输入：关键字" class="form-control1 control3" >
                        
                        <label class="col-sm-2 control-label">可选地区 </label>
						<select id="city" runat="server" style=" width:200px;" onchange="setcityname(this)"></select>
                        <input id="cityname"  name ="cityname" type="text"  class="form-control1 control3"  placeholder="请输入：城市名"  >	
                        
                        <label class="col-sm-2 control-label">可选时间段 </label>
						<select id="date" runat="server" style="width:220px;" multiple=""></select>
			            
			            <div class="input-group date form_date col-md-5" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd" >
			                    <input id="adate"  name ="adate" type="text"  class="form-control control3"  placeholder="请输入：日期" required = "required">
			                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
								<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
			            </div>
			            <script type="text/javascript" src="${ctx}/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
						<script type="text/javascript" src="${ctx}/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
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
                      </hr>
                       <button class="btn btn-default" onclick="keydownload()">下 载</botton>
                       <script type="text/javascript">
                       function keydownload(){
							var date1 = document.getElementById("adate").value;
							var cityname = document.getElementById("cityname").value;
							var keyword = document.getElementById("keyword").value;
							
							$.getJSON("${ctx}/chart/timejson.do?keyword="+keyword+"&cityname="+cityname,function displayDate(date)
						    {
								var record  =eval(date)
						    	 {
									var demand_id = record[0].demand_id;
									var url = "http://192.168.1.181:8080/geoweiboback/download?filepath=key/"+demand_id+"/"+date1+"&filename="+cityname+".json";
								 	window.open(url);
						    	 }
						    });
						}
						</script>
                    </div>
                    
                 </div>
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
<script type="text/javascript">
	$.getJSON('${ctx}/chart/requestjson.do',function displayDate(date)
    {
    	var record  =eval(date)
    	 {
    		
    		if(record.length==0){
    			var ddlkeyword = document.getElementById("key");
    			var option1 = document.createElement("option");
    	        option1.appendChild(document.createTextNode("--请先请求数据--"));
    	        option1.value = "--请先请求数据--";
    	        ddlkeyword.appendChild(option1);

    			var ddlcity = document.getElementById("city");
    	        var option2 = document.createElement("option");
    	        option2.appendChild(document.createTextNode("--请先请求数据--"));
    	        option2.value = "--请先请求数据--";
    	        ddlcity.appendChild(option2);
    		}else{
    			var a = JSON.parse("{\"demand_id\":null,\"content\":\"--请选择关键词--\",\"level\":0,\"front_level_id\":null,\"create_user\":null,\"cityname\":\"--请选择城市--\",\"front_time\":null,\"behind_time\":null}")
        		record.unshift(a);
		    	for(var i =0;i<record.length; i++)
		    	{
		    		var ddlkeyword = document.getElementById("key");
		    		var option = document.createElement("option");
		    		option.appendChild(document.createTextNode(record[i].content));
		    		option.value = record[i].content;
		    		ddlkeyword.appendChild(option);
		   		}
		    	var ddlcity = document.getElementById("city");
		    	var option1 = document.createElement("option");
		    	option1.appendChild(document.createTextNode("--请选择城市--"));
		    	option1.value = "--请选择城市--";
		    	ddlcity.appendChild(option1);
		    }
    	 }
    });
 </script>
 <script type="text/javascript">
  function setkey(obj){
	  if(!(obj.value=="--请选择关键词--")){
    	document.getElementById("keyword").value = obj.value;
	  }
	  $.getJSON("${ctx}/chart/cityjson.do?keyword="+document.getElementById("keyword").value+"&cityname="+document.getElementById("keyword").value,function displayDate(date)
	   {
		  var record  =eval(date)
	   	 {
			  var a = JSON.parse("{\"demand_id\":null,\"content\":\"--请选择关键词--\",\"level\":0,\"front_level_id\":null,\"create_user\":null,\"cityname\":\"--请选择城市--\",\"front_time\":null,\"behind_time\":null}")
      			record.unshift(a);
			  var ddlcity = document.getElementById("city");
			  ddlcity.options.length = 0;
		    	for(var i =0;i<record.length; i++)
		   		{
		    		var option = document.createElement("option");
		    		option.appendChild(document.createTextNode(record[i].cityname));
		    		option.value = record[i].cityname;
		    		ddlcity.appendChild(option);
		    	}
	    }
	   });
    }
  </script>
  <script type="text/javascript">
  function setcityname(obj){
	  if(!(obj.value=="--请选择城市--")){
	  	document.getElementById("cityname").value = obj.value;
	  }
		 $.getJSON("${ctx}/chart/timejson.do?keyword="+document.getElementById("keyword").value+"&cityname="+document.getElementById("cityname").value,function displayDate(date)
	    {
			var record  =eval(date)
	    	 {
	    		var ddldate = document.getElementById("date");
	    		ddldate.options.length = 0;
	    		if(record.length==0){alert("未计算\""+document.getElementById("keyword").value+"\"" + "在"+document.getElementById("cityname").value+"的数据");}
	    		for(var i =0;i<record.length; i++)
			    {
			        var option = document.createElement("option");
			        option.appendChild(document.createTextNode(record[i].front_time+"至"+record[i].behind_time));
			        option.value = record[i].front_time+"至"+record[i].behind_time;
			        //alert(option.value);
			        ddldate.appendChild(option);
			    }
	    	 }
	    });
    }
</script>
</body>
</html>