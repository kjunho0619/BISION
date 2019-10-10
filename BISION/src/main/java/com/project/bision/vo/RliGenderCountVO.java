package com.project.bision.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RliGenderCountVO {
	private int rlikeywordseq;
	private String rlikeyword;
	private double malecount;
	private double femalecount;
}
