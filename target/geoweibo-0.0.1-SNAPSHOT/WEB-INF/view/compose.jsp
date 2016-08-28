<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]>  <html lang="en" class="no-js">     <![endif]-->
<html lang="en" class="no-js">
<head>
<title>计算申请</title>
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
<script src="${ctx}/js/jquery-ui.min.js"></script>
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
                        预定关键字计算
               </div>
               <form action="${ctx}/chart/stor2" autocomplete="on" method="post">
                    <div class="panel-body" >
                    
                        <div class="alert alert-info">
                            请输入一个关键字与其相关的时间和城市，我们将会为您计算数据并在完成后提供下载功能。
                            建议先在生成关键字处进行生成以确定关键字等级
                        </div>						
						<hr>
						<label class="col-sm-2 control-label">选择起始时间 </label>
                        <input name="front_time" type="text" class="form-control1" id="ZTinput" readonly="readonly" required = "required" placeholder="请选择：时间段" data-date="2015-11-01" data-date-format="yyyy-mm-dd " data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
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
						<label class="col-sm-2 control-label">选择结尾时间 </label>
                        <input name="behind_time"type="text" class="form-control1" id="ZTinput" required = "required" placeholder="请选择：时间段" readonly="readonly">
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
  <label class="col-sm-2 control-label">目标地区 </label>
<select id="province" runat="server" onchange="selectprovince(this);" style=" width:95px;"></select>
<select id="city" runat="server" style = "width:95px;"onchange="setinput(this)"></select>
                        <input id="cityname"  name ="cityname" type="text" readonly="readonly"required = "required" class="form-control1 control3" placeholder="请输入：城市名">	
                        <label class="col-sm-2 control-label">关键字</label>
                        <input type="text"name="keyword" class="form-control1 control3" required = "required" placeholder="请输入：关键字，多个关键字以;分隔">	
                         <label class="col-sm-2 control-label">关键关系</label>
                        <input type="radio" name="relationship" value = "1"> 与 </br>
                         <input type="radio" name="relationship" value = "0"> 或 </br>	
                      </hr>
                       <button type="submit" class="btn btn-default" value="提 交"/>提 交</button>
                    </div>
                    </form>
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
var list1 = new Array;
var list2 = new Array;
list1[list1.length] = "北京市";
list1[list1.length] = "天津市";
list1[list1.length] = "河北省";
list1[list1.length] = "山西省";
list1[list1.length] = "内蒙古";
list1[list1.length] = "辽宁省";
list1[list1.length] = "吉林省";
list1[list1.length] = "黑龙江省";
list1[list1.length] = "上海市";
list1[list1.length] = "江苏省";
list1[list1.length] = "浙江省";
list1[list1.length] = "安徽省";
list1[list1.length] = "福建省";
list1[list1.length] = "江西省";
list1[list1.length] = "山东省";
list1[list1.length] = "河南省";
list1[list1.length] = "湖北省";
list1[list1.length] = "湖南省";
list1[list1.length] = "广东省";
list1[list1.length] = "广西自治区";
list1[list1.length] = "海南省";
list1[list1.length] = "重庆市";
list1[list1.length] = "四川省";
list1[list1.length] = "贵州省";
list1[list1.length] = "云南省";
list1[list1.length] = "西藏自治区";
list1[list1.length] = "陕西省";
list1[list1.length] = "甘肃省";
list1[list1.length] = "青海省";
list1[list1.length] = "宁夏回族自治区";
list1[list1.length] = "新疆维吾尔自治区";
list1[list1.length] = "香港特别行政区";
list1[list1.length] = "澳门特别行政区";
list1[list1.length] = "台湾省";

