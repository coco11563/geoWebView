package com.work.common;

import java.util.ResourceBundle;

/**
 * 项目参数工具类
 * 
 */
public class ResourceUtil {

	private static final ResourceBundle bundle = java.util.ResourceBundle.getBundle("util");
    
    public static String getKey(String key){
    	 return bundle.getString(key);
    }
    
}
