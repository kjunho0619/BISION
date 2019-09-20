package com.project.bision.utilll;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class newAPI {

    public void SearchKeyword(String searchNaver) {
        String clientId = "h9bluQDl5eOaZXp6hTOb";//?��?��리�??��?�� ?��?��?��?��?�� ?��?��?���?";
        String clientSecret = "3sfPcXUhr2";//?��?��리�??��?�� ?��?��?��?��?�� ?��?��릿값";
        
        try {
            String text = URLEncoder.encode(searchNaver, "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/search/news?query="+ text; // json 결과
            //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml 결과
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // ?��?�� ?���?
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // ?��?�� 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            System.out.println(response.toString());
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}