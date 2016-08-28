package com.work.common;

import java.util.HashMap;
import java.util.Map;


/**
 * JSONResult : Response JSONResult for RESTful,封装返回JSON格式的数据
 *
 * @author StarZou
 * @since 2014年5月26日 上午10:51:46
 */

public class JSONResult extends Result {

    private static final long serialVersionUID = 7880907731807860636L;

    /**
     * 数据
     */
    private Map<String, Object> data = new HashMap<String, Object>();

    public Map<String, Object> getData() {
		return data;
	}

	public void setData(Map<String, Object> data) {
		this.data = data;
	}

	public JSONResult() {
        super.setStatusCode(Constants.SUCCESS);
    }

    /**
     * 成功返回数据和消息
     *
     * @param data
     * @param message
     */
    public JSONResult(Map<String,Object> data, String message,String statusCode) {
        this.data = data;
        super.setMessage(message);
        super.setStatusCode(statusCode);
    }

    /**
     * 成功返回数据
     *
     * @param data
     */
    public JSONResult(Map<String,Object> data,String statusCode) {
        this.data = data;
        super.setStatusCode(statusCode);
    }
    
    public JSONResult(String statusCode) {
    	super.setStatusCode(statusCode);
    }
}