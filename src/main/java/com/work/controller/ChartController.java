package com.work.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.ListIterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.abel533.echarts.AbstractData;
import com.github.abel533.echarts.axis.Axis;
import com.github.abel533.echarts.axis.CategoryAxis;
import com.github.abel533.echarts.axis.ValueAxis;
import com.github.abel533.echarts.code.Magic;
import com.github.abel533.echarts.code.Orient;
import com.github.abel533.echarts.code.SelectedMode;
import com.github.abel533.echarts.code.SeriesType;
import com.github.abel533.echarts.code.Tool;
import com.github.abel533.echarts.code.Trigger;
import com.github.abel533.echarts.code.X;
import com.github.abel533.echarts.feature.MagicType;
import com.github.abel533.echarts.json.GsonOption;
import com.github.abel533.echarts.series.Bar;
import com.github.abel533.echarts.series.Line;
import com.github.abel533.echarts.series.Map;
import com.github.abel533.echarts.series.WordCloud;
import com.google.gson.JsonArray;
import com.work.method.BetweenDate;
import com.work.method.Connect;
import com.work.method.CountDays;
import com.work.method.CutString;
import com.work.method.SelectProvince;
import com.work.method.jdbcSelectKeyword;
import com.work.method.putIntoList;
import com.work.method.putIntoListOneday;
import com.work.method.json.JSONException;
import com.work.method.json.JSONObject;
import com.work.model.Keyword;
import com.work.model.Point_SandStorm;
import com.work.model.TMap;
import com.work.model.User;
import com.work.model.UserRequest;
import com.work.model.provinceCount;
import com.work.model.provinceId;
import com.work.service.TMapServer;
import com.work.service.UserServer;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

@Controller
@RequestMapping("chart")
public class ChartController {

	@Resource
	private TMapServer mapServer;
	@Resource
	private UserServer userserver;

	@RequestMapping("login_before")
	public void login_before(HttpServletRequest request, HttpServletResponse response){
		User user = new User();
		String username = request.getParameter("username");

		String password = request.getParameter("password");
		user.setUser_name(username);
		user.setPasswd(password);
		PrintWriter out;
		try {
			out = response.getWriter();
			//后来改的
			if (userserver.selectUser(user) == null) {
				// 登陆失败，用ajax在页面提示信息错误
				out.print("fail");
				//System.out.println("fail");
				// view.setViewName("login");
			} else {
				// 返回相应的页面，并把登录次数加1,这里还应该验证后台数据是否添加成功
				out.print("success");
			}			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("login")
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView view = new ModelAndView();
		User user = new User();
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		user.setUser_name(username);
		user.setPasswd(password);
		user.setLast_login_time(CountDays.getTime());
			if (userserver.selectUser(user) == null) {
				view.setViewName("login");
				//System.out.println("login");
				// view.setViewName("login");
			} else {
				// 返回相应的页面，并把登录次数加1,这里还应该验证后台数据是否添加成功
				userserver.addLoginCount(user);
				userserver.update_login_time(user);
				// 添加session，防止跳过登录直接url访问
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				session.setAttribute("password", password);
				view.setViewName("datesum");
			}
		return view;
	}

	@RequestMapping("loginout")
	public ModelAndView loginout(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		HttpSession session = request.getSession(false);// 防止创建Session
		session.removeAttribute("username");
		session.removeAttribute("password");
		view.setViewName("login");
		return view;
	}
	//ajax异步注册
	//登陆验证
	
	@RequestMapping("checklogin")
	public void check_login(HttpServletRequest request,HttpServletResponse response){
		//不进行缓存
		response.setContentType("text/html");  
        response.setHeader("Cache-Control", "no-store");  
        response.setHeader("Pragma", "no-cache");  
        response.setDateHeader("Expires", 0);  
        
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		User flag=userserver.checkUserName(username);
		try {
			PrintWriter out=response.getWriter();
			if(flag!=null){
				if(!flag.getPasswd().equals(password)){
					out.print("fail");
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	@RequestMapping("check")
	public void check_username(HttpServletRequest request,HttpServletResponse response){
		//不进行缓存
		response.setContentType("text/html");  
        response.setHeader("Cache-Control", "no-store");  
        response.setHeader("Pragma", "no-cache");  
        response.setDateHeader("Expires", 0);  
		String data=request.getParameter("data");
		User flag;
		if(data.contains("@"))
			 flag=userserver.checkEmail(data);
		else
			flag=userserver.checkUserName(data);

		try {
			PrintWriter out=response.getWriter();
			if(flag==null)
				out.print("success");
			else
				out.print("fail");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping("regist")
	public ModelAndView regist(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView view = new ModelAndView();
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		// 获得用户ID编号
		List<User> Usernumb = userserver.getUsernumb();
		int usernb = Usernumb.size() + 1;
		DecimalFormat df = new DecimalFormat("00000");
		String user_id = df.format(usernb);
		// 往数据库上传User对象
		User user = new User();
		user.setUser_name(username);
		user.setPasswd(password);
		user.setEmail(email);
		user.setUser_id(user_id);
		user.setCreate_time(CountDays.getTime());
		user.setLogin_count(1);
		
		userserver.regist(user);
		view.setViewName("login");
		return view;
	}



	@RequestMapping("themesum")
	public ModelAndView index2(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
		} else {
			view.setViewName("themesum");
		}
		return view;
	}

	@RequestMapping("tmap")
	public ModelAndView index3(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
		} else {
			view.setViewName("tmap");
		}
		return view;
	}

	@RequestMapping("datesum")
	public ModelAndView index4(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
		} else {
			view.setViewName("datesum");
		}
		return view;
	}

	@RequestMapping("totalsum")
	public ModelAndView index5(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
		} else {
			view.setViewName("totalsum");
		}
		return view;
	}

	@RequestMapping("inbox")
	public ModelAndView index6(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
		} else {
			view.setViewName("inbox");
		}
		return view;
	}

	@RequestMapping("validation")
	public ModelAndView index7(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
		} else {
			view.setViewName("validation");
		}
		return view;
	}

	@RequestMapping("grids")
	public ModelAndView index8(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
		} else {
			view.setViewName("grids");
		}
		return view;
	}

