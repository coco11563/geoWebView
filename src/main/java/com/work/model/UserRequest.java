package com.work.model;

public class UserRequest {
	private String demand_id;
	private String content;
	private String front_time;
	private String behind_time;
	private String creater;
	private String cityname;
	private int relationship;
	public int getRelationship() {
		return relationship;
	}
	public void setRelationship(int relationship) {
		this.relationship = relationship;
	}
	public String getCityname() {
		return cityname;
	}
	public void setCityname(String cityname) {
		this.cityname = cityname;
	}
	public String getCreater() {
		return creater;
	}
	public void setCreater(String creater) {
		this.creater = creater;
	}
	public String getBehind_time() {
		return behind_time;
	}
	public void setBehind_time(String behind_time) {
		this.behind_time = behind_time;
	}
	public String getFront_time() {
		return front_time;
	}
	public void setFront_time(String front_time) {
		this.front_time = front_time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDemand_id() {
		return demand_id;
	}
	public void setDemand_id(String demand_id) {
		this.demand_id = demand_id;
	}
}
