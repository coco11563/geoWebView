package com.work.method;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import com.work.model.UserRequest;

public class Connect {
	public static String connUrl ( UserRequest ur ,String demand_id) throws IOException
	{
		String url = "http://192.168.1.181:8080/geoweiboback/key?verified=geoweibokey&startDate="+ur.getFront_time()+"&endDate="+ur.getBehind_time()+"&demandid="+demand_id;
		System.out.println(url);
		String content = ur.getContent() + ";";
		List<String> templist = new ArrayList<String>();
		String temp = "";
		for( int index = 0 ; index < content.length() ; index++ )
		{
			char c = ';';
			if((content.charAt(index))!=c)
			{
				temp = temp + content.charAt(index);
			}
			else
			{
				templist.add(temp);
				temp = "";
			}
		}
		for(int i = 0 ; i < templist.size() ; i++)
		{
			url = url + "&key" + (i+1) +"=" + templist.get(i);
		}
		url = url + "&bool="+ur.getRelationship();
		URL getUrl;
		try
		{
			getUrl = new URL ( url );
			HttpURLConnection connection = (HttpURLConnection) getUrl
					.openConnection ( );
			connection.setReadTimeout(20 * 1000); 
			connection.connect ( );
			BufferedReader reader = new BufferedReader ( new InputStreamReader (
					connection.getInputStream ( ), "utf-8" ) );// 设置
			String jason_data = "";
			while ( ( jason_data = reader.readLine ( ) ) != null )
			{
				return jason_data;
			}
		}
		catch ( IOException e )
		{
			// TODO Auto-generated catch block
			return "error";
		}
		return "error";
	}

}
