package com.work.method;

public class CutString {
	public static String cutString(String input){
		String result = "";
		if(input.contains("黑龙江"))
			result = "黑龙江";

		else if(input.contains("内蒙古"))
			result = "内蒙古";
		else {
			result = input.substring(0,2);
		}
			
		return result;
	}
}
