
package com.project.bision.vo;

import lombok.Data;

@Data
public class NewsInfoVO {

    private int news_no; //뉴스 일련번호
    private String keyword;//키워드
    private String news_division; //뉴스 구분(한국(KOR), 일본(JPN), 미국(USA) 등)
    private String news_title; //뉴스 제목
    private String news_content;//뉴스 내용
    private String news_provider;//뉴스 발간사
    private String news_date;//뉴스 날짜
    private String byline;//기사
}
