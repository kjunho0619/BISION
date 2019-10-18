package com.project.bision.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class GenderCountVO {
	private int keywordseq;
	private String keyword;
	private double malecount;
	private double femalecount;
}
