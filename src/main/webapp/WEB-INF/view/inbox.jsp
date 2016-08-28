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
   <link href="${ctx}/assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
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
     <!--Begin Navigation -->
    	 <%@ include file="shared/pageHeader.jsp"%>
     <!--End Navigation -->
        <%@ include file="shared/nav_bar.jsp"%>
        <div id="page-wrapper">
        <div class="graphs">
	     <div class="xs">
  	     <h3>主题词管理</h3>
        <div class="col-md-8 inbox_right">
            <div class="mailbox-content">
               <div class="mail-toolbar clearfix">
			     <div class="float-left">
			       
			        <div class="dropdown">
			            <a href="#" title="" class="btn btn-default" data-toggle="dropdown" aria-expanded="false">
			                <i class="fa fa-cog icon_8"></i>
			                <i class="fa fa-chevron-down icon_8"></i>
			            <div class="ripple-wrapper"></div></a>
			            <ul class="dropdown-menu float-right">
			                <li>
			                    <a href="${ctx}/chart/tmap.do" title="">
			                        <i class="fa fa-pencil-square-o icon_9"></i>
			                       查看该日数据地图分布
			                    </a>
			                </li>
			                <li>
			                    <a href="${ctx}/chart/totalsum.do" title="">
			                        <i class="fa fa-download icon_9"></i>
			                        查看时间段数据分布
			                    </a>
			                </li>
							<li class="divider"></li>
							 <li>
			                    <a href="${ctx}/chart/validation.do" title="">
			                        <i class="fa fa-calendar icon_9"></i>
			                        增加主题词
			                    </a>
			                </li>
			            </ul>
			        </div>
			        <div class="clearfix"> </div>
			    </div>
			    <div class="float-right">
			    </div>
               </div>
               <div class="alert alert-info">
                           	 请选择一个时间进行概览，您可以在这里查询已有数据的关键字
                        </div>	
               			<label class="col-sm-2 control-label">选择一个时间 </label>
                        <input name="front_time" type="text" class="form-control1" id="ZTinput" readonly="readonly" required = "required" placeholder="请选择：时间段" data-date="2015-11-01" onchange = "returndata(this.value)"data-date-format="yyyy-mm-dd " data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                        	<script type="text/javascript" src="${ctx}/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
							<script type="text/javascript" src="${ctx}/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
                        <script type="text/javascript">
    					$(".form-control1").datetimepicker(
    						{format: 'yyyy-mm-dd',
    						language:  'zh-CN',
					        weekStart: 1,
					        todayBtn:  1,
							autoclose: 1,
							todayHighlight: 1,
							startView: 2,
							minView: 2,
							forceParse: 0});
						</script> 
                <table id = "table1" width="64%" class="table">
                  <tbody id = "tbody1">
                  
                  </tbody>
              </table>
          </div>
            </div>
<!--start实现从数据库中获取标签-->
<script type="text/javascript">
$.getJSON('${ctx}/chart/tablejson.do?date=2015-08-01',function displayDate(date)
{
	
	var record  =eval(date);
	var table = document.getElementById("tbody1");	 
	for(i = 0 ; i < record.length; i++){
		 var thead = document.createElement("tr");
			thead.className = "unread checked";
			var td1 = thead.insertCell(0);
			td1.className = "hidden-xs";
			var input = document.createElement("input");
			input.type = "checkbox";
			input.className = "checkbox";
			td1.appendChild(input);			
			
		 var td2 = thead.insertCell(1);
		 td2.className = "hidden-xs";
		 var ia = document.createElement("i");
		 ia.className  = "fa fa-star icon-state-warning" ; 
		 td2.appendChild(ia);


		 var td4 = thead.insertCell(2);
		 td4.className = "hidden-xs";
		 td4.innerText  = record[i].name;

		 var td5 = thead.insertCell(3);
		 td5.className = "hidden-xs";
		 td5.innerText  = record[i].value;
		 
		 var td6 = thead.insertCell(4);
		 td6.className = "hidden-xs";
		 td6.innerText  = "2015-08-01";
		 
		 table.appendChild(thead);
	}
});
</script>
<script type="text/javascript">
function returndata(value){
	$("#table1 tbody").html("");
$.getJSON('${ctx}/chart/tablejson.do?date='+value,function displayDate(date)
{
	
	var record  =eval(date);
	var table = document.getElementById("tbody1");
	for(i = 0 ; i < record.length; i++){
		 var thead = document.createElement("tr");
			thead.className = "unread checked";
			var td1 = thead.insertCell(0);
			td1.className = "hidden-xs";
			var input = document.createElement("input");
			input.type = "checkbox";
			input.className = "checkbox";
			td1.appendChild(input);			
			
		 var td2 = thead.insertCell(1);
		 td2.className = "hidden-xs";
		 var ia = document.createElement("i");
		 ia.className  = "fa fa-star icon-state-warning" ; 
		 td2.appendChild(ia);


		 var td4 = thead.insertCell(2);
		 td4.className = "hidden-xs";
		 td4.innerText  = record[i].name;

		 var td5 = thead.insertCell(3);
		 td5.className = "hidden-xs";
		 td5.innerText  = record[i].value;
		 
		 var td6 = thead.insertCell(4);
		 td6.className = "hidden-xs";
		 td6.innerText  = value;
		 
		 table.appendChild(thead);
	}
});}
</script>
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
