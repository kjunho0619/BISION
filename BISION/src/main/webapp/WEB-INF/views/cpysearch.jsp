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
    	
    	function cpysearchNewsDetali(news_no){
    		var win = window.open("cpysearchNewsDetali?news_no=" + news_no, "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=200,left=200,width=1200,height=1000");
    	}
    	
    	function cpyRliSearchForm(rlikeyword, cpykeywordseq) {
			location.href="cpyRlisearch?rlikeyword="+rlikeyword+"&cpykeywordseq="+cpykeywordseq;
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
								href="#"><font class="colorFont">키워드 분석</font></a></li>
							<li class="dropdown"><a aria-expanded="false" role="button"
								href="#"><font class="colorFont">보고서 추출</font></a></li>
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
						<form action="cpysearch" method="post" id="cpysearchForm">
							<div class="input-group">
								<input type="text" placeholder="기업명을 입력하세요."
									name="searchKeyword" id="cpySearchText"
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
												<c:forEach items="${cpyRliKeywordList}" var="cpyRliKeyword"
													varStatus="status">
													<button type="button" class="btn btn-outline btn-primary" onclick="cpyRliSearchForm('${cpyRliKeyword.rlikeyword}','${cpykeywordseq}')">${cpyRliKeyword.rlikeyword}</button>&nbsp
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
												<c:if test="${cpyStaok == null}">
													<div style="padding-top: 60px;">
														주식 상장된 종목이 아닙니다.
													</div>
												</c:if>
												<c:if test="${cpyStaok.sign eq '+'}">
													<h1><strong>주식</strong></h1>
													<div style="padding-top: 60px;">
														<!-- <i class="fa fa-line-chart" style="font-size: 225px;"></i> -->
														<strong style="font-size: 30px; color:red;">${cpyStaok.stockvalue}</strong>&nbsp;&nbsp;
														<font style="font-size: 24px;">${cpyStaok.country}</font>
														<font style="color:red;font-size: 20px;">${cpyStaok.sign} ${cpyStaok.movevalue}( ${cpyStaok.per} %<i class="fa fa-sort-asc"></i>)</font>
													 </div>
												</c:if>
												<c:if test="${cpyStaok.sign eq '-'}">
													<h1><strong>주식</strong></h1>
													<div style="padding-top: 60px;">
														<strong style="font-size: 30px; color:blue;">${cpyStaok.stockvalue}</strong>&nbsp;&nbsp;
														<font style="font-size: 24px;">${cpyStaok.country}</font>
														<font style="color:blue;font-size: 20px;">${cpyStaok.sign} ${cpyStaok.movevalue}( ${cpyStaok.per} %<i class="fa fa-sort-desc"></i>)</font>
													</div>
												</c:if>
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
 															<c:choose>
																<c:when test="${overallStaokPer >= '0'}"> 
																	<td class="text-navy"><i class="fa fa-level-up"></i>${overallStaokPer}</td>
 																</c:when>
																<c:otherwise>
																	<td class="text-warning"><i class="fa fa-level-down"></i>${overallStaokPer}</td>
																</c:otherwise>
															</c:choose>
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