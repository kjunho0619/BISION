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

					<a href="#" class="navbar-brand"
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
								href="#">기업분석</a></li>
							<li class="dropdown"><a aria-expanded="false" role="button"
								href="#"> 키워드 분석</a></li>
							<li class="dropdown"><a aria-expanded="false" role="button"
								href="#">보고서 추출</a></li>
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
					<br>
					<div style="background-color: white;">
					<div class="row">
						<div class="col-sm-1"></div>
						<div class="col-sm-4 text-center wow fadeInLeft animated" style="padding: 30px;visibility: visible; animation-name: fadeInLeft;">
							<div>
							<i class="fa fa-database"
								style="font-size: 35px; color: #1ab394;"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font
								style="font-size: 27px;">기업분석</font><br><br>
								<div style="border: 2px solid; padding: 10px; width: 350px; height: 100px;">
								분석을 원하는 기업을 입력하면 기업에 대한 비정형 정보를 분석이 가능한 정형화된 데이터로 바꾸어,
								사회현상을 분석할 수 있는 기초 자료로 제공합니다.
								</div>
							</div>
						</div>
						<div class="col-sm-2"></div>
						<div class="col-sm-4 text-center wow fadeInLeft animated" style="padding: 30px;visibility: visible; animation-name: fadeInRight;">
							<div>
							<i class="fa fa-cubes" style="font-size: 35px; color: #1ab394;"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font
								style="font-size: 27px;">키워드 분석</font><br><br>
								<div style="border: 2px solid; padding: 10px; padding: 10px; width: 350px; height: 100px;">
								기업 분석뿐만 아니라 원하는 키워드를 검색, 분석하여 정형화된 데이터로 바꿔, 다양한 곳에서 활용
								가능한 기초 자료로 제공합니다.
								</div>
							</div>
						</div>
						<div class="col-sm-1"></div>
					</div>

					<br><br>

					<div class="row">
						<div class="col-md-3 text-center wow fadeInLeft animated"
							style="visibility: visible; animation-name: fadeInLeft; padding: 15px;">
							<div>
								<i class="fa fa-smile-o features-icon"
									style="font-size: 27px; color: #1ab394;"></i>&nbsp;&nbsp;&nbsp;
								<font style="font-size: 18px;">호감도 분석</font><br><br>
								<div style="border: 2px solid; padding: 10px; width: 250px; height: 100px;">
									단어 및 조사의 구성에 따른<br>문장의 긍정적, 부정적인 감정을 판단해<br>조사한 데이터의
									호감도를<br>그래프로 보기 쉽게 나타냅니다.
								</div>
							</div>
						</div>
						<div class="col-md-3 text-center wow fadeInLeft animated"
							style="visibility: visible; animation-name: fadeInLeft; padding: 15px;">
							<div>
								<i class="fa fa-line-chart features-icon"
									style="font-size: 27px; color: #1ab394;"></i>&nbsp;&nbsp;&nbsp;
								<font style="font-size: 18px;">주식 상황</font><br><br>
								<div style="border: 2px solid; padding: 10px; width: 250px; height: 100px;">
									검색한 기업이 주식회사인지 조사하고<br>만약 주식상장이 되어있다면<br>장 마감시간의
									최종주가를 제공합니다.<br>
									<br>
								</div>
							</div>
						</div>
						<div class="col-md-3 text-center wow fadeInRight animated"
							style="visibility: visible; animation-name: fadeInRight; padding: 15px;">
							<div>
								<i class="fa fa-keyboard-o features-icon"
									style="font-size: 27px; color: #1ab394;"></i>&nbsp;&nbsp;&nbsp;
								<font style="font-size: 18px;">검색 동향</font><br><br>
								<div style="border: 2px solid; padding: 10px; width: 250px; height: 100px;">
									조사한 데이터의 검색량을<br>최근 1년 동안의 변화를 분석해<br>그래프를 통해 제공합니다.<br>
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								</div>
							</div>
						</div>
						<div class="col-md-3 text-center wow fadeInRight animated"
							style="visibility: visible; animation-name: fadeInRight; padding: 15px;">
							<div>
								<i class="fa fa-newspaper-o features-icon"
									style="font-size: 27px; color: #1ab394;"></i>&nbsp;&nbsp;&nbsp;
								<font style="font-size: 18px;">연관 기사</font><br><br>
								<div style="border: 2px solid; padding: 10px; width: 250px; height: 100px;">
									검색한 키워드 또는 기업과 관련된 <br>가장 최신의 기사를 제공합니다.<br>이제 포털
									사이트에서 찾아볼 필요없이<br>BISION에서 손 쉽게 확인해보세요.
								</div>
							</div>
						</div>
					</div>
					<br><br>
					<div class="row">
					<div class="col-sm-12 text-center wow fadeInDown animated">
					    <i class="fa fa-dashboard features-icon" style="font-size: 27px; color: #1ab394;"></i>
                		<font style="font-size: 22px;">종합 평가</font><br><br>
                		<div style="border: 2px solid; padding: 10px;">
                		호감도, 검색량, 주식, 신문기사, 연관 검색어 등을 분석하여<br>검색한 기업 또는 키워드에 대한 종합 평가를 제공합니다.
						</div>
						<br><br><br>
					</div>
					<br><br><br>
				</div>
				</div>
				<br><br><br>
				
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