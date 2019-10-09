
package com.project.bision.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CpyStaokVO {
    private int cpykeywordseq; //기업키워드일련번호
    private int stockvalue;//주식총액
    private String country; //나라(KRW, USD, JPY)
    private String movevalue; //오른 금액
    private String per;//퍼센트
    private String sign;//기호(+,-)
}
