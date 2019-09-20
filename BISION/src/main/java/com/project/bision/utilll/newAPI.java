package com.project.bision.utilll;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class newAPI {

    public void SearchKeyword(String searchNaver) {
        String clientId = "h9bluQDl5eOaZXp6hTOb";//?ï†?îåÎ¶¨Ï??ù¥?Öò ?Å¥?ùº?ù¥?ñ∏?ä∏ ?ïÑ?ù¥?îîÍ∞?";
        String clientSecret = "3sfPcXUhr2";//?ï†?îåÎ¶¨Ï??ù¥?Öò ?Å¥?ùº?ù¥?ñ∏?ä∏ ?ãú?Å¨Î¶øÍ∞í";
        
        try {
            String text = URLEncoder.encode(searchNaver, "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/search/news?query="+ text; // json Í≤∞Í≥º
            //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml Í≤∞Í≥º
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // ?†ï?ÉÅ ?ò∏Ï∂?
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // ?óê?ü¨ Î∞úÏÉù
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