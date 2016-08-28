package com.work.common;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
@SuppressWarnings("unused")
public class DateUtil {
	/**
	 * 缺省格式化日期，返回yyyy-MM-dd格式日期
	 * 
	 * @param date
	 * @return
	 */
	public static String defaultFormat(Date date) {
		return defaultFormat(date, "yyyy-MM-dd");
	}
	
	public static String formatDate(Date date){
		return defaultFormat(date, "yyyy-MM-dd HH:mm:ss");
	}

	/**
	 * 缺省格式化日期，返回指定格式日期
	 * 
	 * @param date
	 * @return
	 */
	public static String defaultFormat(Date date, String format) {
		if (date == null) {
			return "";
		}
		SimpleDateFormat sf = new SimpleDateFormat(format);
		return sf.format(date);
	}

	/**
	 * 缺省格式化日期，返回yyyy-MM-dd格式日期
	 * 
	 * @param date
	 * @return
	 */
	public static String defaultFormat(long date) {
		return defaultFormat(new Date(date), "yyyy-MM-dd");
	}

	/**
	 * 缺省格式化日期，返回指定格式日期
	 * 
	 * @param date
	 * @return
	 */
	public static String defaultFormat(long date, String format) {
		return defaultFormat(new Date(date), format);
	}
	
	/**
	 * 将字符串转换为日期类型
	 * @param dateStr
	 * @param format
	 * @return
	 * @throws ParseException
	 */
	public static Date StringToDate(String dateStr,String format) throws ParseException{
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		Date date = sdf.parse(dateStr);
		return date;
	}
	
	public static String StringFormatString(String dateStr) throws ParseException{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = sdf.parse(dateStr);
		return formatDate(date);
	}
	
	public static String StringFormatString2(String dateStr) throws ParseException{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = sdf.parse(dateStr);
		return defaultFormat(date);
	}
	
	public static String dateToString(Date date){
		String format = "yyyy年MM月dd日 HH点:mm分:ss秒"; 
		SimpleDateFormat sdf = new SimpleDateFormat(format);      
        return sdf.format(date);      
	}
	
	public static String dateToString(Date date,String format){
		//String format = "yyyy年MM月dd日 hh点:mm分:ss秒"; 
		SimpleDateFormat sdf = new SimpleDateFormat(format);      
        return sdf.format(date);      
	}
	
	/** 
     * 根据日期获得星期 
     * @param date 
     * @return 
     */ 
		public static String getWeekOfDate(Date date) { 
		  String[] weekDaysName = { "星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六" }; 
		  String[] weekDaysCode = { "0", "1", "2", "3", "4", "5", "6" }; 
		  Calendar calendar = Calendar.getInstance(); 
		  calendar.setTime(date); 
		  int intWeek = calendar.get(Calendar.DAY_OF_WEEK) - 1; 
		  return weekDaysName[intWeek]; 
		} 

		/**
		 * 获得前day天的日期
		 * @return
		 * @throws ParseException 
		 */
		public static Date getLastDate(int day) throws ParseException{
			  Calendar   c   =   Calendar.getInstance(); 
			  Date date = new Date();
			  c.setTime(date);
			  c.add(Calendar.DAY_OF_MONTH, -day);
			  Date lastDate = c.getTime();
			  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			  String str = defaultFormat(lastDate);
			  return sdf.parse(str);
		}
		
