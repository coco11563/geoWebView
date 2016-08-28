<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="${ctx}/assets/css/bootstrap-3.3.4.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="${ctx}/assets/css/style.css" rel='stylesheet' type='text/css' />
<link href="${ctx}/assets/css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="${ctx}/js/jquery-1.11.2.min.js"></script>
<!----webfonts--->
<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="${ctx}/resource/js/bootstrap-3.3.4.min.js"></script>
</head>
<body>
<div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="${ctx}/chart/index.do"><i class="fa fa-dashboard fa-fw nav_icon"></i>登录</a>
                        </li>
                        <!--li>
                            <a href="#"><i class="fa fa-laptop nav_icon"></i>Layouts<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="grids.jsp">Grid System</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
						<!-- 原Menu Levels -->
                        <li>
                            <a href=";"><i class="fa fa-indent nav_icon"></i>主题词统计<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
							<li>
                                    <a href="${ctx}/chart/themesum.do">主题词统计图</a>
                                </li>
                                <li>
                                    <a href="${ctx}/chart/tmap.do">主题词地图</a>
                                </li>
       
                            <!-- /.nav-second-level -->
                       </ul>
					    </li>
						
						<!-- 原Mailbox -->
                        <li>
                            <a href=";"><i class="fa fa-check-square-o nav_icon"></i>微博统计<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="${ctx}/chart/datesum.do">单日统计</a>
                                </li>
                                <li>
                                    <a href="${ctx}/chart/totalsum.do">时间段统计</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <!--li>
                            <a href="widgets.jsp"><i class="fa fa-flask nav_icon"></i>Widgets</a>
                        </li!-->
						<!-- 原Forms -->
                         <li>
                            <a href=";"><i class="fa fa-envelope nav_icon"></i>数据管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="${ctx}/chart/inbox.do">主题词数据管理<span class="fa arrow"></span></a>
									<ul class="nav nav-third-level">
									<li>
                                    <a href="${ctx}/chart/validation.do">新增主题词</a>
									</li>
                                	<li>
                                    <a href="${ctx}/chart/inbox.do">主题词管理</a>
									</li>
								</ul>
                               </li>
                                <li>
                                    <a href="${ctx}/chart/grids.do">Token数据管理</a>
                                </li>
								<li>
                                    <a href="${ctx}/chart/RoleManage.do">角色管理</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <!--li>
                            <a href="#"><i class="fa fa-table nav_icon"></i>Tables<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="basic_tables.jsp">Basic Tables</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        
						<!-- 原CSS -->
						<%-- <li>
                            <a href="${ctx}/chart/example.do"><i class="fa fa-sitemap fa-fw nav_icon"></i>用户示例<span class="fa arrow"></span></a>
              
                          
                            <!-- /.nav-second-level -->
                        </li> --%>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw nav_icon"></i>申请<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="${ctx}/chart/forms.">账号申请</a>
                                </li>
                                <li>
                                    <a href="${ctx}/chart/compose.do">Token申请</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
<link href="${ctx}/assets/css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="${ctx}/js/metisMenu.min.js"></script>
<script src="${ctx}/js/custom.js"></script>
</body>
</html>