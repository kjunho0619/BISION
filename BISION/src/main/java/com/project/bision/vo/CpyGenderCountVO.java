package com.project.bision.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CpyGenderCountVO {
	private int cpykeywordseq;
	private String cpykeyword;
	private double malecount;
	private double femalecount;
}
