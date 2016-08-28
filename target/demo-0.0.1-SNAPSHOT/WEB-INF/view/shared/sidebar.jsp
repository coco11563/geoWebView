<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar-wrapper">
	<div class="page-sidebar navbar-collapse collapse">
		<!-- BEGIN SIDEBAR MENU -->
		<ul class="page-sidebar-menu">
			<li>
				<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
				<div class="sidebar-toggler hidden-phone"></div>
				<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
			</li>
			<li class="open">
				<a href="javascript:;">
				<i class="icon-cogs"></i> 
				<span class="title">测试</span>
				<span class="arrow open"></span>
				</a>
				<ul class="sub-menu" style="display: block;">
					<li>
						<a href="${ctx}/chart/map.do">
							地图
						</a>
					</li>
				</ul>
			</li>
		</ul>
		<!-- END SIDEBAR MENU -->
	</div>
</div>
<!-- END SIDEBAR -->
