<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]>  <html lang="en" class="no-js">     <![endif]-->
<html lang="en" class="no-js">
<head>
<title>Token数据管理</title>
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
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE4 {
	color: #03515d;
	font-size: 12px;
}
-->
</style>

<script>
var  highlightcolor='#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
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
	   <div class="md">
		 <h3>新浪Token数据管理</h3>
		 <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="${ctx}/assets/img/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="${ctx}/assets/img/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="${ctx}/assets/img/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：系统数据管理模块>Token数据管理</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"><table width="87%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center">
                      <input type="checkbox" name="checkbox62" value="checkbox" />
                    </div></td>
                    <td class="STYLE1"><div align="center"><a href="#" >全选</a></div></td>
                  </tr>
                </table></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="${ctx}/assets/img/22.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center"><a href="#" >新增</a></div></td>
                  </tr>
                </table></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="${ctx}/assets/img/33.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center"><a href="#" >修改</a></div></td>
                  </tr>
                </table></td>
                <td width="52"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="${ctx}/assets/img/11.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center"><a href="#" >删除</a></div></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="${ctx}/assets/img/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="${ctx}/assets/img/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onMouseOver="changeto()"  onmouseout="changeback()">
          <tr>
            <td width="3%" height="22" background="${ctx}/assets/img/bg.gif" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox" value="checkbox" />
            </div></td>
            <td width="3%" height="22" background="${ctx}/assets/img/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">序号</span></div></td>
            <td width="12%" height="22" background="${ctx}/assets/img/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">Token序号</span></div></td>
            <td width="14%" height="22" background="${ctx}/assets/img/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">创建时间</span></div></td>
            <td width="18%" background="${ctx}/assets/img/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">用户名</span></div></td>
            <td width="23%" height="22" background="${ctx}/assets/img/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">状态</span></div></td>
            <td width="15%" height="22" background="${ctx}/assets/img/bg.gif" bgcolor="#FFFFFF" class="STYLE1"><div align="center">基本操作</div></td>
          </tr>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox2" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">01</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">happy</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">可用</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${ctx}/assets/img/edt.gif" width="16" height="16" /><a href="#">编辑</a>&nbsp; &nbsp;<img src="${ctx}/assets/img/del.gif" width="16" height="16" /><a href="#">删除</a></span></div></td>
          </tr>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox3" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">02</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">happy</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">可用</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${ctx}/assets/img/edt.gif" width="16" height="16" /><a href="#">编辑</a>&nbsp; &nbsp;<img src="${ctx}/assets/img/del.gif" width="16" height="16" /><a href="#">删除</a></span></div></td>
          </tr>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox4" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">03</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">happy</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">可用</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${ctx}/assets/img/edt.gif" width="16" height="16" /><a href="#">编辑</a>&nbsp; &nbsp;<img src="${ctx}/assets/img/del.gif" width="16" height="16" /><a href="#">删除</a></span></div></td>
          </tr>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox5" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">04</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">happy</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">可用</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${ctx}/assets/img/edt.gif" width="16" height="16" /><a href="#">编辑</a>&nbsp; &nbsp;<a href="#"><img src="${ctx}/assets/img/del.gif" width="16" height="16" />删除</a></span></div></td>
          </tr>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox6" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">05</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">kk</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">可用</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${ctx}/assets/img/edt.gif" width="16" height="16" /><a href="#">编辑</a>&nbsp; &nbsp;<img src="${ctx}/assets/img/del.gif" width="16" height="16" /><a href="#">删除</a></span></div></td>
          </tr>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox7" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">06</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">小小</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">不可用</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${ctx}/assets/img/edt.gif" width="16" height="16" /><a href="#">编辑</a>&nbsp; &nbsp;<img src="${ctx}/assets/img/del.gif" width="16" height="16" /><a href="#">删除</a></span></div></td>
          </tr>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox8" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">07</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">天天</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">不可用</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${ctx}/assets/img/edt.gif" width="16" height="16" /><a href="#">编辑</a>&nbsp; &nbsp;<img src="${ctx}/assets/img/del.gif" width="16" height="16" /><a href="#">删除</a></span></div></td>
          </tr>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox9" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">08</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">等等</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">不可用</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${ctx}/assets/img/edt.gif" width="16" height="16" /><a href="#">编辑</a>&nbsp; &nbsp;<img src="${ctx}/assets/img/del.gif" width="16" height="16" /><a href="#">删除</a></span></div></td>
          </tr>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox10" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">09</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">happy</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">可用</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${ctx}/assets/img/edt.gif" width="16" height="16" /><a href="#">编辑</a>&nbsp; &nbsp;<img src="${ctx}/assets/img/del.gif" width="16" height="16" /><a href="#">删除</a></span></div></td>
          </tr>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox11" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">10</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">happy</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">不可用</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${ctx}/assets/img/edt.gif" width="16" height="16" /><a href="#">编辑</a>&nbsp; &nbsp;<a href="#"><img src="${ctx}/assets/img/del.gif" width="16" height="16" />删除</a></span></div></td>
          </tr>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox12" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">11</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">happy</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">不可用</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${ctx}/assets/img/edt.gif" width="16" height="16" /><a href="#">编辑</a>&nbsp; &nbsp;<img src="${ctx}/assets/img/del.gif" width="16" height="16" /><a href="#">删除</a></span></div></td>
          </tr>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox13" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">12</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">happy</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">可用</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${ctx}/assets/img/edt.gif" width="16" height="16" /><a href="#">编辑</a>&nbsp; &nbsp;<img src="${ctx}/assets/img/del.gif" width="16" height="16" /><a href="#">删除</a></span></div></td>
          </tr>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox14" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">13</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">happy</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">可用</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${ctx}/assets/img/edt.gif" width="16" height="16" /><a href="#">编辑</a>&nbsp; &nbsp;<img src="${ctx}/assets/img/del.gif" width="16" height="16" /><a href="#">删除</a></span></div></td>
          </tr>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox15" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">14</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">tiezhu0902@163</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">可用</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${ctx}/assets/img/edt.gif" width="16" height="16" /><a href="#">编辑</a>&nbsp; &nbsp;<img src="${ctx}/assets/img/del.gif" width="16" height="16" /><a href="#">删除</a></span></div></td>
          </tr>
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox16" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">15</div>
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">13813916585</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">2007-11-16 15:00:20 </span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">happy</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">可用</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="${ctx}/assets/img/edt.gif" width="16" height="16" /><a href="#">编辑</a>&nbsp; &nbsp;<img src="${ctx}/assets/img/del.gif" width="16" height="16" /><a href="#">删除</a></span></div></td>
          </tr>
        </table></td>
        <td width="8" background="${ctx}/assets/img/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="${ctx}/assets/img/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="${ctx}/assets/img/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4">&nbsp;&nbsp;共有 120 条记录，当前第 1/10 页</td>
            <td><table border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="40"><a href="#"><img src="${ctx}/assets/img/first.gif" width="37" height="15" border="0" /></a></td>
                  <td width="45"><a href="#"><img src="${ctx}/assets/img/back.gif" width="43" height="15" border="0" /></a></td>
                  <td width="45"><a href="#"><img src="${ctx}/assets/img/next.gif" width="43" height="15" border="0" /></a></td>
                  <td width="40"><a href="#"><img src="${ctx}/assets/img/last.gif" width="37" height="15" border="0" /></a></td>
                  <td width="100"><div align="center"><span class="STYLE1">转到第
                    <input name="textfield" type="text" size="4" style="height:12px; width:20px; border:1px solid #999999;" /> 
                    页 </span></div></td>
                  <td width="40"><a href="#"><img src="${ctx}/assets/img/go.gif" width="37" height="15" border="0" /></a></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="${ctx}/assets/img/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
		 <div class="form-group">
		  <div class="row">
		    <div class="clearfix"> </div>
	      </div>
		</div>
		<div class="form-group">
			<div class="row">
			  <div class="clearfix"> </div>
		  </div>
		</div>
		<div class="form-group">
			<div class="row">
			  <div class="clearfix"> </div>
		  </div>
		</div>
		<div class="form-group">
		  <div class="row"></div>
		</div>	
		<div class="form-group">
			<div class="row">
			  <div class="clearfix"> </div>
		  </div>
		</div>	
		<div class="form-group">
			<div class="row">
			  <div class="clearfix"> </div>
		  </div>
	     </div>	
		   <div class="form-group">
		<div class="row">
		  <div class="clearfix"> </div>
		</div>
		   </div>	
		   <div class="form-group">
		<div class="row">
		  <div class="clearfix"> </div>
		</div>
		   </div>	
		   <div class="form-group">
		<div class="row">
		  <div class="clearfix"> </div>
		</div>
		   </div>	
		   <div class="form-group">
		<div class="row">
		  <div class="clearfix"> </div>
		</div>
		   </div>	
		   <div class="form-group">
		<div class="row">
		  <div class="clearfix"> </div>
		</div>
		   </div>	
		   <div class="form-group mb-n">
			<div class="row"></div>
		   </div>	
        </div>	
        <div class="copy_layout">
         <p>&nbsp;</p>
         <p>&nbsp;</p>
         <p>&nbsp;</p>
         <p>&nbsp;</p>
         <p>&nbsp;</p>
         <p>&nbsp;</p>
         <p>&nbsp;</p>
         <p>&nbsp;</p>
         <p>&nbsp;</p>
         <p>Copyright &copy; 2015.Company name All rights reserved 中国地质大学（武汉）</a></p>
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
<!-- Bootstrap Core JavaScript -->
<script src="${ctx}/js/bootstrap.min.js"></script>
</body>
</html>
