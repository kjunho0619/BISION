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