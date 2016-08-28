package com.work.method;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

import com.work.model.provinceCount;

public class putIntoListOneday {
	@SuppressWarnings("static-access")
	public static void putintolist(List<provinceCount> prodata, String date, String keyword)
			throws ParseException, NumberFormatException, SQLException {
			jdbcSelectOneDate jdbc = new jdbcSelectOneDate();
			int i = 0;
			provinceCount pc = new provinceCount();
			pc.setProvince00 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province00").get(i).toString()));
			pc.setProvince01 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province01").get(i).toString()));
			pc.setProvince02 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province02").get(i).toString()));
			pc.setProvince03 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province03").get(i).toString()));
			pc.setProvince04 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province04").get(i).toString()));
			pc.setProvince05 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province05").get(i).toString()));
			pc.setProvince06 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province06").get(i).toString()));
			pc.setProvince07 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province07").get(i).toString()));
			pc.setProvince08 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province08").get(i).toString()));
			pc.setProvince09 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province09").get(i).toString()));
			pc.setProvince10 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province10").get(i).toString()));
			pc.setProvince11 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province11").get(i).toString()));
			pc.setProvince12 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province12").get(i).toString()));
			pc.setProvince13 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province13").get(i).toString()));
			pc.setProvince14 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province14").get(i).toString()));
			pc.setProvince15 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province15").get(i).toString()));
			pc.setProvince16 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province16").get(i).toString()));
			pc.setProvince17 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province17").get(i).toString()));
			pc.setProvince18 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province18").get(i).toString()));
			pc.setProvince19 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province19").get(i).toString()));
			pc.setProvince20 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province20").get(i).toString()));
			pc.setProvince21 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province21").get(i).toString()));
			pc.setProvince22 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province22").get(i).toString()));
			pc.setProvince23 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province23").get(i).toString()));
			pc.setProvince24 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province24").get(i).toString()));
			pc.setProvince25 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province25").get(i).toString()));
			pc.setProvince26 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province26").get(i).toString()));
			pc.setProvince27 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province27").get(i).toString()));
			pc.setProvince28 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province28").get(i).toString()));
			pc.setProvince29 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province29").get(i).toString()));
			pc.setProvince30 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province30").get(i).toString()));
			pc.setProvince31 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province31").get(i).toString()));
			pc.setProvince32 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province32").get(i).toString()));
			pc.setProvince33 ( Integer.parseInt(jdbc.jdbcSelect(date,"demandpro" + keyword,"province33").get(i).toString()));
			prodata.add(pc);
		}

}
