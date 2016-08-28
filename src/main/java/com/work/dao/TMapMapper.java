package com.work.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.work.model.Keyword;
import com.work.model.TMap;
import com.work.model.User;
import com.work.model.UserRequest;
import com.work.model.provinceCount;
import com.work.model.provinceId;

@MapperScan("mapMapper")
public interface TMapMapper {
	List<provinceId> selectProvinceId();
	List<provinceCount> selectProvinceCount(String date);  
	List<provinceCount> selectProvinceCountBetween(Map<String,String> map);    
	List<Keyword> selectDemand();
	List<Keyword> selectRequest(@Param(value="creater") String creater);
	List<Keyword> gettime(@Param(value="creater") String creater,@Param(value="content") String content,@Param(value="cityname") String cityname);
	List<Keyword> getcity(@Param(value="creater") String creater,@Param(value="content") String content);
	List<provinceCount> selectCheckinProvinceCount(@Param(value="provincename") String provincename,@Param(value="value1") String value1,@Param(value="value2") String value2);
	List<provinceCount> selectCheckinProvinceCountOneday(@Param(value="provincename") String provincename,@Param(value="value") String value);
	String selectKeyword(@Param(value="value") String value);
	List<UserRequest> selectuserrequest();
	List<Keyword> getKeyword(@Param(value="content") String content,@Param(value="cityname") String cityname);
	void keywordinsert(Keyword keyword);
	void requestinsert(UserRequest userrequest);
}
