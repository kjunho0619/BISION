package com.project.bision.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RliYearCountVO {
	private int rlikeywordseq;
	private String keyword;
	private String month;
	private int totalcount;
}
