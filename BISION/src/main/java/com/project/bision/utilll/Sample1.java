package com.project.bision.utilll;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Properties;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.mashape.unirest.http.exceptions.UnirestException;
import com.project.bision.utilll.PropertiesLoader;
import com.project.bision.utilll.RestClient;

public class Sample1 {

	
	public void searchKeyword(String searchNaver)throws UnirestException, IOException, GeneralSecurityException, ParseException {
	
	   Properties properties = PropertiesLoader.fromResource("sample.properties");
	   String baseUrl = properties.getProperty("BASE_URL");
	   String apiKey = properties.getProperty("API_KEY");
	   String secretKey = properties.getProperty("SECRET_KEY");
	   long customerId = Long.parseLong(properties.getProperty("CUSTOMER_ID"));
	   
	   RestClient rest = RestClient.of(baseUrl, apiKey, secretKey);
	   
	   
	   String keywordsPath = "/keywordstool"; 

	   com.mashape.unirest.http.HttpResponse<String> response =
	     rest.get(keywordsPath, customerId)
	       .queryString("hintKeywords", searchNaver)
	       .queryString("includeHintKeywords", 1)
	       .queryString("showDetail", 1)
	       .asString();
	   String keyBody =  response.getBody();
	   //rest.asObject(response, RelKeyword[].class);
	   
	   /* Data Parser */
	   JSONParser jsonParser = new JSONParser();
	   JSONObject jsonObject = (JSONObject) jsonParser.parse(keyBody);
	   JSONArray keywordList = (JSONArray) jsonObject.get("keywordList");
	   
	   System.out.println(keywordList.toString());
	   
	   
	   
	   
	   
	   


}
}
