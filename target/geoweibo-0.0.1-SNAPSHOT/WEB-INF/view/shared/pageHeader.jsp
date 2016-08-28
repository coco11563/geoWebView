<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- BEGIN HEADER -->
   <head>
   <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
   <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
   <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
   </head> 
     <!--Begin Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand">数据可视化平台</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<%-- <li class="dropdown">
	        		<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-comments-o"></i><span class="badge">4</span></a>
	        		<ul class="dropdown-menu">
						<li class="dropdown-menu-header">
							<strong>Messages</strong>
							<div class="progress thin">
							  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
							    <span class="sr-only">40% Complete (success)</span>							  </div>
							</div>
						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/1.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
								<span class="label label-info">NEW</span>							</a>						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/2.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>
								<span class="label label-info">NEW</span>							</a>						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/3.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>							</a>						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/4.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>							</a>						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/5.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>							</a>						</li>
						<li class="avatar">
							<a href="#">
								<img src="${ctx}/assets/img/pic1.png" alt=""/>
								<div>New message</div>
								<small>1 minute ago</small>							</a>						</li>
						<li class="dropdown-menu-footer text-center">
							<a href="#">View all messages</a>						</li>	
	        		</ul>
	      		</li> --%>
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"><img src="${ctx}/assets/img/1.png" alt=""/></a>
	        		<ul class="dropdown-menu">
						<li class="dropdown-menu-header text-center">
						<li class="m_2"><a href="${ctx}/chart/loginout.do"><i class="fa fa-lock"></i>注销</a></li>	
	        		</ul>
	      		</li>
			</ul>
			<form class="navbar-form navbar-right">
            <!--   <input type="text" class="form-control" value="搜索..." onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search...';}"> -->
            </form>
            
        </nav>
        
        <!-- End Navigation -->
<!-- END HEADER -->
