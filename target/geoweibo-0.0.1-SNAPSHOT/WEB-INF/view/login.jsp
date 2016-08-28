<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]>  <html lang="en" class="no-js">     <![endif]-->
<html lang="en" class="no-js">
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Login and Registration</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="${ctx}/assets/plugins/login/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="${ctx}/assets/plugins/login/css/style1.css" />
 		<link rel="stylesheet" type="text/css" href="${ctx}/assets/plugins/login/css/animate-custom.css" />
 		
 		
    </head>
    <body>
        <div class="container">
            <!-- Codrops top bar -->
            <header>
            </header>
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                    	<!--Begin login Form-->
                        <div id="login" class="animate form">
                        <!-- 这里和下面的注册表单加了一个名字name属性 -->
                            <form name="loginform">
                                <h1>登陆</h1>
                                <p> 
                                    <label for="username" class="uname" data-icon="u"> 邮箱或用户名登陆 </label>
                                    <input id="login_username"  name="username"  required="required" type="text" placeholder="邮箱/用户名" />
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> 密码 </label>
                                    <input id="login_password" name="password"  required="required" type="password" placeholder="****"  />
                                </p>
                                <label id="show_error"></label>
                                	<!--记住密码 -->
<!--                                 <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">记住密码</label>
								</p> --> 
								<!--记住密码 -->
                                <p class="login button"> 
                                    <input type="submit" value="登陆" onClick="sub()"/>
								</p>
								<!-- 忘记密码 -->
								 <p class="change_link">
                                    <!-- <a href="#toregister" class="to_register dd">忘记密码</a> -->
                                <!-- 忘记密码 -->
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    									还没有账号 ?
									<a href="#toregister" class="to_register">现在注册</a>
								</p> 
								
                            </form>
                        </div>
                        <!--End login Form-->
                        <!--Begin regiset Form-->
						<div id="register" class="animate form">
                            <form name="registform">
                                <h1> 注册 </h1>
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">用户名</label>
                                    <lable id="regist_username_error" class="error"></lable>
                                    <input id="usernamesignup" name="username" onblur="check_username(this.value)"required="required" type="text" placeholder="username" validation="nameAvailable" />
                                    <span class='availability_status'></span>
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > 邮箱</label>
                                    <label id="regist_email_error" class="error"></label>
                                    <input id="emailsignup" name="email" onblur="check_email(this.value)" required="required" type="email" placeholder="xxx@mail.com" validation="email" />
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">密码 </label>
                                    <input id="passwordsignup" name="password"  required="required" type="password" placeholder="******" validation="password" />
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">确认密码</label>
                                    <label id="regist_password_error" class="error"></label>
                                    <input id="passwordsignup_confirm" name="rpassword" required="required" type="password" placeholder="******" validation="rpassword" />
                                </p>  
                                <p class="signin button"> 
									<input type="submit" value="注 册" onClick="sinup_check()"/>
								</p>
                                <p class="change_link">
									已经有账号 ?
									<a href="#tologin" class="to_register">现在登陆</a>
								</p>
                            </form>
                        </div>
						<!--End regiset Form-->
                    </div>
                </div>  
            </section>
        </div>
            <!-- ajax -->

	<script type="text/javascript">
	    function createXMR(){
	    	var xmlhttp;
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
				xmlhttp = new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("show_error").innerHTML = xmlhttp.responseText;
				}
			}
			return xmlhttp;
	    }
		function sub(){
			var username=document.getElementById("login_username").value;
			var password=document.getElementById("login_password").value;
			var xmr=createXMR();
			xmr.onreadystatechange = function() {
				if (xmr.readyState == 4) {
					if (xmr.status == 200) {
						var flag = xmr.responseText;
			
						if (flag == "fail") {
							document.getElementById("show_error").innerHTML = "<font color=red>用户名或登陆密码错误</font>";
						} else if (flag == "success") {
							document.getElementById("show_error").innerHTML = "正在跳转...";
							var f=document.forms[0];
							<!--这里改了-->
							f.action="${ctx}/chart/login";
							f.submit();
						}
					}
				}
			};
			xmr.open("POST", "${ctx}/chart/login_before?username=" + username+"&password="+password, false);
			xmr.send();
		}
		function check_username(value) {
			var xhr1 = createXMR();
			xhr1.onreadystatechange = function() {
				if (xhr1.readyState == 4) {
					if (xhr1.status == 200) {
						var flag = xhr1.responseText;
						
						if (flag == "fail") {
							document.getElementById("regist_username_error").innerHTML = "<font color=red>该用户名已经被占用</font>";
						} else if (flag == "success") {
							document.getElementById("regist_username_error").innerHTML = "<font color=red>该用户名可以使用</font>";
						}
					}
				}

			};
			xhr1.open("POST", "${ctx}/chart/check?data=" + value, true);
			xhr1.send();
		}
		function check_email(value) {
			var re_email=new RegExp("\\w+@\\w+\\.\\w+\\.?\\w*");
            if(re_email.test(value)){
			var xhr2 = createXMR();
			xhr2.onreadystatechange = function() {
				if (xhr2.readyState == 4) {
					if (xhr2.status == 200) {
						var flag = xhr2.responseText;
						if (flag == "fail") {
							document.getElementById("regist_email_error").innerHTML = "<font color=red>该邮箱已经被注册</font>";
						} else if (flag == "success") {
							document.getElementById("regist_email_error").innerHTML = "<font color=red>该邮箱可以使用</font>";
						}
					}
				}
			};
			xhr2.open("POST", "${ctx}/chart/check?data=" + value, true);
			xhr2.send();
            }
            else{
            	document.getElementById("regist_email_error").innerHTML = "<font color=red>请填写正确的邮箱格式</font>";
            }
		}
		<!--这里改了-->
 		function sinup_check(){
 			 var o=document.getElementById("passwordsignup").value;
 			 var p=document.getElementById("passwordsignup_confirm").value;
 				 if(o!=p){

 					document.getElementById("regist_password_error").innerHTML="<font color=red>两次输入密码不一致</font>";
 				}else{
 					var name=document.getElementById("usernamesignup").value;
 					var email=document.getElementById("emailsignup").value;
 					var f=document.forms[1];
 					f.action="${ctx}/chart/regist?username="+name+"password="+o+"email"+email;
 					f.submit();
 				}
 			}
 			
	</script>

	<!-- ajax -->
    </body>
</html>