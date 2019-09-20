package com.project.bision.utilll;

/**
 * 게시?�� ?��?���? 처리 ?��?��?��
 */
public class PageNavigator {
	//?��?���? �??�� ?���? 
	private int countPerPage;		//?��?���??�� �?목록 ?��
	private int pagePerGroup;		//그룹?�� ?��?���? ?�� 
	private int currentPage;		//?��?�� ?��?���? (최근 �??�� 1�??�� ?��?��)
	private int totalRecordsCount;	//?���? �? ?��
	private int totalPageCount;		//?���? ?��?���? ?��
	private int currentGroup;		//?��?�� 그룹 (최근 그룹?�� 0�??�� ?��?��)
	private int startPageGroup;		//?��?�� 그룹?�� �? ?��?���?
	private int endPageGroup;		//?��?�� 그룹?�� 마�?�? ?��?���?
	private int startRecord;		//?���? ?��코드 �? ?��?�� ?��?���? �? �??�� ?���? (0�??�� ?��?��)
	
	/*
	 * ?��?��?��
	 */
	public PageNavigator(int countPerPage, int pagePerGroup, int currentPage, int totalRecordsCount) {
		//?��?���??�� �? ?��, 그룹?�� ?��?���? ?��, ?��?�� ?��?���?, ?���? �? ?���? ?��?��받음
		this.countPerPage = countPerPage;
		this.pagePerGroup = pagePerGroup;
		this.totalRecordsCount = totalRecordsCount;
		
		//?���? ?��?���? ?��
		totalPageCount = (totalRecordsCount + countPerPage - 1) / countPerPage;

		//?��?��?�� ?��?�� ?��?���?�? 1보다 ?��?���? ?��?��?��?���?�? 1?��?���?�? �??��
		if (currentPage < 1)	currentPage = 1;
		//?��?��?�� ?��?�� ?��?���?�? 마�?�? ?��?���?보다 ?���? ?��?��?��?���?�? 마�?�? ?��?���?�? �??��
		if (currentPage > totalPageCount)	currentPage = totalPageCount;
		
		this.currentPage = currentPage;

		//?��?�� 그룹
		currentGroup = (currentPage - 1) / pagePerGroup;
		
		//?��?�� 그룹?�� �? ?��?���?
		startPageGroup = currentGroup * pagePerGroup + 1;
		//?��?�� 그룹?�� 마�?�? ?��?���?
		endPageGroup = startPageGroup + pagePerGroup - 1;
		//?��?�� 그룹?�� 마�?�? ?��?���?�? ?���? ?��?���? ?��보다 ?��?���? ?��체페?���? ?���? 마�?막으�?.
		endPageGroup = endPageGroup > totalPageCount ? totalPageCount : endPageGroup;

		//?���? ?��코드 �? ?��?�� ?��?���? �? �??�� ?���?
		startRecord = (currentPage - 1) * countPerPage;
	}

	/*
	 * Getters and Setters
	 */
	public int getCountPerPage() {
		return countPerPage;
	}

	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}

	public int getPagePerGroup() {
		return pagePerGroup;
	}

	public void setPagePerGroup(int pagePerGroup) {
		this.pagePerGroup = pagePerGroup;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalRecordsCount() {
		return totalRecordsCount;
	}

	public void setTotalRecordsCount(int totalRecordsCount) {
		this.totalRecordsCount = totalRecordsCount;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getCurrentGroup() {
		return currentGroup;
	}

	public void setCurrentGroup(int currentGroup) {
		this.currentGroup = currentGroup;
	}

	public int getStartPageGroup() {
		return startPageGroup;
	}

	public void setStartPageGroup(int startPageGroup) {
		this.startPageGroup = startPageGroup;
	}

	public int getEndPageGroup() {
		return endPageGroup;
	}

	public void setEndPageGroup(int endPageGroup) {
		this.endPageGroup = endPageGroup;
	}

	public int getStartRecord() {
		return startRecord;
	}

	public void setStartRecord(int startRecord) {
		this.startRecord = startRecord;
	}

	@Override
	public String toString() {
		return "PageNavigator [countPerPage=" + countPerPage + ", pagePerGroup=" + pagePerGroup + ", currentPage="
				+ currentPage + ", totalRecordsCount=" + totalRecordsCount + ", totalPageCount=" + totalPageCount
				+ ", currentGroup=" + currentGroup + ", startPageGroup=" + startPageGroup + ", endPageGroup="
				+ endPageGroup + ", startRecord=" + startRecord + "]";
	}
	
}
