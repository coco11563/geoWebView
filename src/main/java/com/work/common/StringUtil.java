package com.work.common;

/**
 * 类说明：字符串工具类
 * 
 */
public class StringUtil {
	/**
     * get postfix of the path
     * @param path
     * @return
     */
    public static String getPostfix(String path) {
        if (path == null || Constants.EMPTY.equals(path.trim())) {
            return Constants.EMPTY;
        }
        if (path.contains(Constants.POINT)) {
            return path.substring(path.lastIndexOf(Constants.POINT) + 1, path.length());
        }
        return Constants.EMPTY;
    }

}
