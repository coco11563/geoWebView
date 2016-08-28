package com.work.method;
import java.text.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import com.github.abel533.echarts.series.Map;

public class BetweenDate {

		String dateFormat = "yyyy-MM-dd";
		SimpleDateFormat format = new SimpleDateFormat(dateFormat);
		
		public static List<String> Betweendate(String value1,String value2) {
			BetweenDate t = new BetweenDate();
			List<String> map =new ArrayList<String>();
			String date1 = value1;
			String date2 = value2;
			t.process(date1, date2,map);
			return map;
		}
		
		private void process(String date1, String date2, List<String> map){
			if(date1.equals(date2)){
			    System.out.println("两个日期相等!");	
			    return;
			}
			
			String tmp;
			if(date1.compareTo(date2) > 0){  //确保 date1的日期不晚于date2
				tmp = date1; date1 = date2; date2 = tmp;
			}
			
			tmp = format.format(str2Date(date1).getTime() + 3600*24*1000);
			
	        int num = 0; 
	        while(tmp.compareTo(date2) < 0){        	        
	        	map.add(tmp);    
	        	num++;
	        	tmp = format.format(str2Date(tmp).getTime() + 3600*24*1000);
	        }
	        
	        if(num == 0)
	        	System.out.println("两个日期相邻!");
		}

	private Date str2Date(String str) {
			if (str == null) return null;
			
			try {
				return format.parse(str);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			return null;
		}
	
}
