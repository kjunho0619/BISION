
package com.project.bision.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CpyNewsInfoVO {
    private int news_no; //뉴스 일련번호
    private int cpykeywordseq;//기업키워드일련번호
    private String news_division; //뉴스 구분(한국(KOR), 일본(JPN), 미국(USA) 등)
    private String news_title; //뉴스 제목
    private String news_content;//뉴스 내용
    private String news_image;//뉴스 이미지 경로
    private String news_date;//뉴스 날짜
    private String byline;//기사
    private int emtanalysis;//감정분석 결과((-)부정, (+)긍정)

    private String searchWord;//검색 키워드
}
