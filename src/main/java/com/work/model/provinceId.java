package com.work.model;

public class provinceId {
	private String province_name;
	private Integer city_id;
	public String getProvinceName() {
		return province_name;
	}
	public void setProvinceName(String name) {
		this.province_name = name;
	}
	public Integer getCityId() {
		return city_id;
	}
	public void setCityId(Integer cityid) {
		this.city_id = cityid;
	}
}
