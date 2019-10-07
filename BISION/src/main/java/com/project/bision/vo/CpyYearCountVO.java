package com.project.bision.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CpyYearCountVO {
	private int cpykeywordseq;
	private String cpykeyword;
	private String month;
	private int totalcount;
}