		/**
		 * 获得明天的日期
		 * @return
		 * @throws ParseException 
		 */
		public static Date getTomorrowDate(){
			  Calendar   c   =   Calendar.getInstance(); 
			  Date date = new Date();
			  c.setTime(date);
			  c.add(Calendar.DAY_OF_MONTH, +1);
			  Date lastDate = c.getTime();
			  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			  String str = defaultFormat(lastDate);
			  try {
				return sdf.parse(str);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return date;
		}
		
		/**
		 * 将日期推后n个月
		 * @param dateStr
		 * @return
		 */
		public static String getAddMonth(String dateStr,int yearAdd,int monthAdd,int dayAdd,int hourAdd){
			if(dateStr==null || dateStr.equals("")){
				return "";
			}
			
			String formatStr = "yyyy-MM-dd HH:mm";
			SimpleDateFormat sdf = new SimpleDateFormat(formatStr);
			Calendar cal = Calendar.getInstance();
			Date newDate = null;
			try {
				Date date = sdf.parse(dateStr);
				cal.setTime(date);
				int year = cal.get(Calendar.YEAR)+yearAdd;
				int month = cal.get(Calendar.MONTH)+1+monthAdd;
				int day = cal.get(Calendar.DATE)+dayAdd;
				
				int hour = cal.get(Calendar.HOUR_OF_DAY)+hourAdd;
				int minute = cal.get(Calendar.MINUTE);
				
				newDate = sdf.parse(year +"-"+month+"-"+day+" "+hour+":"+minute);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			return DateUtil.defaultFormat(newDate, formatStr);
		}
		
		public static Date getLastDayOfMonth(Date date)   {     
			Calendar cDay = Calendar.getInstance();     
			cDay.setTime(date);
			cDay.set(Calendar.DAY_OF_MONTH, cDay.getActualMaximum(Calendar.DAY_OF_MONTH));
		    return cDay.getTime();     
		}
		
		/** 
	     * 获得当前年份 
	     *  
	     * @return 
	     */  
	    public static int getYear() {  
	        return Calendar.getInstance().get(Calendar.YEAR);  
	    }  
	  
	    /** 
	     * 获得当前月份 
	     *  
	     * @return 
	     */  
	    public static int getMonth() {  
	        return Calendar.getInstance().get(Calendar.MONTH) + 1;  
	    }
	    
	    /** 
	     * 获得某月第一天 
	     *  
	     * @return 
	     */
	    public static String getLastDayOfMonth(int year, int month) {     
	         Calendar cal = Calendar.getInstance();     
	         cal.set(Calendar.YEAR, year);     
	         cal.set(Calendar.MONTH, month-1);     
	         cal.set(Calendar.DAY_OF_MONTH,cal.getActualMaximum(Calendar.DATE));  
	         return  new   SimpleDateFormat( "yyyy-MM-dd ").format(cal.getTime());  
	    }   
	    /** 
	     * 获得某月最后一天 
	     *  
	     * @return 
	     */
	    public static String getFirstDayOfMonth(int year, int month) {     
	         Calendar cal = Calendar.getInstance();     
	         cal.set(Calendar.YEAR, year);     
	         cal.set(Calendar.MONTH, month-1);  
	         cal.set(Calendar.DAY_OF_MONTH,cal.getMinimum(Calendar.DATE));  
	         return   new   SimpleDateFormat( "yyyy-MM-dd ").format(cal.getTime());  
	    }
		
	    public static int getTheday(Date beginDate,Date endDate) throws ParseException{
	    	long timethis=DateUtil.StringToDate(DateUtil.defaultFormat(beginDate), "yyyy-MM-dd").getTime();
	    	long timeend=DateUtil.StringToDate(DateUtil.defaultFormat(endDate), "yyyy-MM-dd").getTime();
	    	long theday=(timeend-timethis)/(1000*60*60*24);
	    	return Integer.valueOf(theday+"")==0?1:Integer.valueOf(theday+"")+1;
	    }
	    
	    public static Date getAddDate(int minute){
	    	Calendar calendar = Calendar.getInstance();
	    	calendar.add(Calendar.MINUTE, minute); 
	    	return calendar.getTime();
	    }
	    
		public static void main(String[] args) throws ParseException {
			//Date date1 = new Date(2014, 1, 2,23,12,12);
			//Date date2 = new Date(2014, 1, 4,1,1,1);
			System.out.println(getAddDate(10));
		}
}
