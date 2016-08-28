package com.work.method;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class CountDays {
	/**
	 * 
	 * @param 日期1
	 * @param 日期2
	 * @return 两天之间的日期差
	 * @throws ParseException
	 */
	public static int countDate(String value1, String value2) throws ParseException {
		int temp = 0;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date d1 = sdf.parse(value1);
		Date d2 = sdf.parse(value2);
		temp = (int) ((d1.getTime() - d2.getTime()) / (3600 * 1000 * 24));
		if (temp < 0) {//防止顺序出错
			return (temp * -1);
		} else {
			return temp;
		}
	}
	@SuppressWarnings("deprecation")
	public static int returnDay(String value) throws ParseException {
		int temp = 0;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date d1 = sdf.parse(value);
		temp = d1.getDate();
		return temp;
	}
	public static String getTime()
	{
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		return df.format(new Date());
	}
}
