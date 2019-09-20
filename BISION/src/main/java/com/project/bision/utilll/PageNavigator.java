package com.project.bision.utilll;

/**
 * ê²Œì‹œ?Œ ?˜?´ì§? ì²˜ë¦¬ ?´?˜?Š¤
 */
public class PageNavigator {
	//?˜?´ì§? ê´?? ¨ ? •ë³? 
	private int countPerPage;		//?˜?´ì§??‹¹ ê¸?ëª©ë¡ ?ˆ˜
	private int pagePerGroup;		//ê·¸ë£¹?‹¹ ?˜?´ì§? ?ˆ˜ 
	private int currentPage;		//?˜„?¬ ?˜?´ì§? (ìµœê·¼ ê¸??´ 1ë¶??„° ?‹œ?‘)
	private int totalRecordsCount;	//? „ì²? ê¸? ?ˆ˜
	private int totalPageCount;		//? „ì²? ?˜?´ì§? ?ˆ˜
	private int currentGroup;		//?˜„?¬ ê·¸ë£¹ (ìµœê·¼ ê·¸ë£¹?´ 0ë¶??„° ?‹œ?‘)
	private int startPageGroup;		//?˜„?¬ ê·¸ë£¹?˜ ì²? ?˜?´ì§?
	private int endPageGroup;		//?˜„?¬ ê·¸ë£¹?˜ ë§ˆì?ë§? ?˜?´ì§?
	private int startRecord;		//? „ì²? ? ˆì½”ë“œ ì¤? ?˜„?¬ ?˜?´ì§? ì²? ê¸??˜ ?œ„ì¹? (0ë¶??„° ?‹œ?‘)
	
	/*
	 * ?ƒ?„±?
	 */
	public PageNavigator(int countPerPage, int pagePerGroup, int currentPage, int totalRecordsCount) {
		//?˜?´ì§??‹¹ ê¸? ?ˆ˜, ê·¸ë£¹?‹¹ ?˜?´ì§? ?ˆ˜, ?˜„?¬ ?˜?´ì§?, ? „ì²? ê¸? ?ˆ˜ë¥? ? „?‹¬ë°›ìŒ
		this.countPerPage = countPerPage;
		this.pagePerGroup = pagePerGroup;
		this.totalRecordsCount = totalRecordsCount;
		
		//? „ì²? ?˜?´ì§? ?ˆ˜
		totalPageCount = (totalRecordsCount + countPerPage - 1) / countPerPage;

		//? „?‹¬?œ ?˜„?¬ ?˜?´ì§?ê°? 1ë³´ë‹¤ ?‘?œ¼ë©? ?˜„?¬?˜?´ì§?ë¥? 1?˜?´ì§?ë¡? ì§?? •
		if (currentPage < 1)	currentPage = 1;
		//? „?‹¬?œ ?˜„?¬ ?˜?´ì§?ê°? ë§ˆì?ë§? ?˜?´ì§?ë³´ë‹¤ ?¬ë©? ?˜„?¬?˜?´ì§?ë¥? ë§ˆì?ë§? ?˜?´ì§?ë¡? ì§?? •
		if (currentPage > totalPageCount)	currentPage = totalPageCount;
		
		this.currentPage = currentPage;

		//?˜„?¬ ê·¸ë£¹
		currentGroup = (currentPage - 1) / pagePerGroup;
		
		//?˜„?¬ ê·¸ë£¹?˜ ì²? ?˜?´ì§?
		startPageGroup = currentGroup * pagePerGroup + 1;
		//?˜„?¬ ê·¸ë£¹?˜ ë§ˆì?ë§? ?˜?´ì§?
		endPageGroup = startPageGroup + pagePerGroup - 1;
		//?˜„?¬ ê·¸ë£¹?˜ ë§ˆì?ë§? ?˜?´ì§?ê°? ? „ì²? ?˜?´ì§? ?ˆ˜ë³´ë‹¤ ?‘?œ¼ë©? ? „ì²´í˜?´ì§? ?ˆ˜ë¥? ë§ˆì?ë§‰ìœ¼ë¡?.
		endPageGroup = endPageGroup > totalPageCount ? totalPageCount : endPageGroup;

		//? „ì²? ? ˆì½”ë“œ ì¤? ?˜„?¬ ?˜?´ì§? ì²? ê¸??˜ ?œ„ì¹?
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
