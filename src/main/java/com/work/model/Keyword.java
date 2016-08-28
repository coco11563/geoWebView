package com.work.model;

public class Keyword {
	private String demand_id;
	private String content;
	private int level;
	private String front_level_id;
	private String create_user; 
	private String cityname;
	private String front_time;
	private String behind_time;
	public String getCreate_user() {
		return create_user;
	}

	public void setCreate_user(String create_user) {
		this.create_user = create_user;
	}


	public String getDemand_id() {
		return demand_id;
	}

	public void setDemand_id(String demand_id) {
		this.demand_id = demand_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}



	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}



	public String getFront_level_id() {
		return front_level_id;
	}

	public void setFront_level_id(String front_level_id) {
		this.front_level_id = front_level_id;
	}

	public String getCityname() {
		return cityname;
	}

	public void setCityname(String cityname) {
		this.cityname = cityname;
	}

	public String getFront_time() {
		return front_time;
	}

	public void setFront_time(String front_time) {
		this.front_time = front_time;
	}

	public String getBehind_time() {
		return behind_time;
	}

	public void setBehind_time(String behind_time) {
		this.behind_time = behind_time;
	}

}
