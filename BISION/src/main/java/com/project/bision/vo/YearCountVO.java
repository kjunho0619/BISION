package com.project.bision.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class YearCountVO {
	private int keywordseq;
	private String cpykeyword;
	private String month;
	private int totalcount;
}
