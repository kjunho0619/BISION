<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    </script>
    
<body class="top-navigation">

	<div id="wrapper">
		<div id="page-wrapper" class="gray-bg">
			<div class="row border-bottom white-bg">
				<nav class="navbar navbar-expand-lg navbar-static-top"
					role="navigation">

					<a href="#" class="navbar-brand" style="padding-top : 5px; padding-bottom : 5px;"><img src="img/BISION_logo_last_final_2.png"></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbar" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fa fa-reorder"></i>
					</button>

					<div class="navbar-collapse collapse" id="navbar">
						<ul class="nav navbar-nav mr-auto">
							<li class="active"><a aria-expanded="false" role="button"
								href="layouts"> 메인 페이지 </a></li>
							<li class="dropdown"><a aria-expanded="false" role="button"
								href="#">기업분석</a></li>
							<li class="dropdown"><a aria-expanded="false" role="button"
								href="#"> 키워드 분석</a></li>
							<li class="dropdown"><a aria-expanded="false" role="button"
								href="#">보고서 추출</a></li>
							<li class="dropdown"><a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown">마이 페이지</a>
								 <ul role="menu" class="dropdown-menu">
		                            <li><a href="">마이 페이지</a></li>
		                            <li><a href="">결제 정보</a></li>
		                        </ul>
							</li>

						</ul>
						<ul class="nav navbar-top-links navbar-right">
							<li><a href="login"> <i class="fa fa-sign-out"></i> Logout</a></li>
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
								<input type="text" placeholder="기업명을 입력하세요." name="searchKeyword" id="cpySearchText"
									class="form-control form-control-lg">
								<div class="input-group-btn">
									<button class="btn btn-lg btn-primary" id="searchButton" onclick="cpySearchKeyword();">Search</button>
								</div>
							</div>
						</form>
					</div>
					
					<c:choose>
						<c:when test="${noKeyword != null}">
							<div class="row" style="text-align: center;">
								<h1>No Search</h1>
							</div>
						</c:when>
						<c:otherwise>
							<div class="row">
				                <div class="col-lg-6">
				                    <div class="ibox ">
					                    <div class="ibox-title">
					                        <h5>성별 검색량(%)</h5>
					                        <div class="ibox-tools">
					                            <a class="collapse-link">
					                                <i class="fa fa-chevron-up"></i>
					                            </a>
					                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
					                                <i class="fa fa-wrench"></i>
					                            </a>
					                            <ul class="dropdown-menu dropdown-user">
					                                <li><a href="#" class="dropdown-item">Config option 1</a>
					                                </li>
					                                <li><a href="#" class="dropdown-item">Config option 2</a>
					                                </li>
					                            </ul>
					                            <a class="close-link">
					                                <i class="fa fa-times"></i>
					                            </a>
					                        </div>
					                    </div>
				                        <div class="ibox-content">
				                                <div id="pie" style="height: 250px;"></div>
				                        </div>
				                    </div>
				                </div>				            
							    <div class="col-lg-6">
				                    <div class="ibox ">
				                        <div class="ibox-title">
				                            <h5>키워드 검색량</h5>
				                            <div class="ibox-tools">
				                                <a class="collapse-link">
				                                    <i class="fa fa-chevron-up"></i>
				                                </a>
				                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
				                                    <i class="fa fa-wrench"></i>
				                                </a>
				                                <ul class="dropdown-menu dropdown-user">
				                                    <li><a href="#" class="dropdown-item">Config option 1</a>
				                                    </li>
				                                    <li><a href="#" class="dropdown-item">Config option 2</a>
				                                    </li>
				                                </ul>
				                                <a class="close-link">
				                                    <i class="fa fa-times"></i>
				                                </a>
				                            </div>
				                        </div>
				                        <div class="ibox-content">
				                            <div id="morris-donut-chart" style="height: 250px;"></div>
				                        </div>
				                    </div>
				                </div>
							</div>
							
							<div class="row">
								<div class="col-lg-6">
					                <div class="ibox ">
					                    <div class="ibox-title">
					                        <h5>연령별 검색량(%)</h5>
					                        <div class="ibox-tools">
					                            <a class="collapse-link">
					                                <i class="fa fa-chevron-up"></i>
					                            </a>
					                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
					                                <i class="fa fa-wrench"></i>
					                            </a>
					                            <ul class="dropdown-menu dropdown-user">
					                                <li><a href="#" class="dropdown-item">Config option 1</a>
					                                </li>
					                                <li><a href="#" class="dropdown-item">Config option 2</a>
					                                </li>
					                            </ul>
					                            <a class="close-link">
					                                <i class="fa fa-times"></i>
					                            </a>
					                        </div>
					                    </div>
					                    <div class="ibox-content">
				                                <canvas id="barChart" style="height: 250px;"></canvas>
					                    </div>
					                </div>
					            </div>				
					            
					            <div class="col-lg-6">
					                <div class="ibox ">
					                    <div class="ibox-title">
					                        <h5>연관 검색어</h5>
					                        <div class="ibox-tools">
					                            <a class="collapse-link">
					                                <i class="fa fa-chevron-up"></i>
					                            </a>
					                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
					                                <i class="fa fa-wrench"></i>
					                            </a>
					                            <ul class="dropdown-menu dropdown-user">
					                                <li><a href="#" class="dropdown-item">Config option 1</a>
					                                </li>
					                                <li><a href="#" class="dropdown-item">Config option 2</a>
					                                </li>
					                            </ul>
					                            <a class="close-link">
					                                <i class="fa fa-times"></i>
					                            </a>
					                        </div>
					                    </div>
					                    <div class="ibox-content">
					                    	<div style="height: 250px;">
					                    		<br><br>
					                    		<c:forEach items="${cpyRliKeywordList}" var="cpyRliKeyword" varStatus="status">
					                    			<button type="button" class="btn btn-outline btn-primary">${cpyRliKeyword.rlikeyword}</button>&nbsp
					                    			<c:if test="${status.count%4 == 0}">
					                    				<br><br>
					                    			</c:if>
					                    		</c:forEach>
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
				                                <a class="collapse-link">
				                                    <i class="fa fa-chevron-up"></i>
				                                </a>
				                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
				                                    <i class="fa fa-wrench"></i>
				                                </a>
				                                <ul class="dropdown-menu dropdown-user">
				                                    <li><a href="#" class="dropdown-item">Config option 1</a>
				                                    </li>
				                                    <li><a href="#" class="dropdown-item">Config option 2</a>
				                                    </li>
				                                </ul>
				                                <a class="close-link">
				                                    <i class="fa fa-times"></i>
				                                </a>
				                            </div>
				                        </div>
				                        <div class="ibox-content">
				                            <div id="morris-one-line-chart" style="height: 300px;"></div>
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
				                                <a class="collapse-link">
				                                    <i class="fa fa-chevron-up"></i>
				                                </a>
				                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
				                                    <i class="fa fa-wrench"></i>
				                                </a>
				                                <ul class="dropdown-menu dropdown-user">
				                                    <li><a href="#" class="dropdown-item">Config option 1</a>
				                                    </li>
				                                    <li><a href="#" class="dropdown-item">Config option 2</a>
				                                    </li>
				                                </ul>
				                                <a class="close-link">
				                                    <i class="fa fa-times"></i>
				                                </a>
				                            </div>
				                        </div>
				                        <div class="ibox-content">
				                            <a class="list-group-item" href="#">
				                                <h3 class="list-group-item-heading">[2일 국내 증시 분석] 코스피 상장사 LG전자 현재 66,600원대 주가 형성</h3>
				
				                                <p class="list-group-item-text">10월 2일 수요일 IT대표주 각 테마별 주식 시황 수요일 10시 28분 현재, 코스피 상장사인 LG전자 종목은 작성시간기준(10시 28분 기준) 코스피시...</p>
				                                <p><font style="color:blue;">한라일보</font>&nbsp 경제>금융_재테크 | 경제>서비스_쇼핑 | 경제>산업_기업 2019/10/02 최윤주 기자</p>
				                            </a>
				
				                            <a class="list-group-item" href="#">
				                                <h3 class="list-group-item-heading">삼성, 美 양자컴퓨팅 플랫폼 개발사에 투자</h3>
				
				                                <p class="list-group-item-text">삼성전자의 스타트업 투자 전담 조직인 삼성넥스트가 지난달 플라이브릿지 캐피털 파트너스 등과 함께 양자컴퓨팅 플랫폼 개발 회사인 알리로 테...</p>
				                            	<p><font style="color:blue;">조선일보</font>&nbsp 경제>국제경제 | 경제>산업_기업 | IT_과학>인터넷_SNS 2019/10/02 설성인 기자</p>
				                            </a>
				
				                            <a class="list-group-item" href="#">
				                                <h3 class="list-group-item-heading">전경련경영자문단 "경영 베테랑들, 중소기업·창업자 돕는다"</h3>
				
				                                <p class="list-group-item-text">[아시아경제 이동우 기자] 전국경제인연합회가 중소기업과 창업자들을 위해 글로벌 수준의 기술력과 마케팅 역량 전수 활동을 이어간다. 전경련중소...</p>
				                            	<p><font style="color:blue;">아시아경제</font>&nbsp 경제>산업_기업 | 경제>취업_창업 | 경제>서비스_쇼핑 2019/10/02 이동우</p>
				                            </a>	    
				                             <a class="list-group-item" href="#">
				                                <h3 class="list-group-item-heading">삼성전자, `양자 컴퓨팅` 스타트업에 투자…미래기술 발굴 속도</h3>
				
				                                <p class="list-group-item-text">[디지털타임스 박정일 기자] 삼성전자가 미래 기술로 알려진 '양자 컴퓨팅'(Quantum Computing) 관련 스타트업에 투자했다. 2일 업계에 따르면...</p>
				                            	<p><font style="color:blue;">디지털타임스</font>&nbsp 경제>산업_기업 | 경제>취업_창업 | 사회>교육_시험 2019/10/02 고석용|기자|</p>
				                            </a>
											<br>
											<ul class="pagination float-right">
												<li class="footable-page-arrow disabled">
													<a data-page="first" href="#first">«</a>
												</li>
												<li class="footable-page-arrow disabled">
													<a data-page="prev" href="#prev">‹</a>
												</li>
												<li class="footable-page active">
													<a data-page="0" href="#">1</a>
												</li>
												<li class="footable-page">
													<a data-page="1" href="#">2</a>
												</li>
												<li class="footable-page">
													<a data-page="2" href="#">3</a>
												</li>
												<li class="footable-page">
													<a data-page="3" href="#">4</a>
												</li>
												<li class="footable-page">
													<a data-page="4" href="#">5</a>
												</li>
												<li class="footable-page-arrow">
													<a data-page="next" href="#next">›</a>
												</li>
												<li class="footable-page-arrow">
													<a data-page="last" href="#last">»</a>
												</li>
											</ul>
											<br><br>
										</div>
				                    </div>
				                </div>
							</div>
						</c:otherwise>
					</c:choose>
					
				</div>
			</div>
			<div class="footer">
				<div class="float-right">
					10GB of <strong>250GB</strong> Free.
				</div>
				<div>
					<strong>Copyright</strong> Example Company &copy; 2014-2018
				</div>
			</div>

		</div>
	</div>



</body>

</html>