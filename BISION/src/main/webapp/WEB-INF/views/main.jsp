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
    	function cpySearchKeyword(){
    		$("#cpysearchForm").submit();
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
								href="homeForm"> 메인 페이지 </a></li>
 							<li class="dropdown"><a aria-expanded="false" role="button"
								href="main">기업분석</a></li>
							<li class="dropdown"><a aria-expanded="false" role="button"
								href="keywordmain"> 키워드 분석</a></li>
<%--							<li class="dropdown"><a aria-expanded="false" role="button"
								href="#">보고서 추출</a></li>
							<li class="dropdown"><a aria-expanded="false" role="button"
								href="#" class="dropdown-toggle" data-toggle="dropdown">마이
									페이지</a>
								<ul role="menu" class="dropdown-menu">
								<c:if test="${sessionScope.loginUser != null}">
									<li><a href="myPageForm"><i class="fa fa-user-o"></i><font
											class="colorFont">마이페이지</font></a></li>
									<li><a href="logout"><i class="fa fa-sign-out"></i><font
											class="colorFont">로그아웃</font></a></li>
								</c:if>
								</ul>
							</li> --%>
						</ul>
						<ul class="nav navbar-top-links navbar-right">
								<c:if test="${sessionScope.loginUser != null}">
									<li><a href="myPageForm"><i class="fa fa-user-o"></i><font
											class="colorFont">마이페이지</font></a></li>
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
												<p style="padding-top: 100px; font-size: 17px;">검색 키워드와 <strong style=" color: #00c3c8;">관련도가 높은</strong> 키워드입니다.</p>

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
												<!-- <h1 style="padding-top: 100px;">주식 설명</h1> -->
												<p style="padding-top: 100px; font-size: 17px;">검색한 기업이 
												<strong style=" color: #00c3c8;">상장회사</strong>
												 인 경우 주가 정보를 확인할 수 있으며 <br>
												 <strong style=" color: #00c3c8;">시장 마감시간</strong>
												 을 기준으로 최종 주가를 참조합니다.</p>
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
												<!-- <h1 style="padding-top: 100px;">키워드 검색량 설명</h1> -->
												<p style="padding-top: 100px; font-size: 17px;">금일을 포함하지 않은 최근 한 달 
												<strong style=" color: #00c3c8;">(2019-09-9 ~ 2019-10-9)</strong>
												 간<br> 키워드가 검색된 횟수입니다.</p>

									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="ibox ">
								<div class="ibox-title">
									<h5>연령별 검색 통계(%)</h5>
									<div class="ibox-tools">
										<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
										</a> <a class="close-link"> <i class="fa fa-times"></i>
										</a>
									</div>
								</div>
								<div class="ibox-content">
									<div style="height: 250px;text-align: center;">
												<!-- <h1 style="padding-top: 100px;">연령별 검색 통계 설명</h1> -->
												<p style="padding-top: 100px; font-size: 17px;">금일을 포함하지 않은 최근 한 달
												<strong style=" color: #00c3c8;">(2019-09-9 ~ 2019-10-9)</strong>
												 간<br>해당 키워드를 검색한 
												 <strong style=" color: #00c3c8;">연령대별</strong>
												 비율입니다.</p>

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
												<!-- <h1 style="padding-top: 100px;">종합평가 설명</h1> -->
												<p style="padding: 85px 0; font-size: 17px;">화제기사를 분석해 추출한<br>
												<strong style=" color: #00c3c8;">호감도</strong>
												 (60%), <strong style=" color: #00c3c8;">키워드 검색량</strong>
												 (20%), <strong style=" color: #00c3c8;">주식</strong>
												 (20%)을<br>  
												  일정 비율로 계산한 값입니다.</p>

									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-6">
							<div class="ibox ">
								<div class="ibox-title">
									<h5>성별 검색 통계(%)</h5>
									<div class="ibox-tools">
										<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
										</a> <a class="close-link"> <i class="fa fa-times"></i>
										</a>
									</div>
								</div>
								<div class="ibox-content">
									<div style="height: 250px;text-align: center;">
												<!-- <h1 style="padding-top: 100px;">성별 검색 통계 설명</h1> -->
												<p style="padding-top: 100px; font-size: 17px;">금일을 포함하지 않은 최근 한 달
												<strong style=" color: #00c3c8;">(2019-09-9 ~ 2019-10-9)</strong>
												 간<br>해당 키워드를 검색한 
												 <strong style=" color: #00c3c8;">성별</strong>
												 비율입니다.</p>
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
												<!-- <h1 style="padding-top: 120px;">검색 동향 설명</h1> -->
												<p style="padding: 120px 0; font-size: 17px;">조사한 데이터의 검색량을 
												<strong style=" color: #00c3c8;">최근 1년 동안</strong>
												 의<br>변화를 분석해 
												 <strong style=" color: #00c3c8;">성별</strong>
												 그래프를 통해 제공합니다.</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-12">
							<div class="ibox ">
								<div class="ibox-title">
									<h5>화제 기사</h5>
									<div class="ibox-tools">
										<a class="collapse-link"> <i class="fa fa-chevron-up"></i></a>
										<a class="close-link"> <i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="ibox-content">
									<div style="height: 600px;">
											<div style="text-align: center;">
												<!-- <h1 style="padding-top: 260px;">화제기사 설명</h1> -->
												<p style="padding: 270px 0; font-size: 17px;">검색한 키워드 또는 기업과 관련된 
												<strong style=" color: #00c3c8;">화제 기사를</strong>
												 제공합니다.</p>
											</div>
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