list2[list2.length] = new Array("--请选择城市--", "北京市");
list2[list2.length] = new Array("--请选择城市--", "天津市");
list2[list2.length] = new Array("--请选择城市--", "石家庄市", "张家口市", "承德市", "秦皇岛市", "唐山市", "廊坊市", "衡水市", "沧州市", "邢台市", "邯郸市", "保定市");
list2[list2.length] = new Array("--请选择城市--", "太原市", "朔州市", "大同市", "长治市", "晋城市", "忻州市", "晋中市", "临汾市", "吕梁市", "运城市");
list2[list2.length] = new Array("--请选择城市--", "呼和浩特市", "包头市", "赤峰市", "呼伦贝尔市", "鄂尔多斯市", "乌兰察布市", "巴彦淖尔市", "兴安盟", "阿拉善盟", "锡林郭勒盟");
list2[list2.length] = new Array("--请选择城市--", "沈阳市", "朝阳市", "阜新市", "铁岭市", "抚顺市", "丹东市", "本溪市", "辽阳市", "鞍山市", "大连市", "营口市", "盘锦市", "锦州市", "葫芦岛市");
list2[list2.length] = new Array("--请选择城市--", "长春市", "白城市", "吉林市", "四平市", "辽源市", "通化市", "白山市", "延边朝鲜族自治州");
list2[list2.length] = new Array("--请选择城市--", "哈尔滨市", "七台河市", "黑河市", "大庆市", "齐齐哈尔市", "伊春市", "佳木斯市", "双鸭山市", "鸡西市", "大兴安岭地区(加格达奇)", "牡丹江", "鹤岗市", "绥化市　");
list2[list2.length] = new Array("--请选择城市--", "黄浦区", "卢湾区", "徐汇区", "长宁区", "静安区", "普陀区", "闸北区", "虹口区", "杨浦区", "闵行区", "宝山区", "嘉定区", "浦东新区", "金山区", "松江区", "青浦区", "南汇区", "奉贤区", "崇明县");
list2[list2.length] = new Array("--请选择城市--", "南京市", "徐州市", "连云港市", "宿迁市", "淮安市", "盐城市", "扬州市", "泰州市", "南通市", "镇江市", "常州市", "无锡市", "苏州市");
list2[list2.length] = new Array("--请选择城市--", "杭州市", "湖州市", "嘉兴市", "舟山市", "宁波市", "绍兴市", "衢州市", "金华市", "台州市", "温州市", "丽水市");
list2[list2.length] = new Array("--请选择城市--", "合肥市", "宿州市", "淮北市", "亳州市", "阜阳市", "蚌埠市", "淮南市", "滁州市", "马鞍山市", "芜湖市", "铜陵市", "安庆市", "黄山市", "六安市", "巢湖市", "池州市", "宣城市");
list2[list2.length] = new Array("--请选择城市--", "福州市", "南平市", "莆田市", "三明市", "泉州市", "厦门市", "漳州市", "龙岩市", "宁德市");
list2[list2.length] = new Array("--请选择城市--", "南昌市", "九江市", "景德镇市", "鹰潭市", "新余市", "萍乡市", "赣州市", "上饶市", "抚州市", "宜春市", "吉安市");
list2[list2.length] = new Array("--请选择城市--", "济南市", "聊城市", "德州市", "东营市", "淄博市", "潍坊市", "烟台市", "威海市", "青岛市", "日照市", "临沂市", "枣庄市", "济宁市", "泰安市", "莱芜市", "滨州市", "菏泽市");
list2[list2.length] = new Array("--请选择城市--", "郑州市", "三门峡市", "洛阳市", "焦作市", "新乡市", "鹤壁市", "安阳市", "濮阳市", "开封市", "商丘市", "许昌市", "漯河市", "平顶山市", "南阳市", "信阳市", "周口市", "驻马店市");
list2[list2.length] = new Array("--请选择城市--", "武汉市", "十堰市", "襄樊市", "荆门市", "孝感市", "黄冈市", "鄂州市", "黄石市", "咸宁市", "荆州市", "宜昌市", "随州市", "恩施土家族苗族自治州", "仙桃市", "天门市", "潜江市", "神农架林区");
list2[list2.length] = new Array("--请选择城市--", "长沙市", "张家界市", "常德市", "益阳市", "岳阳市", "株洲市", "湘潭市", "衡阳市", "郴州市", "永州市", "邵阳市", "怀化市", "娄底市", "湘西土家族苗族自治州");
list2[list2.length] = new Array("--请选择城市--", "广州市", "清远市市", "韶关市", "河源市", "梅州市", "潮州市", "汕头市", "揭阳市", "汕尾市", " 惠州市", "东莞市", "深圳市", "珠海市", "中山市", "江门市", "佛山市", "肇庆市", "云浮市", "阳江市", "茂名市", "湛江市");
list2[list2.length] = new Array("--请选择城市--", "南宁市", "桂林市", "柳州市", "梧州市", "贵港市", "玉林市", "钦州市", "北海市", "防城港市", "崇左市", "百色市", "河池市", "来宾市", "贺州市");
list2[list2.length] = new Array("--请选择城市--", "海口市", "三亚市");
list2[list2.length] = new Array("--请选择城市--", "渝中区", "大渡口区", "江北区", "沙坪坝区", "九龙坡区", "南岸区", "北碚区", "万盛区", "双桥区", "渝北区", "巴南区", "万州区", "涪陵区", "黔江区", "长寿区", "合川市", "永川市", "江津市", "南川市", "綦江县", "潼南县", "铜梁县", "大足县", "璧山县", "垫江县", "武隆县", "丰都县", "城口县", "开县", "巫溪县", "巫山县", "奉节县", "云阳县", "忠县", "石柱土家族自治县", "彭水苗族土家族自治县", "酉阳土家族苗族自治县", "秀山土家族苗族自治县");
list2[list2.length] = new Array("--请选择城市--", "成都市", "广元市", "绵阳市", "德阳市", "南充市", "广安市", "遂宁市", "内江市", "乐山市", "自贡市", "泸州市", "宜宾市", "攀枝花市", "巴中市", "资阳市", "眉山市", "雅安", "阿坝藏族羌族自治州", "甘孜藏族自治州", "凉山彝族自治州县");
list2[list2.length] = new Array("--请选择城市--", "贵阳市", "六盘水市", "遵义市", "安顺市", "毕节地区", "铜仁地区", "黔东南苗族侗族自治州", "黔南布依族苗族自治州", "黔西南布依族苗族自治州");
list2[list2.length] = new Array("--请选择城市--", "昆明市", "曲靖市", "玉溪市", "保山市", "昭通市", "丽江市", "普洱市", "临沧市", "宁德市", "德宏傣族景颇族自治州", "怒江傈僳族自治州", "楚雄彝族自治州", "红河哈尼族彝族自治州", "文山壮族苗族自治州", "大理白族自治州", "迪庆藏族自治州", "西双版纳傣族自治州");
list2[list2.length] = new Array("--请选择城市--", "拉萨市", "那曲地区", "昌都地区", "林芝地区", "山南地区", "日喀则地区", "阿里地区");
list2[list2.length] = new Array("--请选择城市--", "西安市", "延安市", "铜川市", "渭南市", "咸阳市", "宝鸡市", "汉中市", "安康市", "商洛市");
list2[list2.length] = new Array("--请选择城市--", "兰州市 ", "嘉峪关市", "金昌市", "白银市", "天水市", "武威市", "酒泉市", "张掖市", "庆阳市", "平凉市", "定西市", "陇南市", "临夏回族自治州", "甘南藏族自治州");
list2[list2.length] = new Array("--请选择城市--", "西宁市", "海东地区", "海北藏族自治州", "黄南藏族自治州", "玉树藏族自治州", "海南藏族自治州", "果洛藏族自治州", "海西蒙古族藏族自治州");
list2[list2.length] = new Array("--请选择城市--", "银川市", "石嘴山市", "吴忠市", "固原市", "中卫市");
list2[list2.length] = new Array("--请选择城市--", "乌鲁木齐市", "克拉玛依市", "喀什地区", "阿克苏地区", "和田地区", "吐鲁番地区", "哈密地区", "塔城地区", "阿勒泰地区", "克孜勒苏柯尔克孜自治州", "博尔塔拉蒙古自治州", "昌吉回族自治州伊犁哈萨克自治州", "巴音郭楞蒙古自治州", "河子市", "阿拉尔市", "五家渠市", "图木舒克市");
list2[list2.length] = new Array("--请选择城市--", "香港市");
list2[list2.length] = new Array("--请选择城市--", "澳门市");
list2[list2.length] = new Array("--请选择城市--", "台湾市");

