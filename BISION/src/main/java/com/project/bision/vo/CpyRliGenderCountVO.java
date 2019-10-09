package com.project.bision.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CpyRliGenderCountVO {
	private int cpyrlikeywordseq;
	private String cpyrlikeyword;
	private double malecount;
	private double femalecount;
}
