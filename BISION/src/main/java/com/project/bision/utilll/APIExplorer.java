package com.project.bision.utilll;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class APIExplorer {

    public void searchKey(String searchNaver) {
        String clientId = "jrZFeU17B8TYDYczPDnV";//?ï†?îåÎ¶¨Ï??ù¥?Öò ?Å¥?ùº?ù¥?ñ∏?ä∏ ?ïÑ?ù¥?îîÍ∞?";
        String clientSecret = "LPD6wlSt3K";//?ï†?îåÎ¶¨Ï??ù¥?Öò ?Å¥?ùº?ù¥?ñ∏?ä∏ ?ãú?Å¨Î¶øÍ∞í";
       
        try {
            String apiURL = "https://openapi.naver.com/v1/datalab/search";
			/*
			 * String body =
			 * "{\"startDate\":\"2019-09-01\",\"endDate\":\"2019-09-03\",\"timeUnit\":\"date\",\"keywordGroups\":[{\"groupName\":\"  "
			 * +searchNaver+"\",\"keywords\":[\" "+searchNaver+"\",\""+searchNaver+"\"]}]}";
			 */
            String body = "{\"startDate\":\"2019-09-10\",\"endDate\":\"2019-09-13\",\"timeUnit\":\"date\",\"keywordGroups\":[{\"groupName\":\""+searchNaver+"\",\"keywords\":[\""+searchNaver+"\",\""+searchNaver+"\"]}],\"device\":\"pc\",\"ages\":[\"1\",\"2\",\"3\",\"4\"],\"gender\":\"f\"}";
            byte [] byteArray = body.getBytes();
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("POST");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            con.setRequestProperty("Content-Type", "application/json");

            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.write(byteArray);
            wr.flush();
            wr.close();

            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // ?†ï?ÉÅ ?ò∏Ï∂?
                br = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));
            } else {  // ?óê?ü¨ Î∞úÏÉù
                br = new BufferedReader(new InputStreamReader(con.getErrorStream(), "UTF-8"));
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