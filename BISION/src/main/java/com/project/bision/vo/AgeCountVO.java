package com.project.bision.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AgeCountVO {
	private int keywordseq;
	private String keyword;
	private String age;
	private double pcmonthcount;
	private double mobilemonthcount;
}


	