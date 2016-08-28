package com.work.common;

import java.io.Serializable;

/**
 * Result : 响应的结果对象
 *
 * @author zc
 * @since 2014-09-27 16:28
 */
public class Result implements Serializable {
	
    private static final long serialVersionUID = 6288374846131788743L;

    /**
     * 信息
     */
    private String message;

    /**
     * 状态码
     */
    private String statusCode;


    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(String statusCode) {
        this.statusCode = statusCode;
    }
}
