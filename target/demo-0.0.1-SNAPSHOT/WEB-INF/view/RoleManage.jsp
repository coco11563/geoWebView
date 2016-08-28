<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]>  <html lang="en" class="no-js">     <![endif]-->
<html lang="en" class="no-js">
<head>
<title>RoleManage</title>
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
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">数据可视化平台</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
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
	      		</li>
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="${ctx}/assets/img/1.png" alt=""/><span class="badge">9</span></a>
	        		<ul class="dropdown-menu">
						<li class="dropdown-menu-header text-center">
							<strong>Account</strong>						</li>
						<li class="m_2"><a href="#"><i class="fa fa-bell-o"></i> Updates <span class="label label-info">42</span></a></li>
						<li class="m_2"><a href="#"><i class="fa fa-envelope-o"></i> Messages <span class="label label-success">42</span></a></li>
						<li class="m_2"><a href="#"><i class="fa fa-tasks"></i> Tasks <span class="label label-danger">42</span></a></li>
						<li><a href="#"><i class="fa fa-comments"></i> Comments <span class="label label-warning">42</span></a></li>
						<li class="dropdown-menu-header text-center">
							<strong>Settings</strong>						</li>
						<li class="m_2"><a href="#"><i class="fa fa-user"></i> Profile</a></li>
						<li class="m_2"><a href="#"><i class="fa fa-wrench"></i> Settings</a></li>
						<li class="m_2"><a href="#"><i class="fa fa-usd"></i> Payments <span class="label label-default">42</span></a></li>
						<li class="m_2"><a href="#"><i class="fa fa-file"></i> Projects <span class="label label-primary">42</span></a></li>
						<li class="divider"></li>
						<li class="m_2"><a href="#"><i class="fa fa-shield"></i> Lock Profile</a></li>
						<li class="m_2"><a href="#"><i class="fa fa-lock"></i> Logout</a></li>	
	        		</ul>
	      		</li>
			</ul>
			<form class="navbar-form navbar-right">
              <input type="text" class="form-control" value="Search..." onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search...';}">
            </form>
           <%@ include file="nav_bar.jsp"%>
        </nav>
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>角色管理</h3>
	            
             
         
           
  	<div class="bs-example4" data-example-id="contextual-table">
    <table class="table">
      <thead>
	   <button type="submit" class="btn btn-primary"><a href="addrole.html">添加角色</a></button>
        <tr>
		  <th>排序</th>
          <th>ID</th>
          <th>角色名称</th>
          <th>角色描述</th>
		  <th>状态</th>
          <th>管理</th>
        </tr>
      </thead>
      <tbody>
        <tr class="active">
		  <td><input class="input" type="text" value="1"></td>
          <th scope="row">1</th>
          <td>总编</td>
		  <td>总编</td>
          <td><i class="fa fa-check text-info icon_11"></i></td>
          <td>
		  <li>
			<a href="#" title="">
			<i class="fa fa-pencil-square-o icon_9"></i>
			Edit
			</a>
		</li>
		<li>
			<a href="#"  title="">
			<i class="fa fa-times" icon_9=""></i>
			Delete
		</a>
		</li>
		  </td>
          </tr>
        <tr>
		  <td><input class="input" type="text" value="1"></td>
          <th scope="row">2</th>
          <td>编辑</td>
		  <td>编辑</td>
          <td><i class="fa fa-check text-info icon_11"></i></td>
          <td>
		  <li>
			<a href="#" title="">
			<i class="fa fa-pencil-square-o icon_9"></i>
			Edit
			</a>
		</li>
		<li>
			<a href="#"  title="">
			<i class="fa fa-times" icon_9=""></i>
			Delete
		</a>
		</li>
		  </td>
        </tr>
        <tr class="success">
		  <td><input class="input" type="text" value="1"></td>
          <th scope="row">3</th>
          <td>运营总监</td>
		  <td>运营总监</td> 
          <td><i class="fa fa-check text-info icon_11"></i></td>
          <td>
		  <li>
			<a href="#" title="">
			<i class="fa fa-pencil-square-o icon_9"></i>
			Edit
			</a>
		</li>
		<li>
			<a href="#"  title="">
			<i class="fa fa-times" icon_9=""></i>
			Delete
		</a>
		</li>
		  </td>
        </tr>
        <tr>
		  <td><input class="input" type="text" value="1"></td>
          <th scope="row">4</th>
          <td>发布人员</td>
		  <td>发布人员</td>
          <td><i class="fa fa-check text-info icon_11"></i></td>
          <td>
		  <li>
			<a href="#" title="">
			<i class="fa fa-pencil-square-o icon_9"></i>
			Edit
			</a>
		</li>
		<li>
			<a href="#"  title="">
			<i class="fa fa-times" icon_9=""></i>
			Delete
		</a>
		</li>
		  </td>
        </tr>
        <tr class="info">
		  <td><input class="input" type="text" value="1"></td>
          <th scope="row">5</th>
          <td>站点管理员</td>
		  <td>站点管理员</td>
          <td><i class="fa fa-check text-info icon_11"></i></td>
          <td>
		  <li>
			<a href="#" title="">
			<i class="fa fa-pencil-square-o icon_9"></i>
			Edit
			</a>
		</li>
		<li>
			<a href="#"  title="">
			<i class="fa fa-times" icon_9=""></i>
			Delete
		</a>
		</li>
		  </td>
        </tr>
        <tr>
		  <td><input class="input" type="text" value="1"></td>
          <th scope="row">6</th>
          <td>超级管理员</td>
          <td>超级管理员</td>
		  <td><i class="fa fa-check text-info icon_11"></i></td>
          <td>
		  		  <li>
			<a href="#" title="">
			<i class="fa fa-pencil-square-o icon_9"></i>
			Edit
			</a>
		</li>
		<li>
			<a href="#"  title="">
			<i class="fa fa-times" icon_9=""></i>
			Delete
		</a>
		</li>
		  </td>
        </tr>
        
      </tbody>
    </table>
	<button type="button" class="btn btn-sm btn-danger">排序</button>

   </div>
   <!--div class="panel-body1">
   <table class="table">
     <thead>
        <tr>
          <th>#</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Username</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">1</th>
          <td>Mark</td>
          <td>Otto</td>
          <td>@mdo</td>
        </tr>
        <tr>
          <th scope="row">2</th>
          <td>Jacob</td>
          <td>Thornton</td>
          <td>@fat</td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td>Larry</td>
          <td>the Bird</td>
          <td>@twitter</td>
        </tr>
      </tbody>
    </table>
    </div>
    <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
				<div class="panel-body no-padding">
					<table class="table table-striped">
						<thead>
							<tr class="warning">
								<th>#</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Username</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@fat</td>
							</tr>
							<tr>
								<td>3</td>
								<td>Larry</td>
								<td>the Bird</td>
								<td>@twitter</td>
							</tr>
						</tbody>
					</table>
				</div>
	</div>
	<div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
				<div class="panel-heading">
					<h2>Warning Table</h2>
					<div class="panel-ctrls" data-actions-container="" data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}"><span class="button-icon has-bg"><i class="ti ti-angle-down"></i></span></div>
				</div>
				<div class="panel-body no-padding" style="display: block;">
					<table class="table table-striped">
						<thead>
							<tr class="warning">
								<th>#</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Username</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@fat</td>
							</tr>
							<tr>
								<td>3</td>
								<td>Larry</td>
								<td>the Bird</td>
								<td>@twitter</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
	<div class="bs-example4" data-example-id="simple-responsive-table">
    <div class="table-responsive">
      <table class="table">
        <thead>
          <tr>
            <th>#</th>
            <th>Table heading</th>
            <th>Table heading</th>
            <th>Table heading</th>
            <th>Table heading</th>
            <th>Table heading</th>
            <th>Table heading</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
          </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->
    <!--div class="table-responsive">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>#</th>
            <th>Table heading</th>
            <th>Table heading</th>
            <th>Table heading</th>
            <th>Table heading</th>
            <th>Table heading</th>
            <th>Table heading</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
            <td>Table cell</td>
          </tr>
        </tbody>
      </table!-->
    </div><!-- /.table-responsive -->
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
<script src="${ctx}/js/jquery-1.10.2.js"></script>
    <script src="${ctx}/js/jquery-ui-1.10.3.js"></script>
    <script src="${ctx}/js/bootstrap.js"></script>

    <script src="${ctx}/js/library/jquery.collapsible.min.js"></script>
    <script src="${ctx}/js/library/jquery.mCustomScrollbar.min.js"></script>
    <script src="${ctx}/js/library/jquery.mousewheel.min.js"></script>
    <script src="${ctx}/js/library/jquery.uniform.min.js"></script>

   
    <script src="${ctx}/js/library/jquery.sparkline.min.js"></script>
    <script src="${ctx}/js/library/chosen.jquery.min.js"></script>
    <script src="${ctx}/js/library/jquery.easytabs.js"></script>
    <script src="${ctx}/js/library/flot/excanvas.min.js"></script>
    <script src="${ctx}/js/library/flot/jquery.flot.js"></script>
    <script src="${ctx}/js/library/flot/jquery.flot.pie.js"></script>
    <script src="${ctx}/js/library/flot/jquery.flot.selection.js"></script>
    <script src="${ctx}/js/library/flot/jquery.flot.resize.js"></script>
    <script src="${ctx}/js/library/flot/jquery.flot.orderBars.js"></script>
    <script src="${ctx}/js/library/maps/jquery.vmap.js"></script>
    <script src="${ctx}/js/library/maps/maps/jquery.vmap.world.js"></script>
    <script src="${ctx}/js/library/maps/data/jquery.vmap.sampledata.js"></script>
    <script src="${ctx}/js/library/jquery.autosize-min.js"></script>
    <script src="${ctx}/js/library/charCount.js"></script>
    <script src="${ctx}/js/library/jquery.minicolors.js"></script>
    <script src="${ctx}/js/library/jquery.tagsinput.js"></script>
    <script src="${ctx}/js/library/fullcalendar.min.js"></script>
    <script src="${ctx}/js/library/footable/footable.js"></script>
    <script src="${ctx}/js/library/footable/data-generator.js"></script>

    <script src="${ctx}/js/library/bootstrap-datetimepicker.js"></script>
    <script src="${ctx}/js/library/bootstrap-timepicker.js"></script>
    <script src="${ctx}/js/library/bootstrap-datepicker.js"></script>
    <script src="${ctx}/js/library/bootstrap-fileupload.js"></script>
    <script src="${ctx}/js/library/jquery.inputmask.bundle.js"></script>

    <script src="${ctx}/js/library/jquery.dataTables.js"></script>

    <script src="${ctx}/js/flatpoint_core.js"></script>

    <script src="${ctx}/js/datatables.js"></script>

</body>
</html>