var ddlProvince = document.getElementById("province");
var ddlCity = document.getElementById("city");
for (var i = 0; i < list1.length; i++) {
    var option = document.createElement("option");
    option.appendChild(document.createTextNode(list1[i]));
    option.value = list1[i];
    ddlProvince.appendChild(option);
    //city initialize
    var firstprovince = list2[0];
  

}
for (var j = 0; j < firstprovince.length; j++) {
    var optioncity = document.createElement("option");
    optioncity.appendChild(document.createTextNode(firstprovince[j]));
    optioncity.value = firstprovince[j];
    ddlCity.appendChild(optioncity);
} 
function indexof(obj, value) {
    var k = 0;
    for (; k < obj.length; k++) {
        if (obj[k] == value) return k;
    }
    return k;
}
function selectprovince(obj) {
    ddlCity.options.length = 0; //clear
    var index = indexof(list1, obj.value);
    var list2element = list2[index];
    for (var i = 0; i < list2element.length; i++) {
        var option = document.createElement("option");
        option.appendChild(document.createTextNode(list2element[i]));
        option.value = list2element[i];
        ddlCity.appendChild(option);
    }

}
function setinput(obj) {
    if (! (obj.value == "--请选择城市--")) {
        document.getElementById("cityname").value = obj.value;
    }
}
</script>
</body>
</html>