	@RequestMapping("RoleManage")
	public ModelAndView index9(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
		} else {
			view.setViewName("RoleManage");
		}
		return view;
	}

	@RequestMapping("example")
	public ModelAndView index10(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
		} else {
			view.setViewName("example");
		}
		return view;
	}

	@RequestMapping("point")
	public ModelAndView point(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
		} else {
			view.setViewName("point");
		}
		return view;
	}

	@RequestMapping("forms")
	public ModelAndView index11(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
		} else {
			view.setViewName("forms");
		}
		return view;
	}

	@RequestMapping("compose")
	public ModelAndView index12(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
		} else {
			view.setViewName("compose");
		}
		return view;
	}

	@RequestMapping("line")
	public ModelAndView line(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
		} else {
			view.setViewName("line");
		}
		return view;
	}

	@RequestMapping("citylist")
	public ModelAndView index14(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
		} else {
			view.setViewName("citylist");
		}
		return view;
	}
	
	@RequestMapping("download")
	public ModelAndView download(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
		} else {
			view.setViewName("download");
		}
		return view;
	}

	@RequestMapping("stor")
	public ModelAndView stor(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		String levelonekeyword = request.getParameter("keyword1");
		String leveltwo = request.getParameter("keyword");
		Keyword keyword = new Keyword();
	//	String reason = request.getParameter("reason"); //尚未启用
		String create_user = userserver.getUserid(request.getSession().getAttribute("username").toString()).getUser_id();
		keyword.setCreate_user(create_user);
	//	String information = request.getParameter("information"); //尚未启用
		keyword.setContent(leveltwo);
		List<Keyword> keywordlist = mapServer.selectDemand();
		keyword.setDemand_id("000" + (keywordlist.size() + 1));
		keyword.setLevel(1);
		for (int i = 0; i < keywordlist.size(); i++) {
			if(keywordlist.get(i).getContent().equals(levelonekeyword))
			{
				keyword.setFront_level_id(keywordlist.get(i).getDemand_id());
			}
		}
		for (int i = 0; i < keywordlist.size(); i++) {
			if(keywordlist.get(i).getLevel()==1)
			if(keywordlist.get(i).getFront_level_id().equals(keyword.getFront_level_id())&&keywordlist.get(i).getContent().equals(leveltwo))
			{
				System.out.println("same keyword");//判断是否有相同的keyword
				view.setViewName("validation");
				return view;
			}
		}
	
		mapServer.keywordinsert(keyword);
		view.setViewName("validation");
		return view;
		
	}
	@RequestMapping("stor2")
	public ModelAndView stor2(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		if (request.getSession().getAttribute("username") == null) {
			view.setViewName("login");
			return view;
		}
		else {
		String front_time = request.getParameter("front_time");
		String behind_time = request.getParameter("behind_time");
		String cityname = request.getParameter("cityname");
		String keyword = request.getParameter("keyword");
		String relationship = request.getParameter("relationship");
		List<UserRequest> urlist = mapServer.selectuserrequest();
		List<Keyword> keywordlist = mapServer.selectDemand();
		String create_user = userserver.getUserid(request.getSession().getAttribute("username").toString()).getUser_id();
		int flag = 0;//判断是否是重复的关键字
		String demand_id = "";
		for(int i = 0;i < keywordlist.size();i++)
		{
			if((keywordlist.get(i).getContent().equals(keyword)))//存在相同关键字
			{
				flag = 1;
				demand_id = keywordlist.get(i).getDemand_id();//把对应的demandid赋给STRING
				System.out.println(demand_id+"存在");
			}
		}
		if(flag == 0)//不存在关键字则...
		{
			Keyword insert = new Keyword();
			insert.setContent(keyword);
			insert.setCreate_user(create_user);
			insert.setDemand_id("000" + (keywordlist.size()));
			insert.setLevel(2);
			mapServer.keywordinsert(insert);
			demand_id = ("000" + (keywordlist.size()));
			System.out.println(demand_id+"不存在");
		}
		UserRequest ur = new UserRequest();
		ur.setBehind_time(behind_time);
		ur.setCityname(cityname);
		ur.setContent(keyword);
		ur.setCreater(create_user);
		ur.setDemand_id(demand_id);
		ur.setFront_time(front_time);
		ur.setRelationship(Integer.parseInt(relationship));
		mapServer.requestinsert(ur);
		try {
			Connect.connUrl(ur,demand_id);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		view.setViewName("compose");
		return view;
		}
	}
	/**
	 * 
	 * @param request
	 * @return content
	 * @throws IOException
	 * @throws JsonMappingException
	 * @throws JsonGenerationException
	 */
	@RequestMapping("contentjson")
	@ResponseBody
	public Object contentjson(HttpServletRequest request)
			throws JsonGenerationException, JsonMappingException, IOException {
		List<Keyword> listofkeywords = new ArrayList<Keyword>();
		listofkeywords.addAll(mapServer.selectDemand()); // 选择城市ID与名称
		ObjectMapper mapper = new ObjectMapper();
		String jsonfromList = mapper.writeValueAsString(listofkeywords);
		return jsonfromList.toString();
	}
	/**
	 * 根据用户返回用户请求过的userrequest数据
	 * @param request
	 * @return
	 * @throws JsonGenerationException
	 * @throws JsonMappingException
	 * @throws IOException
	 */
	@RequestMapping("requestjson")
	@ResponseBody
	public Object request(HttpServletRequest request) throws JsonGenerationException, JsonMappingException, IOException {
		List<Keyword> listofkeywords = new ArrayList<Keyword>();
		String username = request.getSession().getAttribute("username").toString();
		User user = userserver.getUserid(username);
		listofkeywords.addAll(mapServer.selectRequest(user.getUser_id())); // 选择城市ID与名称
		ObjectMapper mapper = new ObjectMapper();
		String jsonfromList = mapper.writeValueAsString(listofkeywords);
		
		return jsonfromList.toString();
	}
	/**
	 * 根据cityname、keyword返回可选日期区间
	 * @param request
	 * @return
	 * @throws JsonGenerationException
	 * @throws JsonMappingException
	 * @throws IOException
	 */
	@RequestMapping("timejson")
	@ResponseBody
	public Object time(HttpServletRequest request) throws JsonGenerationException, JsonMappingException, IOException {
		List<Keyword> listofkeywords = new ArrayList<Keyword>();
		String username = request.getSession().getAttribute("username").toString();
		User user = userserver.getUserid(username);
		String content  = new String(request.getParameter("keyword").getBytes("iso8859-1"), "UTF-8");
		String cityname = new String(request.getParameter("cityname").getBytes("iso8859-1"), "UTF-8");
		listofkeywords.addAll(mapServer.gettime(user.getUser_id(),content,cityname)); // 选择城市ID与名称
		ObjectMapper mapper = new ObjectMapper();
		String jsonfromList = mapper.writeValueAsString(listofkeywords);
		return jsonfromList.toString();
	}
	
	/**
	 * 根据cityname、keyword返回可选日期区间
	 * @param request
	 * @return
	 * @throws JsonGenerationException
	 * @throws JsonMappingException
	 * @throws IOException
	 */
	@RequestMapping("cityjson")
	@ResponseBody
	public Object cityjson(HttpServletRequest request) throws JsonGenerationException, JsonMappingException, IOException {
		List<Keyword> listofkeywords = new ArrayList<Keyword>();
		String username = request.getSession().getAttribute("username").toString();
		User user = userserver.getUserid(username);
		String content  = new String(request.getParameter("keyword").getBytes("iso8859-1"), "UTF-8");
		System.out.println(content);
		listofkeywords.addAll(mapServer.getcity(user.getUser_id(),content)); // 选择城市ID与名称
		ObjectMapper mapper = new ObjectMapper();
		String jsonfromList = mapper.writeValueAsString(listofkeywords);
		return jsonfromList.toString();
	}
	/**
	 * 根据日期调用url查看数据库中已有数据
	 * @param request
	 * @return
	 * @throws JsonGenerationException
	 * @throws JsonMappingException
	 * @throws IOException
	 */
	@RequestMapping("dbresult")
	@ResponseBody
	public Object dbresult(HttpServletRequest request) throws JsonGenerationException, JsonMappingException, IOException {
		String date = request.getParameter("date");
		String jason_data = "";
		//System.out.println(content+"	"+cityname+"	"+category);
			URL getUrl;
			String url = null;
			url="http://192.168.1.181:8080/geoweiboback/find?dbscan=true&date="+date;
			getUrl =new URL(url);
			HttpURLConnection connection = (HttpURLConnection) getUrl.openConnection();
			connection.setReadTimeout(20 * 1000); 
			connection.connect();
			String TEMP;
			BufferedReader reader = new BufferedReader ( new InputStreamReader (connection.getInputStream ( ),"UTF-8" ));
			while ( ( TEMP = reader.readLine ( ) ) != null )
			{
				jason_data = jason_data+TEMP;
			}
		return jason_data;
	}

	
	/**
	 * 
	 * @param request
	 * @return keyword+value
	 * @throws JsonGenerationException
	 * @throws JsonMappingException
	 * @throws IOException
	 */
	@RequestMapping("tablejson")
	@ResponseBody
	public Object tablejson(HttpServletRequest request)
			throws JsonGenerationException, JsonMappingException, IOException {
		String date = request.getParameter("date");
		List<Keyword> listofkeywords = new ArrayList<Keyword>();
		int i = 0;
		List<TMap> rtn = new ArrayList<TMap>();
		List<provinceId> listOfId = new ArrayList<provinceId>();
		List<provinceCount> listOfCount = new ArrayList<provinceCount>();
		listOfId.addAll(mapServer.selectProvinceId()); // 选择城市ID与名称
		listofkeywords.addAll(mapServer.selectDemand()); // 选择城市ID与名称
		SelectProvince sp = new SelectProvince();
		while (listofkeywords.isEmpty() != true) {
			TMap tmap = new TMap();
			if (listofkeywords.get(0).getLevel() == 1) {
				try{//2015年11月14日14:00:49修正因关键字未进行处理而jdbc报错从而所有值都不会返回的BUG
				listOfCount = mapServer
						.selectCheckinProvinceCountOneday("demandpro" + listofkeywords.get(0).getDemand_id(), date);

				int valueOfCount = 0;
				for (int j = 0; j < listOfId.size(); j++) {// j是省数目
					valueOfCount = valueOfCount + sp.selectProvince(j, listOfCount.get(0));
				}
				tmap.setName(listofkeywords.get(0).getContent());
				tmap.setValue(valueOfCount);
				rtn.add(tmap);
				listofkeywords.remove(0);
				}
				catch(Exception e)
				{
					listofkeywords.remove(0);
				}
			} else {
				listofkeywords.remove(0);
			}
		}
		ObjectMapper mapper = new ObjectMapper();
		String jsonfromList = mapper.writeValueAsString(rtn);

		return jsonfromList.toString();

	}

	/**
	 * 
	 * @param request
	 * @return keyword+value
	 * @throws JsonGenerationException
	 * @throws JsonMappingException
	 * @throws IOException
	 */
	@RequestMapping("table1json")
	@ResponseBody
	public Object table1json(HttpServletRequest request)
			throws JsonGenerationException, JsonMappingException, IOException {
		String date = request.getParameter("date");
		String keyword = request.getParameter("keyword");
		String demandid = mapServer.selectKeyword(keyword);
		List<Keyword> listofkeywords = new ArrayList<Keyword>();
		List<TMap> rtn = new ArrayList<TMap>();
		List<provinceId> listOfId = new ArrayList<provinceId>();
		List<provinceCount> listOfCount = new ArrayList<provinceCount>();
		listOfId.addAll(mapServer.selectProvinceId()); // 选择城市ID与名称
		listofkeywords.addAll(mapServer.selectDemand()); // 选择城市ID与名称
		SelectProvince sp = new SelectProvince();
		TMap tmap = new TMap();
		if (listofkeywords.get(0).getLevel() == 1) {
			listOfCount = mapServer.selectCheckinProvinceCountOneday("demandpro" + demandid, date);

			int valueOfCount = 0;
			for (int j = 0; j < listOfId.size(); j++) {// j是省数目
				valueOfCount = valueOfCount + sp.selectProvince(j, listOfCount.get(0));
			}
			tmap.setName(listofkeywords.get(0).getContent());
			tmap.setValue(valueOfCount);
			tmap.setDate(date);
			rtn.add(tmap);
			listofkeywords.remove(0);
		} else {
			listofkeywords.remove(0);
		}
		ObjectMapper mapper = new ObjectMapper();
		String jsonfromList = mapper.writeValueAsString(rtn);
		return jsonfromList.toString();
	}

	/**
	 * 
	 * @param keyword
	 * @param date1
	 * @param date2
	 * @return linejson
	 * @throws ParseException
	 * @throws SQLException
	 * @throws NumberFormatException
	 * @throws UnsupportedEncodingException
	 */
	// 使用jdbc
	@SuppressWarnings("static-access")
	@RequestMapping("linejson")
	@ResponseBody
	public Object linejson(HttpServletRequest request)
			throws ParseException, NumberFormatException, SQLException, UnsupportedEncodingException {
		String[] date = new String[2];
		date[0] = request.getParameter("date1");
		date[1] = request.getParameter("date2");
		java.util.Map<String, String> dateform = new java.util.HashMap<String, String>();
		dateform.put("value2", date[0]);
		dateform.put("value1", date[1]);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date d1 = sdf.parse(date[0]);
		Date d2 = sdf.parse(date[1]);
		int m1 = d1.getMonth();
		int m2 = d2.getMonth();
		String keyword = request.getParameter("value1");
		GsonOption option = new GsonOption();
		if (m1 != m2) {
			option.legend((m1 + 1) + "月到" + (m2 + 1) + "月全国关键词数量统计");
		} else {
			option.legend((m1 + 1) + "月全国关键词数量统计");
		}
		option.toolbox().show(true).feature(Tool.mark, Tool.dataView, new MagicType(Magic.line, Magic.bar),
				Tool.restore, Tool.saveAsImage);
		option.calculable(true);
		option.tooltip().trigger(Trigger.axis).formatter("微博数量 : <br/>{b} : {c}次");
		ValueAxis valueAxis = new ValueAxis();
		valueAxis.axisLabel().formatter("{value} 次");
		option.yAxis(valueAxis);
		CategoryAxis categoryAxis = new CategoryAxis();
		categoryAxis.axisLine().onZero(false);
		categoryAxis.axisLabel().formatter("{value} ");
		categoryAxis.boundaryGap(false);
		option.xAxis(categoryAxis);
		Line line = new Line();
		List<provinceId> listOfId = new ArrayList<provinceId>();
		listOfId.addAll(mapServer.selectProvinceId()); // 选择城市ID与名称
		List<TMap> list = new ArrayList<TMap>(); // 标准返回形式TMap
		List<provinceCount> listOfCount = new ArrayList<provinceCount>();
		// putIntoList.putintolist(listOfCount, date, keyword);
		// 使用jdbc调用数据库内数据，速度慢
		listOfCount = mapServer.selectCheckinProvinceCount("demandpro" + keyword, date[0], date[1]);
		CountDays cd = new CountDays();
		int size = cd.countDate(date[0], date[1]);
		SelectProvince sp = new SelectProvince();
		List<Integer> listofdate = new ArrayList<Integer>();
		long unixtime = d1.getTime();
		for (int k = 0; k <= size; k++) {
			Date temp = new Date();
			temp.setTime(unixtime);
			listofdate.add(k,temp.getDate());
			unixtime = (unixtime+(60*60*24*1000));
		}
		for (int i = 0; i <= size; i++) {// i是时间差
			TMap temp = new TMap();
			java.util.Map<String, Integer> temp1 = new java.util.HashMap<String, Integer>();
			dateform.put("value2", date[0]);
			int valueOfCount = 0;
			for (int j = 0; j < listOfId.size(); j++) {// j是省数目
				valueOfCount = valueOfCount + sp.selectProvince(j, listOfCount.get(i));
			}
			temp.setValue(valueOfCount);
			temp1.put("value", listofdate.get(i));
			list.add(temp);
			categoryAxis.data().add(temp1);
		}
		line.smooth(true);
		line.type(SeriesType.line);
		line.name("查询关键字在微博数据中的出现情况");
		line.data().addAll(list);
		option.series(line);
		return option.toString();

	}

	@SuppressWarnings({ "static-access", "deprecation" })
	@RequestMapping("barjson")
	@ResponseBody
	public Object barjson(HttpServletRequest request) throws ParseException {
		String[] date = new String[2];
		date[0] = request.getParameter("date1");
		date[1] = request.getParameter("date2");

		java.util.Map<String, String> dateform = new java.util.HashMap<String, String>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date d1 = sdf.parse(date[0]);
		Date d2 = sdf.parse(date[1]);
		int m1 = d1.getMonth();
		int m2 = d2.getMonth();
		dateform.put("value1", date[0]);
		dateform.put("value2", date[1]);
		GsonOption option = new GsonOption();
		if (m1 != m2) {
			option.legend((m1 + 1) + "月到" + (m2 + 1) + "月全国数据柱状图展示");
		} else {
			option.legend((m1 + 1) + "月全国数据柱状图展示");
		}
		option.toolbox().show(true).feature(Tool.mark, Tool.dataView, new MagicType(Magic.line, Magic.bar),
				Tool.restore, Tool.saveAsImage);
		option.calculable(true);
		option.tooltip().trigger(Trigger.axis).formatter("微博数量 : <br/>{b} : {c}次");
		ValueAxis valueAxis = new ValueAxis();
		valueAxis.axisLabel().formatter("{value} 个");
		option.yAxis(valueAxis);
		CategoryAxis categoryAxis = new CategoryAxis();
		categoryAxis.axisLine().onZero(true);
		categoryAxis.axisLabel().formatter("{value}");
		categoryAxis.boundaryGap(true);
		option.xAxis(categoryAxis);
		Bar bar = new Bar();
		List<provinceId> listOfId = new ArrayList<provinceId>();
		listOfId.addAll(mapServer.selectProvinceId()); // 选择城市ID与名称
		List<TMap> list = new ArrayList<TMap>(); // 标准返回形式TMap
		List<provinceCount> listOfCount = new ArrayList<provinceCount>();
		listOfCount.addAll(mapServer.selectProvinceCountBetween(dateform));

		CountDays cd = new CountDays();
		int size = cd.countDate(date[0], date[1]);
		SelectProvince sp = new SelectProvince();
		List<Integer> listofdate = new ArrayList<Integer>();
		// listofdate = com.work.method.BetweenDate.Betweendate(date[0],
		// date[1]); 改进横坐标体验
		long unixtime = d1.getTime();
		for (int k = 0; k <= size; k++) {
			Date temp = new Date();
			temp.setTime(unixtime);
			listofdate.add(k,temp.getDate());
			unixtime = (unixtime+(60*60*24*1000));
		}
		for (int i = 0; i <= size; i++) {
			TMap temp = new TMap();
			java.util.Map<String, String> temp1 = new java.util.HashMap<String, String>();
			dateform.put("value2", date[0]);
			int valueOfCount = 0;
			for (int j = 0; j < listOfId.size(); j++) {
				valueOfCount = valueOfCount + sp.selectProvince(j, listOfCount.get(i));
			}
			temp.setValue(valueOfCount);
			temp1.put("value", listofdate.get(i).toString());
			list.add(temp);
			categoryAxis.data().add(temp1);
		}
		bar.data().addAll(list);
		bar.name("微博数量");
		bar.type(SeriesType.bar);
		bar.itemStyle().normal().label().show(true);
		bar.itemStyle().emphasis().label().show(true);
		option.series(bar);
		return option.toString();
	}

	@RequestMapping("wordcloudjson")
	@ResponseBody
	public Object wordcloudjson(HttpServletRequest request) {
		String date = request.getParameter("date");
		GsonOption option = new GsonOption();
		// 设置title部分
		option.title().setText("全国签到数据");
		option.title().setSubtext("全国签到数据");
		option.title().x(X.center);
		// 设置tooltip部分
		option.tooltip().trigger(Trigger.item);
		option.tooltip().trigger(Trigger.axis).formatter("微博数量 : <br/>{b} : {c}次");
		option.legend().setOrient(Orient.vertical);
		option.legend().setX(X.left);
		option.legend().data("全国签到数据展示");
		// 设置dataRange部分
		// option.dataRange().color("orange","yellow");
		option.dataRange().text("多", "少");

		option.dataRange().setMin(0);
		option.dataRange().calculable(true);
		WordCloud wordcloud = new WordCloud();
		List<provinceId> listOfId = new ArrayList<provinceId>();
		listOfId.addAll(mapServer.selectProvinceId()); // 选择城市ID与名称
		List<TMap> list = new ArrayList<TMap>(); // 标准返回形式TMap
		List<provinceCount> listOfCount = new ArrayList<provinceCount>();
		listOfCount.addAll(mapServer.selectProvinceCount(date));
		SelectProvince sp = new SelectProvince();
		int max = 0;
		for (int i = 0; i < listOfId.size(); i++) {
			TMap temp = new TMap();
			temp.setName(CutString.cutString(listOfId.get(i).getProvinceName()));
			temp.setValue(sp.selectProvince(i, listOfCount.get(0)));
			list.add(temp);
			if(temp.getValue()>=max)
			{
				max = temp.getValue();
			}
		}
		option.dataRange().setMax(max);
		wordcloud.data().addAll(list);
		wordcloud.name("微博数量");
		wordcloud.autoSize().enable();
		wordcloud.type(SeriesType.wordCloud);
		wordcloud.itemStyle().normal().label().show(true);
		wordcloud.itemStyle().emphasis().label().show(true);
		option.series(wordcloud);
		return option.toString();
	}

	@RequestMapping("mixjson")
	@ResponseBody
	public Object mixjson(HttpServletRequest request) {
		GsonOption option = new GsonOption();

		return option.toString();
	}

	@RequestMapping("keywordmapjson")
	@ResponseBody
	public Object keywordmapjson(HttpServletRequest request)
			throws NumberFormatException, ParseException, SQLException {
		String date = request.getParameter("date");
		String keyword = request.getParameter("value");
		GsonOption option = new GsonOption();
		// 设置title部分
		option.title().setText("所选关键字数量统计");
		option.title().setSubtext("搜索数");
		option.title().x(X.center);
		// 设置tooltip部分
		option.tooltip().trigger(Trigger.item);
		option.tooltip().trigger(Trigger.axis).formatter("微博数量 : <br/>{b} : {c}次");
		option.legend().setOrient(Orient.vertical);
		option.legend().setX(X.left);
		option.legend().data("全国搜索数据展示");
		// 设置dataRange部分
		// option.dataRange().color("orange","yellow");
		option.dataRange().text("多", "少");

		option.dataRange().setMin(0);
		option.dataRange().calculable(true);
		Map map = new Map();
		List<provinceId> listOfId = new ArrayList<provinceId>();
		listOfId.addAll(mapServer.selectProvinceId()); // 选择城市ID与名称
		List<TMap> list = new ArrayList<TMap>(); // 标准返回形式TMap
		List<provinceCount> listOfCount = new ArrayList<provinceCount>();
		listOfCount = mapServer.selectCheckinProvinceCountOneday("demandpro" + keyword, date);
		SelectProvince sp = new SelectProvince();
		int max = 0;
		for (int i = 0; i < listOfId.size(); i++) {
			TMap temp = new TMap();
			temp.setName(CutString.cutString(listOfId.get(i).getProvinceName()));
			temp.setValue(sp.selectProvince(i, listOfCount.get(0)));
			list.add(temp);
			if(temp.getValue()>=max)
			{
				max = temp.getValue();
			}
		}
		map.data().addAll(list);
		map.name("该省关键词数量");
		map.type(SeriesType.map);
		map.mapType("china");
		map.selectedMode(SelectedMode.single);
		map.itemStyle().normal().label().show(true);
		map.itemStyle().emphasis().label().show(true);
		option.dataRange().setMax(max);
		option.series(map);
		return option.toString();
	}

	@RequestMapping("mapjson")
	@ResponseBody
	public Object mapjson(HttpServletRequest request) {
		String date = request.getParameter("date");
		GsonOption option = new GsonOption();
		// 设置title部分
		option.title().setText("微博数据统计图");
		option.title().setSubtext("微博数据");
		option.title().x(X.center);
		// 设置tooltip部分
		option.tooltip().trigger(Trigger.item);
		option.legend().setOrient(Orient.vertical);
		option.legend().setX(X.left);
		option.legend().data("微博数据展示");
		// 设置dataRange部分
		// option.dataRange().color("orange","yellow");
		option.dataRange().text("多", "少");

		option.dataRange().setMin(0);
		option.dataRange().calculable(true);
		Map map = new Map();
		List<provinceId> listOfId = new ArrayList<provinceId>();
		listOfId.addAll(mapServer.selectProvinceId()); // 选择城市ID与名称
		List<TMap> list = new ArrayList<TMap>(); // 标准返回形式TMap
		List<provinceCount> listOfCount = new ArrayList<provinceCount>();
		listOfCount.addAll(mapServer.selectProvinceCount(date));
		SelectProvince sp = new SelectProvince();
		int max = 0;
		for (int i = 0; i < listOfId.size(); i++) {
			TMap temp = new TMap();
			temp.setName(CutString.cutString(listOfId.get(i).getProvinceName()));
			temp.setValue(sp.selectProvince(i, listOfCount.get(0)));
			list.add(temp);
			if(temp.getValue()>=max)
			{
				max = temp.getValue();
			}
		}
		option.dataRange().setMax(max);
		map.data().addAll(list);
		map.name("微博数量");
		map.type(SeriesType.map);
		map.mapType("china");
		map.selectedMode(SelectedMode.single);
		map.itemStyle().normal().label().show(true);
		map.itemStyle().emphasis().label().show(true);
		option.series(map);
		return option.toString();
	}

	/**
	 * 雅安地震-高德地图api展示
	 * 
	 * @param request
	 * @return
	 * @throws DocumentException
	 * @throws JSONException
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("mapapi")
	@ResponseBody
	public Object mapapi()
			throws JsonGenerationException, JsonMappingException, IOException, DocumentException, JSONException {
		// public static void main(String[] args) throws
		// JsonGenerationException, JsonMappingException, IOException,
		// DocumentException, JSONException{
		List<Point_SandStorm> li = new ArrayList<Point_SandStorm>();// 返回前端的JSON对象
		ObjectMapper mapper = new ObjectMapper();// jackson将bean转换成json
		// dom4j解析xml
		SAXReader reader = new SAXReader();
		// File file = new
		// File(System.getProperty("user.dir")+"/Workplace/demo/src/main/resources/point_sandstorm.xml");
		File file = new File("D:/库/文档/demo/src/main/resources/point_sandstorm.xml");
/*		File file = new File("/home/bdg/sina/point/point_sandstorm.xml"); */
//		File file = new File("/Users/xgxy010/Documents/point/point_sandstorm.xml");
		Document document = reader.read(file);
		// 获取根元素
		Element root = document.getRootElement();
		// 获取所有子元素
		List<Element> childElements = root.elements();
		for (Element child : childElements) {
			Point_SandStorm point = new Point_SandStorm();
			// 解析子元素名
			if (!(child.elementText("geo").equals("null"))) {
				// JSON-lib
				JSONObject geo = new JSONObject(child.elementText("geo"));
				String coordinates = geo.getString("coordinates");
				String cor[] = coordinates.split(",");
				String x = cor[0].toString().substring(1, cor[0].length());
				String y = cor[1].toString().substring(0, cor[1].length() - 1);
				point.setGeo_y(x);
				point.setGeo_x(y);
			}
			point.setText(child.elementText("text"));
			li.add(point);
		}
		String jsonfromList = mapper.writeValueAsString(li);
		return jsonfromList.toString();
		// System.out.println(jsonfromList.toString());
	}
}
