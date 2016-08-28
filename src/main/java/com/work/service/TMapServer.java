package com.work.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.work.dao.TMapMapper;
import com.work.model.Keyword;
import com.work.model.TMap;
import com.work.model.User;
import com.work.model.UserRequest;
import com.work.model.provinceCount;
import com.work.model.provinceId;

@Service
public class TMapServer {
	
	@Resource
	private TMapMapper mapMapper;
	public List<provinceId> selectProvinceId(){
		return mapMapper.selectProvinceId();//选择省份ID
	}
	public List<Keyword> selectDemand(){
		return mapMapper.selectDemand();//选择关键字
	}
	public List<Keyword> selectRequest(@Param(value="creater") String creater){
		return mapMapper.selectRequest(creater);//根据用户需求表
	}
	//根据用户请求的关键词时间，返回相应的时间区间
	public List<Keyword> gettime(@Param(value="creater") String creater,@Param(value="content") String content,@Param(value="cityname") String cityname){
		return mapMapper.gettime(creater,content,cityname);
	}
	public List<Keyword> getcity(@Param(value="creater") String creater,@Param(value="content") String content){
		return mapMapper.getcity(creater,content);
	}
	public List<provinceCount> selectProvinceCount(String date){
		return mapMapper.selectProvinceCount(date);
	}
	public List<provinceCount> selectProvinceCountBetween(Map<String,String> map){
		return mapMapper.selectProvinceCountBetween(map);
	}
/**
 * 
 * @param demandpro+keyword
 * @param value1
 * @param value2
 * @return
 */
	public List<provinceCount> selectCheckinProvinceCount(@Param(value="provincename") String provincename,@Param(value="value1") String value1,@Param(value="value2") String value2){
		return mapMapper.selectCheckinProvinceCount(provincename,value1,value2);
	}
	/**
	 * 
	 * @param demandpro+keyword
	 * @param value
	 * @return
	 */
	public List<provinceCount> selectCheckinProvinceCountOneday(@Param(value="provincename") String provincename,@Param(value="value") String value){
		return mapMapper.selectCheckinProvinceCountOneday(provincename,value);
	}
	/**
	 * 
	 * @param value
	 * @return demand_id
	 */
	public String selectKeyword(@Param(value="value") String value){
		return mapMapper.selectKeyword(value);//选择关键字
	}
	/**
	 * 
	 * @param keyword
	 */
	
	public void keywordinsert(Keyword keyword){
		mapMapper.keywordinsert(keyword);
	}
	/**
	 * 
	 * @param userrequest
	 * 
	 */
	public void requestinsert(UserRequest userrequest){
		mapMapper.requestinsert(userrequest);
	}
	/**
	 * 
	 * @return userrequestlist
	 */
	public List<UserRequest> selectuserrequest(){
		return mapMapper.selectuserrequest();//选择关键字
	}
	public List<Keyword> getKeyword(@Param(value="content") String content,@Param(value="cityname") String cityname){
		return mapMapper.getKeyword(content,cityname);
	}
}
