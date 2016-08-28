<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]>  <html lang="en" class="no-js">     <![endif]-->
<html lang="en" class="no-js">
<head>
<title>新增主题词</title>
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
     <!--Begin Navigation -->
    	 <%@ include file="shared/pageHeader.jsp"%>
     <!--End Navigation -->
         <%@ include file="shared/nav_bar.jsp"%>
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">
  	    <h3>新增主题词</h3>
  	    <div class="well1 white">
        <form class="form-floating ng-pristine ng-invalid ng-invalid-required ng-valid-email ng-valid-url ng-valid-pattern" action="${ctx}/chart/stor" autocomplete="on" method="post">
          <fieldset>
            <div class="form-group">
              
        <table class="table table-bordered table-hover m10">
    <tr>
    <td>
     <div class="form-group">
              <label id ="03" for="levelonekeyword" data-icon="u" class="control-label">一级主题词</label>
              <input id="levelonekeyword" name="keyword1" value="事件" type="text" readonly="readonly" class="form-control1 ng-invalid ng-valid-email ng-invalid-required ng-touched" required="required" type="text" placeholder="请选择关键字">
            </div>
             </td>
        <td>
            <select id="01" multiple=""  name="parentid">
            </select>
        </td>
    </tr>
			  
		</table>  
         </div>
           
            <div class="form-group">
              <label for="leveltwo" data-icon="u" class="control-label">二级主题词</label>
              <input id="leveltwo" name="keyword" type="text" class="form-control1 ng-invalid ng-valid-email ng-invalid-required ng-touched" required="required" type="text" placeholder="请输入关键字">
            </div>
          <!--   <div class="form-group">
              <label for="reason" data-icon="u" class="control-label">创建理由</label>
              <input id = "reason" type="text" name="reason" class="form-control1 ng-invalid ng-invalid-required ng-touched" required="required"placeholder="请输入创建理由" >
            </div>
            <div class="form-group">
              <label for="information" data-icon = "u" class="control-label">备注信息</label>
              <input id = "information" type="text" name= "information" class="form-control1 ng-invalid ng-valid-url ng-invalid-required ng-touched" required="required"placeholder="请输入备注信息" >
            </div>
            <div class="form-group"> -->
               
				<button type="submit" class="btn btn-default" value="提 交"/>提 交</button>
              <button type="reset" class="btn btn-default">重 置</button>
            </div>
          </fieldset>
        </form>
      </div>
    </div>

    <div class="copy_layout">
      <p>Copyright &copy; 2015.Company name All rights reserved 中国地质大学（武汉）</p>
   </div>
   </div>
      </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
    <script type="text/javascript">
    
$.getJSON('${ctx}/chart/contentjson.do',function displayDate(date)
{
	var record  =eval(date)
	if ((navigator.userAgent.indexOf('MSIE') >= 0) && (navigator.userAgent.indexOf('Opera') < 0)){ {
	
		var j = 0;
		for(i = 0 ; i < record.length; i++)
			{
			var levelOneContent = document.createElement('option');
			levelOneContent.text = record[i].content;
			levelOneContent.level = record[i].level;
			levelOneContent.front_level_id = record[i].front_level_id;
			levelOneContent.id = record[i].demand_id;
			var levelOneSelect=document.getElementById('01');
			levelOneSelect.remove(j);
			if(levelOneContent.level == 0)
				{
					levelOneContent.onclick = function(){
					var levelonekeyword = document.getElementById('levelonekeyword');
					levelonekeyword.value = this.text;
				 /* 刷新 */
				}	
			
				levelOneSelect.add(levelOneContent,j);
				j++;
				}
			}
	 }}else
{ {	
	var j = 0;
	for(i = 0 ; i < record.length; i++)
		{
		var levelOneContent = document.createElement('option');
		levelOneContent.text = record[i].content;
		levelOneContent.level = record[i].level;
		levelOneContent.front_level_id = record[i].front_level_id;
		levelOneContent.id = record[i].demand_id;
		var levelOneSelect=document.getElementById('01');
		levelOneSelect.remove(j);
		if(levelOneContent.level == 0)
			{
				levelOneContent.onclick = function()
				{
				var levelonekeyword = document.getElementById('levelonekeyword');
				levelonekeyword.value = this.text;
				/* 刷新 */
				}	
		
			levelOneSelect.add(levelOneContent,j);
			j++;
			}
		}
 }}
	
});
</script>
<!-- Nav CSS -->
<link href="${ctx}/assets/css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="${ctx}/js/metisMenu.min.js"></script>
<script src="${ctx}/js/custom.js"></script>
</body>
</html>
	