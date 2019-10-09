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
	    });
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

<%-- 					<div class="navbar-collapse collapse" id="navbar">
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
					</div> --%>
				</nav>
			</div>

			<div class="wrapper wrapper-content">
				<div class="container">

					<div class="row" style="padding: 0px 0px 0px 0px; text-align: center; margin: auto; background-color: white;">
						<div style="width: auto; left: 0; right: 0; margin-left: auto; margin-right: auto;">
							<p><font style="font-size: 45px;padding-top: 30px;">${detailNews.news_title}</font></p>
							
							<c:choose>
								<c:when test="${not empty detailNews.news_image}">
								<div class="text-center">
									<img src="${detailNews.news_image}"/>
								</div>
								</c:when>
							</c:choose>
							<br><br>
						</div>
					</div>
					
					<div class="row" style="padding: 0px 0px 0px 0px; text-align: center; margin: auto; background-color: white;">
						<div style="padding-left: 20px;">
							&nbsp;&nbsp;&nbsp;<p><font style="color: blue;font-size: 15px;'">${detailNews.news_date}</font> | <font style="font-size: 15px;'">${detailNews.byline}</font></p>
						</div>
					</div>
					
					<div class="row" style="padding: 0px 0px 0px 0px; text-align: center; margin: auto; background-color: white;">
						<div style="width: auto; left: 0; right: 0; margin-left: auto; margin-right: auto;">
							<h2>${detailNews.news_content}</h2>
						</div>
					</div>
					
					<div style="padding: 40px;">
					
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