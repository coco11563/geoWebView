package com.work.common;

public class Constants {
	public static final String CONTEXT_PATH = "ctx";
    public static final Integer DEFAULT_PAGE_SIZE = 10;
    public static final String SUCCESS = "200";//成功
    public static final String ERROE = "201";//错误
    public static final String SERVER_ERROE = "500";//服务器错误
    public static final String JSON_ERROE = "501";//JSON错误
    public static final String PARAM_ERROR = "502";//参数错误
    public static final String LOGIN_TIME_OUT = "401";//登陆超时
    public static final String TOKEN_ERROR = "402";//无效的TOKEN
    public static final String SERVER_MSG = "网络异常,请稍后访问";
    
    
    public static final String OFFICE_EXCEL_2003_POSTFIX = "xls";
    public static final String OFFICE_EXCEL_2010_POSTFIX = "xlsx";
    public static final String EMPTY = "";
    public static final String POINT = ".";
    public static final String LIB_PATH = "lib";
    public static final String STUDENT_INFO_XLS_PATH = LIB_PATH + "/student_info" + POINT + OFFICE_EXCEL_2003_POSTFIX;
    public static final String STUDENT_INFO_XLSX_PATH = LIB_PATH + "/student_info" + POINT + OFFICE_EXCEL_2010_POSTFIX;
    public static final String NOT_EXCEL_FILE = " : Not the Excel file!";
    public static final String PROCESSING = "Processing...";
    
	
}
