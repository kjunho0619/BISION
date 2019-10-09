package com.project.bision.util;

import java.util.ArrayList;

import com.project.bision.vo.CpyMonthCountVO;
import com.project.bision.vo.CpyNewsInfoVO;
import com.project.bision.vo.CpyStaokVO;
import com.project.bision.vo.CpyYearCountVO;

public class OverallAnalysis {

	public double searchCountOverall(CpyMonthCountVO cpymonthcount, ArrayList<CpyYearCountVO> cpyYearCountList){
		//검색량 종합평가 값
		double thismonthCount = (cpymonthcount.getPccount() + cpymonthcount.getMobilecount());//이번달 검색량
		double lastmonthCount = (cpyYearCountList.get(cpyYearCountList.size()-1).getTotalcount());//저번달 검색량
		
		double totalmonthcount = ((thismonthCount - lastmonthCount) / thismonthCount) * 200.0; //(이번달 - 저번달) / 이번달 * 200
		 
		/* System.out.println("이번달 검색 수 : "  + thismonthCount);
		
		 	System.out.println("저번달 검색 수 : " + lastmonthCount);
		 
			System.out.println("검색량 종합평가 비율 : " + totalmonthcount); */
		
		return totalmonthcount; 
	}

	public double overallEmtanalysis(ArrayList<CpyNewsInfoVO> cpyNewsInfo) {
		// TODO Auto-generated method stub
		double sumEmtanalysis = 0;
		
		 //감정분석 종합평가 값
		 for(CpyNewsInfoVO news : cpyNewsInfo){
			 sumEmtanalysis = sumEmtanalysis + news.getEmtanalysis();//감정분석 결과 값 합산
		 }
		 
		 double ageEmtanalysis = (sumEmtanalysis / cpyNewsInfo.size());

		 double totalemtanalysis = ((ageEmtanalysis/100.0) * 60.0);
		 
		 /* System.out.println("감정분석 결과 값 합산 : " + sumEmtanalysis);
		 System.out.println("감정분석 평균 값 : " + ageEmtanalysis);
		 System.out.println("감정분석 종합평가 비율 : " + totalemtanalysis);//(감정분석 평균 값/100) * 60*/
		
		return totalemtanalysis;
	}

	public double overallStaokPer(CpyStaokVO cpyStaok) {
		// TODO Auto-generated method stub
		 //주식 종합평가 값
		 String staokPer = cpyStaok.getPer();
		 double staokPerDouble = Double.parseDouble(staokPer);
		
		 double totalStaokPer = ((staokPerDouble/100) * 20.0);
		 
		 /*System.out.println("주식 persent : " + staokPerDouble);
		    System.out.println("주식 종합평가 비율 : " + totalStaokPer);
		   */
		 
		return totalStaokPer;
	}
	
}
