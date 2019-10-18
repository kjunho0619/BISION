<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>BISION</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">

<!-- c3 Charts -->
<link href="css/plugins/c3/c3.min.css" rel="stylesheet">

<!-- orris -->
<link href="css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">

<!-- FooTable -->
<link href="css/plugins/footable/footable.core.css" rel="stylesheet">

<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


<style type="text/css">
	.truncate-text {
    max-width: 700px; /** Adjust width to your needs */
    display:inline-block;
    vertical-align: middle;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
}
</style>
</head>
<!-- Mainly scripts -->
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Morris -->
<script src="js/plugins/morris/raphael-2.1.0.min.js"></script>
<script src="js/plugins/morris/morris.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>

<!-- ChartJS-->
<script src="js/plugins/chartJs/Chart.min.js"></script>

<!-- FooTable -->
<script src="js/plugins/footable/footable.all.min.js"></script>

<!-- d3 and c3 charts -->
<script src="js/plugins/d3/d3.min.js"></script>
<script src="js/plugins/c3/c3.min.js"></script>

<script type="text/javascript">
	    $(function() {
 	        var barData = {
	                labels: ["0~12","13~19","20~24","25~29","30~39","40~49","50~"],
	                datasets: [
	                    {
	                        label: "PC",
	                        backgroundColor: 'rgba(220, 220, 220, 0.5)',
	                        pointBorderColor: "#fff",
	                        data: [
	                        	<c:forEach items="${cpyAgeCountList}" var="AgeCount">
	                        		'${AgeCount.pcmonthcount}',	
	                        	</c:forEach>
	                        	]
	                    },
	                    {
	                        label: "Moblie",
	                        backgroundColor: 'rgba(26,179,148,0.5)',
	                        borderColor: "rgba(26,179,148,0.7)",
	                        pointBackgroundColor: "rgba(26,179,148,1)",
	                        pointBorderColor: "#fff",
	                        data: [
	                        	<c:forEach items="${cpyAgeCountList}" var="AgeCount">
                        		'${AgeCount.mobilemonthcount}',	
                        		</c:forEach>
	                        	]
	                    }
	                ]
	            }; 
	            
	            var barOptions = {
	                responsive: true
	            };


	            var ctx2 = document.getElementById("barChart").getContext("2d");
	            new Chart(ctx2, {type: 'bar', data: barData, options:barOptions});
	            
	            Morris.Donut({
	                element: 'morris-donut-chart',
	                data: [{ label: "PC", value: '${cpymonthcount.pccount}' },
	                    { label: "Moblie", value: '${cpymonthcount.mobilecount}' }],
	                resize: true,
	                colors: ['#dcdcdc', '#87d6c6'],
	            });
	            
	            
	            Morris.Line({
	                element: 'morris-one-line-chart',
	                    data: [
	                    	<c:forEach items="${cpyYearCountList}" var="YearCount">
	                        	{ year: '${YearCount.month}', value: '${YearCount.totalcount}' },
	                        </c:forEach>
	                    ],
	                xkey: 'year',
	                ykeys: ['value'],
	                resize: true,
	                lineWidth:4,
	                labels: ['Value'],
	                lineColors: ['#1ab394'],
	                pointSize:5,
	            });
	            
	            c3.generate({
	                bindto: '#pie',
	                data:{
	                    columns: [
	                        ['man', '${cpyGenderCount.malecount}'],
	                        ['woman', '${cpyGenderCount.femalecount}']
	                    ],
	                    colors:{
	                    	man: '#dcdcdc',
	                    	woman: '#87d6c6'
	                    },
	                    type : 'pie'
	                }
	            });
	    });
    	function cpySearchKeyword(){
    		$("#cpysearchForm").submit();
    	}
    	
    	function submit() {
    		$("#searchForm").submit();
    	}
    	
    	function searchNewsDetali(news_no){
    		var win = window.open("searchNewsDetali?news_seq=" + news_no, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=200,left=200,width=1200,height=1000");
    	}
    	
    	function RliSearchForm(rlikeyword, keywordseq) {
			location.href="Rlisearch?rlikeyword="+rlikeyword+"&keywordseq="+keywordseq;
		}
    </script>

<body class="top-navigation">

	<div id="wrapper">
		<div id="page-wrapper" class="gray-bg">
			<div class="row border-bottom white-bg">
				<nav class="navbar navbar-expand-lg navbar-static-top"
					role="navigation">

					<a href="homeForm" class="navbar-brand"
						style="padding-top: 5px; padding-bottom: 5px;"><img
						src="img/BISION_logo_last_final_2.png"></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbar" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fa fa-reorder"></i>
					</button>

					<div class="navbar-collapse collapse" id="navbar">
						<ul class="nav navbar-nav mr-auto">
							<li class="active"><a aria-expanded="false" role="button"
								href="homeForm"> <font class="colorFont">메인 페이지</font></a></li>
							<li class="dropdown"><a aria-expanded="false" role="button"
								href="mainForm"><font class="colorFont">기업분석</font></a></li>
							<li class="dropdown"><a aria-expanded="false" role="button"
								href="keywordmain"><font class="colorFont">키워드 분석</font></a></li>
<!-- 							<li class="dropdown"><a aria-expanded="false" role="button"
								href="#"><font class="colorFont">보고서 추출</font></a></li> -->
						</ul>
						<ul class="nav navbar-top-links navbar-right">
								<c:if test="${sessionScope.loginUser != null}">
										<li><a href="myPageForm"><i class="fa fa-user-o"></i>
										<font class="colorFont">마이페이지</font></a></li>
										<li><a href="logout"><i class="fa fa-sign-out"></i><font
												class="colorFont">로그아웃</font></a></li>
								</c:if>
						</ul>
					</div>
				</nav>
			</div>

			<div class="wrapper wrapper-content">
				<div class="container">

					<!-- searchFrom -->
					<div class="search-form" style="margin-bottom: 50px;">
						<form action="searchKeyword" method="post" id="searchKeywordForm">
							<div class="input-group">
								<input type="text" placeholder="키워드를 입력하세요."
									name="searchKeyword" id="keywordSearchText"
									class="form-control form-control-lg">
								<div class="input-group-btn">
									<button class="btn btn-lg btn-primary" id="searchButton"
										onclick="cpySearchKeyword();">Search</button>
								</div>
							</div>
						</form>
					</div>

					<div class="row">
						<div class="col-lg-6">
							<div class="ibox ">
								<div class="ibox-title">
									<h5>연관 검색어</h5>
									<div class="ibox-tools">
										<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
										</a> <a class="dropdown-toggle" data-toggle="dropdown" href="#">
											<i class="fa fa-wrench"></i>
										</a>
										<ul class="dropdown-menu dropdown-user">
											<li><a href="#" class="dropdown-item">연관 검색어</a></li>
											<li><a href="#" class="dropdown-item">연관 검색 통계</a></li>
										</ul>
										<a class="close-link"> <i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="ibox-content">
									<div style="height: 250px;text-align: center;">
										<!-- 코드 추가 -->
										<c:choose>
											<c:when test="${noKeyword != null}">
												<h1 style="padding-top: 100px;">검색된 결과가 없습니다.</h1>
											</c:when>
											<c:otherwise>
												<br>
												<br>
												<br>
												<br>
												<br>
												<c:forEach items="${cpyRliKeywordList}" var="cpyRliKeyword"
													varStatus="status">
													<button type="button" class="btn btn-outline btn-primary" onclick="RliSearchForm('${cpyRliKeyword.rlikeyword}','${keywordseq}')">${cpyRliKeyword.rlikeyword}</button>&nbsp;&nbsp;
					                    			<c:if test="${status.count%4 == 0}">
														<br>
														<br>
													</c:if>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-6">
							<div class="ibox ">
								<div class="ibox-title">
									<h5>주식</h5>
									<div class="ibox-tools">
										<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
										</a> <a class="close-link"> <i class="fa fa-times"></i>
										</a>
									</div>
								</div>
								<div class="ibox-content">
									<div style="height: 250px; text-align: center;">
										<c:choose>
											<c:when test="${noKeyword != null}">
												<h1 style="padding-top: 60px;">검색된 결과가 없습니다.</h1>
											</c:when>
											<c:otherwise>
												<c:choose>
													<c:when test="${cpyStaok == null}">
														<div style="padding-top: 60px;">
															<h2 style="color:re">키워드 검색은 주식정보를 제공하지 않습니다.</h2>
														</div>													
													</c:when>
													<c:when test="${cpyStaok.sign eq '+'}">
													<h1><strong>주식</strong></h1>
													<div style="padding-top: 60px;">
														<!-- <i class="fa fa-line-chart" style="font-size: 225px;"></i> -->
														<strong style="font-size: 30px; color:red;">${cpyStaok.stockvalue}</strong>&nbsp;&nbsp;
														<font style="font-size: 24px;">${cpyStaok.country}</font>
														<font style="color:red;font-size: 20px;">${cpyStaok.sign} ${cpyStaok.movevalue}( ${cpyStaok.per} %<i class="fa fa-sort-asc"></i>)</font>
													 </div>														
													</c:when>
													<c:otherwise>
													<h1><strong>주식</strong></h1>
													<div style="padding-top: 60px;">
														<strong style="font-size: 30px; color:blue;">${cpyStaok.stockvalue}</strong>&nbsp;&nbsp;
														<font style="font-size: 24px;">${cpyStaok.country}</font>
														<font style="color:blue;font-size: 20px;">${cpyStaok.sign} ${cpyStaok.movevalue}( ${cpyStaok.per} %<i class="fa fa-sort-desc"></i>)</font>
													</div>													
													</c:otherwise>
												</c:choose>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-6">
							<div class="ibox ">
								<div class="ibox-title">
									<h5>키워드 검색량</h5>
									<div class="ibox-tools">
										<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
										</a> <a class="close-link"> <i class="fa fa-times"></i>
										</a>
									</div>
								</div>
								<div class="ibox-content">
									<div style="height: 250px;text-align: center;">
										<c:choose>
											<c:when test="${noKeyword != null}">
												<h1 style="padding-top: 100px;">검색된 결과가 없습니다.</h1>
											</c:when>
											<c:otherwise>
												<div id="morris-donut-chart" style="height: 250px;"></div>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="ibox ">
								<div class="ibox-title">
									<h5>연령별 검색량(%)</h5>
									<div class="ibox-tools">
										<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
										</a> <a class="close-link"> <i class="fa fa-times"></i>
										</a>
									</div>
								</div>
								<div class="ibox-content">
									<div style="height: 250px;text-align: center;">
										<c:choose>
											<c:when test="${noKeyword != null}">
												<h1 style="padding-top: 100px;">검색된 결과가 없습니다.</h1>
											</c:when>
											<c:otherwise>
												<canvas id="barChart" style="height: 250px;"></canvas>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</div>
					</div>


					<div class="row">
						<div class="col-lg-6">
							<div class="ibox ">
								<div class="ibox-title">
									<h5>종합평가</h5>
									<div class="ibox-tools">
										<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
										</a> <a class="close-link"> <i class="fa fa-times"></i>
										</a>
									</div>
								</div>
								<div class="ibox-content">
									<div style="height: 250px;text-align: center;">
										<c:choose>
											<c:when test="${noKeyword != null}">
												<h1 style="padding-top: 40px;">검색된 결과가 없습니다.</h1>
											</c:when>
											<c:otherwise>
												<h1><strong>종합평가</strong></h1>
												<table class="table table-hover">
													<thead>
														<tr>
															<th>No</th>
															<th>가중치</th>
															<th>값</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>1</td>
															<td><span class="pie">검색량 종합평가 가중치</span></td>
															<c:choose>
 																<c:when test="${overallMonthCount >= '0'}"> --%>
 																	<td class="text-navy"><i class="fa fa-level-up"></i>${overallMonthCount}</td>
 																</c:when>
																<c:otherwise>
																	<td class="text-warning"><i class="fa fa-level-down"></i>${overallMonthCount}</td>
																</c:otherwise>
															</c:choose>
														</tr>
														<tr>
															<td>2</td>
															<td><span class="pie">감정분석 종합평가 가중치</span></td>
														<c:choose>
 																<c:when test="${overallEmtanalysis >= '0'}">
																	<td class="text-navy"><i class="fa fa-level-up"></i>${overallEmtanalysis}</td>
 																</c:when>
																<c:otherwise>
																	<td class="text-warning"><i class="fa fa-level-down"></i>${overallEmtanalysis}</td>
																</c:otherwise>
															</c:choose>												
														</tr>
														<tr>
															<td>3</td>
															<td><span class="pie">주식 종합평가 가중지</span></td>
 															<td>-</td>
														</tr>
														<tr>
															<td>4</td>
															<td><span class="pie">종합평가</span></td>
															<c:choose>
																<c:when test="${overallAnalysis >= '0'}">
																	<td class="text-navy"><i class="fa fa-level-up"></i>${overallAnalysis}</td>
 																</c:when>
																<c:otherwise>
																	<td class="text-warning"><i class="fa fa-level-down"></i>${overallAnalysis}</td>
																</c:otherwise>
															</c:choose>
														</tr>
													</tbody>
												</table>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-6">
							<div class="ibox ">
								<div class="ibox-title">
									<h5>성별 검색량(%)</h5>
									<div class="ibox-tools">
										<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
										</a> <a class="close-link"> <i class="fa fa-times"></i>
										</a>
									</div>
								</div>
								<div class="ibox-content">
									<div style="height: 250px;text-align: center;">
										<c:choose>
											<c:when test="${noKeyword != null}">
												<h1 style="padding-top: 100px;">검색된 결과가 없습니다.</h1>
											</c:when>
											<c:otherwise>
												<div id="pie" style="height: 250px;"></div>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-12">
							<div class="ibox ">
								<div class="ibox-title">
									<h5>검색 동향</h5>
									<div class="ibox-tools">
										<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
										</a> <a class="close-link"> <i class="fa fa-times"></i>
										</a>
									</div>
								</div>
								<div class="ibox-content">
									<div style="height: 300px;text-align: center;">
										<c:choose>
											<c:when test="${noKeyword != null}">
												<h1 style="padding-top: 120px;">검색된 결과가 없습니다.</h1>
											</c:when>
											<c:otherwise>
												<div id="morris-one-line-chart" style="height: 300px;"></div>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="ibox ">
								<div class="ibox-title">
									<h5>화재 기사</h5>
									<div class="ibox-tools">
										<a class="collapse-link"> <i class="fa fa-chevron-up"></i></a>
										<a class="close-link"> <i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="ibox-content">
									<div style="height: 100%;">
										<c:choose>
											<c:when test="${noKeyword != null}">
											<div style="text-align: center;">
												<h1 style="padding-top: 260px;">검색된 결과가 없습니다.</h1>
											</div>
											</c:when>
											<c:otherwise>
												<div class="row">
													<div class="col-sm-5 m-b-xs">
														<form action="searchKeyword" method="get" id="searchForm">
															<div class="input-group">
																<select class="form-control-sm form-control input-s-sm inline" name="news_division">
																	<option value="ALL" ${news_division =='ALL'?'selected' :''}>전체</option>
																	<option value="KOR" ${news_division =='KOR'?'selected' :''}>한국기사</option>
																	<option value="ENG" ${news_division =='ENG'?'selected' :''}>영문기사</option>
																	<option value="JPN" ${news_division =='JPN'?'selected' :''}>일본기사</option>
																</select>
																<input type="hidden" value="${searchKeyword}" id="searchKeyword" name="searchKeyword">
																<button type="button" class="btn btn-sm btn-primary" onclick="javascript:submit();">확인</button>
															</div>
														</form>
													</div>
													<div class="col-sm-4 m-b-xs"></div>
													<div class="col-sm-3">
														<div class="input-group">
															<input placeholder="Search" type="text" class="form-control form-control-sm" name="searchWord" id="searchWord">
																<button type="button" class="btn btn-sm btn-primary">검색</button>
																<span class="input-group-append"></span>
														</div>
													</div>
												</div>
												<br>
												<c:forEach items="${cpyNewsInfo}" var="cpyNews">
													<div class="contact-box">
									                    <a class="row" href="javascript:searchNewsDetali(${cpyNews.news_seq})">
									                    <c:choose>
									                    	<c:when test="${not empty cpyNews.news_image}">
											                    <div class="col-3">
											                        <div class="text-center">
											                            <img alt="image" class="m-t-xs img-fluid" src="${cpyNews.news_image}"/>
											                        </div>
											                    </div>									                    		
									                    	</c:when>
									                    </c:choose>
									                    <div class="col-9" style="padding-top: 20px;">
									                    	<h2 class="list-group-item-heading">${cpyNews.news_title}</h2>
															<h3 class="list-group-item-text truncate-text">${cpyNews.news_content}</h3>
															<p><font style="color: blue;">${cpyNews.news_date}</font>&nbsp; ${cpyNews.byline}</p>
									                    </div>
									                        </a>
									                </div>
									                </c:forEach>
												<br>
												<div class="row" style="padding: 0px 0px 0px 0px; text-align: center; margin: auto;">
													<div style="width: auto; left: 0; right: 0; margin-left: auto; margin-right: auto;">
														<ul class="pagination float-right">
															<li class="footable-page-arrow disabled">
																<a data-page="first" href="searchKeyword?searchKeyword=${searchKeyword}&currentPage=${navi.currentPage-navi.pagePerGroup}&news_division=${news_division}">«</a>
															</li>
															<li class="footable-page-arrow disabled">
																<a data-page="prev" href="searchKeyword?searchKeyword=${searchKeyword}&currentPage=${navi.currentPage-1}&news_division=${news_division}">‹</a>
															</li>
																<c:forEach var="page" begin="${navi.startPageGroup}" end="${navi.endPageGroup}" varStatus="status">
																	<c:choose>
																		<c:when test="${navi.currentPage == page}">
																			<li class="footable-page active"><a href="searchKeyword?searchKeyword=${searchKeyword}&currentPage=${page}&news_division=${news_division}">${page}</a></li>
																		</c:when>
																		<c:otherwise>
																			<li class="footable-page"><a href="searchKeyword?searchKeyword=${searchKeyword}&currentPage=${page}&news_division=${news_division}">${page}</a></li>
																		</c:otherwise>
																	</c:choose>
																</c:forEach>
															<li class="footable-page-arrow">
																<a data-page="next" href="searchKeyword?searchKeyword=${searchKeyword}&currentPage=${navi.currentPage+1}&news_division=${news_division}">›</a>
															</li>
															<li class="footable-page-arrow">
																<a data-page="last" href="searchKeyword?searchKeyword=${searchKeyword}&currentPage=${navi.currentPage+navi.pagePerGroup}&news_division=${news_division}">»</a>
															</li>
														</ul>
													</div>
												</div>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer">
				<div class="float-right">
					Or follow us on social platform
				</div>
				<div>
					<strong>Copyright &copy; 2019 BY BISION. All rights reserved. </strong>
				</div>
			</div>

		</div>
	</div>



</body>

</html>