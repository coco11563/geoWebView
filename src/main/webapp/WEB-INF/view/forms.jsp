<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]>  <html lang="en" class="no-js">     <![endif]-->
<html lang="en" class="no-js">
<head>
<title>账号申请</title>
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
<script type="text/javascript">
function validate_email(field,alerttxt)
{
with (field)
{
apos=value.indexOf("@")
dotpos=value.lastIndexOf(".")
if (apos<1||dotpos-apos<2) 
  {alert(alerttxt);return false}
else {return true}
}
}

function validate_form(thisform)
{
with (thisform)
{
if (validate_email(email,"Not a valid e-mail address!")==false)
  {email.focus();return false}
}
}
</script>
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
  	       <h3>账号申请</h3>
								
								</form>
         </div>
        </div>
  <div class="panel-body">
					<form role="form" class="form-horizontal">
						<div class="form-group">
							<label class="col-md-2 control-label">用户名</label>
							<div class="col-md-8">
								<div class="input-group">							
									<!--<span class="input-group-addon">
										<i class="fa fa-envelope-o"></i> 
									</span> -->
									<input type="text" class="form-control1" placeholder="用户名">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">密码</label>
							<div class="col-md-8">
								<div class="input-group">
									<span class="input-group-addon">
										<i class="fa fa-key"></i>
									</span>
									<input type="password" class="form-control1" id="exampleInputPassword1" placeholder="密码">
								</div>
							</div>
						</div>
						<div class="form-group has-error">
							<label class="col-md-2 control-label">确认密码</label>
							<div class="col-md-8">
								<div class="input-group input-icon right">
									<span class="input-group-addon">
										<i class="fa fa-key"></i>
									</span>
									<input type="password" class="form-control1" placeholder="以字母或数字组成，不少于6位的密码...">
								</div>
							</div>
							<div class="col-sm-2">
								<p class="help-block">密码不一致!</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">Email地址</label>
							<div class="col-md-8">
								<div class="input-group input-icon right">
									<span class="input-group-addon">
										<i class="fa fa-envelope-o"></i>
									</span>
									<form action="submitpage.htm"onsubmit="return validate_form(this);" method="post">
                                    Email: <input type="text" name="email" size="30">
                                    <input id="email" class="form-control1" type="submit" value="Submit" placeholder="Email地址"> 
                                    </form>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">联系电话</label>
							<div class="col-md-8">
								<div class="input-group input-icon right">
									<input type="password" class="form-control1" placeholder="联系电话">
								</div>
							</div>
							<div class="col-sm-2">
								<p class="help-block">获取验证码!</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">输入验证码</label>
							<div class="col-md-8">
								<div class="input-icon right spinner">
									<i class="fa fa-fw fa-spin fa-spinner"></i>
									<input id="email" class="form-control1" type="text" placeholder="输入验证码">
								</div>
							</div>
							<div class="col-sm-2">
								<p class="help-block">验证码获取中...</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">真实姓名</label>
							<div class="col-md-8">
								<div class="input-group input-icon right">
									<input type="password" class="form-control1" placeholder="真实姓名">
								</div>
							</div>
						</div>
						<div class="form-group">
									<label class="col-sm-2 control-label">所属角色</label>
									<div class="col-sm-8">
										<select multiple="" class="form-control1">
											<option>超级管理员</option>
											<option>用户</option>
											<option>编辑</option>
											<option>运行总监</option>
											<option>发布人员</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="txtarea1" class="col-sm-2 control-label">角色描述</label>
									<div class="col-sm-8"><textarea name="txtarea1" id="txtarea1" cols="50" rows="4" class="form-control1"></textarea></div>
								</div>
      <div class="form-group">
        <label for="exampleInputFile">头像选择</label>
        <input type="file" id="exampleInputFile">
        <p class="help-block">请在这里选择您的个性化头像</p>
      </div>
      <div class="panel-footer">
		<div class="row">
			<div class="col-sm-8 col-sm-offset-2">
				<button class="btn-success btn">
				<div align="center">保存</div>
				</button>
				<button class="btn-default btn">
				<div align="center">取消</div>
				</button>
				<button class="btn-inverse btn">重置</button>
			</div>
		</div>
	 </div>
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
<!-- Nav CSS -->
<link href="${ctx}/assets/css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="${ctx}/js/metisMenu.min.js"></script>
<script src="${ctx}/js/custom.js"></script>
</body>
</html>
