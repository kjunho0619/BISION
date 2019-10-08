<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BISION - Home Page</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Animation CSS -->
    <link href="css/animate.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:500,700&display=swap&subset=korean" rel="stylesheet">
</head>
<style>
font{
	font-family: 'Noto Sans KR', sans-serif; 
}
.colorAtag:hover{
	color: #1ab394;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script>
	$(function(){
		$("#clickEvent").click(function(){
			//h2 text 가져오기
			var h2Text = $("#h2Event").text();
			//h2 태그 속성 변환
			$("#h2Event").contents().unwrap().wrap("<input type='text' value=" + h2Text + ">" );
			
			//pEvent 태그 속성 변환
			$("#pEvent").contents().unwrap().wrap("<textarea rows='4' cols='50'></textarea>" );
			
			$("#clickEvent").attr()
		});
	});
</script>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>

<script>

    IMP.init('imp94733196');

    function requestpay(itemname, itemprice){
        
        IMP.request_pay({

            pg : 'html5_inicis',
            pay_method : 'card',
            merchant_uid : 'merchant_'+ new Date().getTime(),
            name : itemname,
            amount : itemprice,
            buyer_email : 'kjunho0619@gmail.com',
            buyer_name : '구매자이름',
            buyer_tel : '010-1234-5678',
            buyer_addr : '서울특별시 강남구 삼성동',
            buyer_postcode : '123-456'
        }, function(rsp) {
            if ( rsp.success ) {
                var msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;
                msg += '상점 거래ID : ' + rsp.merchant_uid;
                msg += '결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num;
            } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg + rsp.buyer_email;
            }

            alert(msg);

        });


    };
</script>

<body id="page-top" class="landing-page no-skin_config">

<div class="navbar-wrapper">
        <nav class="navbar navbar-default navbar-fixed-top navbar-expand-md" role="navigation">
            <div class="container">
                <a class="navbar-brand" href="homeForm"><img src="img/BISION_logo_final_final.png"></a>
                <div class="navbar-header page-scroll">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
                        <i class="fa fa-bars"></i>
                    </button>
                </div>
                <div class="navbar-collapse collapse show" id="navbar">
                    <ul class="nav navbar-nav mr-auto">
                        <li><a class="nav-link page-scroll" href="#page-top"><font>메인</font></a></li>
                        <li><a class="nav-link page-scroll" href="#features"><font>기술소개</font></a></li>
                        <!-- <li><a class="nav-link page-scroll" href="#workflow"><font>업데이트</font></a></li> -->
                        <li><a class="nav-link page-scroll" href="#pricing"><font>가격</font></a></li>
                        <li><a class="nav-link page-scroll" href="#customerSupport"><font>고객지원</font></a></li>
                        <c:if test="${sessionScope.loginUser.userdivision == 2}"> 
                        	<li><a class="nav-link" href="mainForm"><font>기업평가화면 이동</font></a></li>
                        </c:if>
                    </ul>
                    <ul class="nav navbar-top-links navbar-right">
                    	<!-- 로그인 전 -->
                    	<c:if test="${sessionScope.loginUser == null }"> 
                	     	<li><a href="loginForm"><i class="fa fa-user"></i><font class="colorFont">로그인</font></a></li>
                	  	 	<li><a href="signUpForm"><i class="fa fa-sign-in"></i><font class="colorFont">회원가입</font></a></li>
                		</c:if>
                		<c:if test="${sessionScope.loginUser != null }"> 
                	     	<li><a href="myPageForm"><i class="fa fa-user-o"></i><font class="colorFont">마이페이지</font></a></li>
                	  	 	<li><a href="logout"><i class="fa fa-sign-out"></i><font class="colorFont">로그아웃</font></a></li>
                		</c:if>
                	</ul>
                </div>
            </div>
        </nav>
</div>

<div id="inSlider" class="carousel slide" data-ride="carousel" >
    <ol class="carousel-indicators">
        <li data-target="#inSlider" data-slide-to="0" class="active"></li>
        <li data-target="#inSlider" data-slide-to="1"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <div class="container">
                <div class="carousel-caption" style="margin-top: 70px; line-height:33px;" >
                    <font style="font-size: 30px;"><strong style="font-size: 40px;">BISION</strong>은<br/>
                    	더 넓게, 더 깊이 <strong style="font-size: 35px;">기업</strong>을 <strong style="font-size: 35px;">분석</strong>합니다.</font>
                </div>
                 <div class="carousel-image wow zoomIn" >
                    <img src="img/landing/laptop.png" alt="laptop"/>
                </div>
            </div>
            <!-- Set background for slide in css -->
            <div class="header-back one"></div>

        </div>
        <div class="carousel-item">
            <div class="container">
                <div class="carousel-caption blank">
                    <h2>빅데이터 시대의 </h2><h1>새로운 기업 분석 서비스</h1>
                </div>
            </div>
            <!-- Set background for slide in css -->
            <div class="header-back two"></div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#inSlider" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#inSlider" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<section id="features" class="container services">
<br><br><br>
    <div class="row">
    	<div class="col-sm-1">
    	</div>
        <div class="col-sm-4">
            <i class="fa fa-database" style="font-size: 27px; color:#1ab394;"></i>&nbsp&nbsp&nbsp&nbsp&nbsp<font style="font-size: 27px;">기업분석</font>
            <p><br>분석을 원하는 기업을 입력하면 기업에 대한 비정형 정보를 분석이 가능한 정형화된 데이터로 바꾸어, 사회현상을 분석할 수 있는 기초 자료로 제공합니다.</p>
            <!-- <p><a class="navy-link" href="#" role="button">Details &raquo;</a></p> -->
        </div>
        <div class="col-sm-2">
    	</div>
        <div class="col-sm-4">
            <i class="fa fa-cubes" style="font-size: 27px; color:#1ab394;"></i>&nbsp&nbsp&nbsp&nbsp&nbsp<font style="font-size: 27px;">키워드 분석</font>
            <p><br>기업 분석뿐만 아니라 원하는 키워드를 검색, 분석하여 정형화된 데이터로 바꿔, 다양한 곳에서 활용 가능한 기초 자료로 제공합니다.</p>
            <!-- <p><a class="navy-link" href="#" role="button">Details &raquo;</a></p> -->
        </div>
        <div class="col-sm-1">
    	</div>
        </div>
    </div>
</section>
<br><br><br><br>
<section  class="container features">
    <div class="row">
        <div class="col-lg-12 text-center">
            <div class="navy-line"></div>
            <h1>BISION만의<br/> <span class="navy"> 기업 빅데이터 분석 서비스</span> </h1>
            <p>필요한 정보가 수집된 통합 데이터베이스에 빅데이터 분석 기술을 접목하여 만든 새로운 기업 분석 서비스입니다.</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3 text-center wow fadeInLeft">
            <div>
                <i class="fa fa-smile-o features-icon"></i>
                <h2>호감도 분석</h2>
                <p>단어 및 조사의 구성에 따른</br>문장의 긍정적, 부정적인 감정을 판단해</br>조사한 데이터의 호감도를</br>그래프로 보기 쉽게 나타냅니다.</p>
            </div>
            <div class="m-t-lg">
                <i class="fa fa-line-chart features-icon"></i>
                <h2>주식 상황</h2>
                <p>검색한 기업이 주식회사인지 조사하고</br>만약 주식상장이 되어있다면</br>장 마감시간의 최종주가를 제공합니다.</br></br></p>
            </div>
        </div>
        <div class="col-md-6 text-center  wow zoomIn">
            <img src="img/landing/perspective.png" alt="dashboard" class="img-fluid">
        </div>
        <div class="col-md-3 text-center wow fadeInRight">
            <div>
                <i class="fa fa-keyboard-o features-icon"></i>
                <h2>검색 동향</h2>
                <p>조사한 데이터의 검색량을</br>최근 1년 동안의 변화를 분석해</br>그래프를 통해 제공합니다.</br></p>
            </div>
            <div class="m-t-lg">
                <i class="fa fa-newspaper-o features-icon"></i>
                <h2>연관 기사</h2>
                <p>검색한 키워드 또는 기업과 관련된 </br>가장 최신의 기사를 제공합니다.</br>이제 포털 사이트에서 찾아볼 필요없이</br>BISION에서 손 쉽게 확인해보세요.</p>
            </div>
        </div>
    </div>
    <div class="row">
    	 <div class="col-sm-4">
    	</div>
    	<div class="col-md-4 text-center wow fadeInDown">
            <div>
				<!-- 화살표 코드 추가 -->
				<i class="fa fa-arrow-down features-icon" style="font-size:100px;"></i>
            </div>
            <div class="m-t-lg">
                 <i class="fa fa-dashboard features-icon"></i>
                <h1>종합 평가</h1>
                <p>호감도, 검색량, 주식, 신문기사, 연관 검색어 등을 분석하여</br>검색한 기업 또는 키워드에 대한 종합 평가를 제공합니다. </p>
            </div>
        </div>
        <div class="col-sm-4">
    	</div>
    </div>
    <br><br><br><br>
    <div class="row">
        <div class="col-lg-12 text-center">
            <div class="navy-line"></div>
            <h1>사용자 맞춤 디자인</h1>
            <p>분석된 데이터를 사용자의 시각에 맞춰 한 눈에 보기 쉽도록 디자인 되었습니다.</p>
        </div>
    </div>
    <div class="row features-block">
        <div class="col-lg-6 features-text wow fadeInLeft">
            <!-- <small>INSPINIA</small> -->
            <h1> </h1>
            <font style="font-size: 20px;">반응형 웹 디자인</font><br><br>
            <p>디바이스에 따른 다양한 해상도 지원과 반응형 웹 디자인을 통해 유저 인터페이스를 최적화시켰습니다. BISION은 규격화 되지 않은 자유로운 기기 선택을 가능하게 해 언제, 어디서든 정보를 검색할 수 있다는 편리함을 제공할 것입니다. </p>
            <!-- <a href="" class="btn btn-primary">Learn more</a> -->
        </div>
        <div class="col-lg-6 text-right wow fadeInRight">
            <img src="img/landing/dashboard.png" alt="dashboard" class="img-fluid float-right">
        </div>
    </div>
</section>

<br><br><br><br>
<section id="pricing" class="pricing">
    <div class="container">
        <div class="row m-b-lg">
            <div class="col-lg-12 text-center">
                <div class="navy-line"></div>
                <h1>이용 가격</h1>
                <p>BISION은 회원 여러분이 필요한 정보를 선택해 이용하는 것이 가능합니다.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 wow zoomIn">
                <ul class="pricing-plan list-unstyled">
                    <li class="pricing-title">
                      	무료이용
                    </li>
                    <li class="pricing-desc">
                      	 샘플 데이터를 확인할 수 있습니다.
                    </li>
                    <li class="pricing-price">
                        <span>Free</span>
                    </li>
                    <li>
                       	성별검색
                    </li>
                    <li>
                      	키워드 검색량
                    </li>
                    <li>
                      	연령별 검색량
                    </li>
                    <li>
                      	연관 검색어
                    </li>
                    <li>
                      	검색동향
                    </li>
                 	<li>
                      	화제기사
                    </li>
                    <li>
                        <a class="btn btn-primary btn-xs" href="#">체험하기</a>
                    </li>
                </ul>
            </div>

            <div class="col-lg-4 wow zoomIn">
                <ul class="pricing-plan list-unstyled selected">
                    <li class="pricing-title">
                       	월간구독
                    </li>
                    <li class="pricing-desc">
                       	최신 데이터가 반영된 결과를 확인하고 필요한 기업을 검색할 수 있습니다.
                    </li>
                    <li class="pricing-price">
                        <span>￦28,500</span> / 월
                    </li>
                    <li>
                       	성별검색
                    </li>
                    <li>
                      	키워드 검색량
                    </li>
                    <li>
                      	연령별 검색량
                    </li>
                    <li>
                      	연관 검색어
                    </li>
                    <li>
                      	검색동향
                    </li>
                 	<li>
                      	화제기사
                    </li>
                    <c:if test="${sessionScope.loginUser.userdivision == 1}"> 
	                    <li class="plan-action">
	                        <a class="btn btn-primary btn-xs" href="javascript:requestpay('MONTH PLAN', '1');" id="month"  data-value1="MONTH PLAN" data-value2="1">결제하기</a>
	                    </li>
                    </c:if>
					<c:if test="${sessionScope.loginUser.userdivision == 2}"> 
	                    <li class="plan-action">
	                        <a class="btn btn-primary btn-xs" href="javascript:requestpay('MONTH PLAN', '1');" id="month"  data-value1="MONTH PLAN" data-value2="1">연장하기</a>
	                    </li>
                    </c:if>
                </ul>
            </div>

            <div class="col-lg-4 wow zoomIn">
                <ul class="pricing-plan list-unstyled">
                    <li class="pricing-title">
                       	연간구독
                    </li>
                    <li class="pricing-desc">
                      	연간 구독을 통해 저렴한 비용으로 BISION을 이용하세요.
                    </li>
                    <li class="pricing-price">
                        <span>￦300,000</span> / 년
                    </li>
                    <li>
                       	성별검색
                    </li>
                    <li>
                      	키워드 검색량
                    </li>
                    <li>
                      	연령별 검색량
                    </li>
                    <li>
                      	연관 검색어
                    </li>
                    <li>
                      	검색동향
                    </li>
                  	<li>
                      	화제기사
                    </li>
                    <li>
                        <strong>추가 이용기간</strong>
                    </li>
                    <c:if test="${sessionScope.loginUser.userdivision == 1 }"> 
	                    <li>
	                        <a class="btn btn-primary btn-xs" href="javascript:requestpay('YEAR PLAN', '2');" id="year"  data-value1="YEAR PLAN" data-value2="2">결제하기</a>
	                    </li>
                    </c:if>
                    <c:if test="${sessionScope.loginUser.userdivision == 2 }"> 
	                    <li>
	                        <a class="btn btn-primary btn-xs" href="javascript:requestpay('YEAR PLAN', '2');" id="year"  data-value1="YEAR PLAN" data-value2="2">연장하기</a>
	                    </li>
                    </c:if>
                </ul>
            </div>
        </div>
        <div class="row m-t-lg">
        </div>
    </div>

</section>

<section id="customerSupport" class="navy-section testimonials" style="margin-top: 0">

    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center wow zoomIn">
                <i class="fa fa-comment big-icon"></i>
                <h1>
                    무엇을 도와드릴까요?
                </h1>
                <div class="testimonials-text">
                    <i>"BISION은 회원 여러분들을 위한 양질의 서비스를 위해 노력하고 있습니다. 제품을 이용하시다가 궁금하신 점, 불편하신 점이 있다면 언제든지 고객지원 페이지를 찾아주세요.</br>자주 궁금하신 정보는 FAQ에 준비되어 있으며, 개인적으로 궁금하신 점은 QnA에 문의해주시면 빠르게 도와드리도록 노력하겠습니다."</i>
                </div>
                <small>
                    <strong>2019.10.03. - BISION 고객 지원팀</strong>
                </small>
            </div>
        </div>
    </div>

</section>

<section class="comments gray-section" style="margin-top: 0">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="navy-line"></div>
                <h1>What our partners say</h1>
                <p>Donec sed odio dui. Etiam porta sem malesuada. </p>
            </div>
        </div>
        <div class="row features-block">
            <div class="col-lg-4">
                <div class="bubble">
                    "Uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
                </div>
                <div class="comments-avatar">
                    <a href="" class="float-left">
                        <img alt="image" src="img/landing/avatar3.jpg">
                    </a>
                    <div class="media-body">
                        <div class="commens-name">
                            Andrew Williams
                        </div>
                        <small class="text-muted">Company X from California</small>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="bubble">
                    "Uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
                </div>
                <div class="comments-avatar">
                    <a href="" class="float-left">
                        <img alt="image" src="img/landing/avatar1.jpg">
                    </a>
                    <div class="media-body">
                        <div class="commens-name">
                            Andrew Williams
                        </div>
                        <small class="text-muted">Company X from California</small>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="bubble">
                    "Uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
                </div>
                <div class="comments-avatar">
                    <a href="" class="float-left">
                        <img alt="image" src="img/landing/avatar2.jpg">
                    </a>
                    <div class="media-body">
                        <div class="commens-name">
                            Andrew Williams
                        </div>
                        <small class="text-muted">Company X from California</small>
                    </div>
                </div>
            </div>
        </div>
			<div class="row">
				<div class="col-lg-4">
					<a class="btn btn-primary btn-xs" href="faqForm">FAQ</a>
				</div>
				<div class="col-lg-4"></div>
				<div class="col-lg-4">
					<a class="btn btn-primary btn-xs" href="qnaForm">Q&A</a>
				</div>
			</div>
		</div>
</section>

<section class="features">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="navy-line"></div>
                <h1>More and more extra great feautres</h1>
                <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. </p>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-5 col-lg-offset-1 features-text">
                <small>INSPINIA</small>
                <h2>Perfectly designed </h2>
                <i class="fa fa-bar-chart big-icon float-right"></i>
                <p>INSPINIA Admin Theme is a premium admin dashboard template with flat design concept. It is fully responsive admin dashboard template built with Bootstrap 3+ Framework, HTML5 and CSS3, Media query. It has a huge collection of reusable UI components and integrated with.</p>
            </div>
            <div class="col-lg-5 features-text">
                <small>INSPINIA</small>
                <h2>Perfectly designed </h2>
                <i class="fa fa-bolt big-icon float-right"></i>
                <p>INSPINIA Admin Theme is a premium admin dashboard template with flat design concept. It is fully responsive admin dashboard template built with Bootstrap 3+ Framework, HTML5 and CSS3, Media query. It has a huge collection of reusable UI components and integrated with.</p>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-5 col-lg-offset-1 features-text">
                <small>INSPINIA</small>
                <h2>Perfectly designed </h2>
                <i class="fa fa-clock-o big-icon float-right"></i>
                <p>INSPINIA Admin Theme is a premium admin dashboard template with flat design concept. It is fully responsive admin dashboard template built with Bootstrap 3+ Framework, HTML5 and CSS3, Media query. It has a huge collection of reusable UI components and integrated with.</p>
            </div>
            <div class="col-lg-5 features-text">
                <small>INSPINIA</small>
                <h2>Perfectly designed </h2>
                <i class="fa fa-users big-icon float-right"></i>
                <p>INSPINIA Admin Theme is a premium admin dashboard template with flat design concept. It is fully responsive admin dashboard template built with Bootstrap 3+ Framework, HTML5 and CSS3, Media query. It has a huge collection of reusable UI components and integrated with.</p>
            </div>
        </div>
    </div>
</section>

<section id="contact" class="gray-section contact">
    <div class="container">
        <div class="row m-b-lg">
            <div class="col-lg-12 text-center">
                <div class="navy-line"></div>
                <!-- <h1>Contact Us</h1> -->
                <img src="img/BISION_logo_165x75.png" alt="BISION_logo" />
                <p>BISION은 세상을 보고 얻은 정보를 여러분께 전달하겠습니다.</p>
            </div>
        </div>
        <div class="row m-b-lg justify-content-center">
            <div class="col-lg-3 " style="text-align: center;">
                <address>
                    <strong><span class="navy">BISION, Inc.</span></strong><br/>
                    06164 서울특별시 강남구 영동대로 513<br/>
                    (삼성동, 코엑스 4층 ICT교육센터)<br/>
                    <abbr title="Phone">P:</abbr> (010) 8984-3082
                </address>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 text-center">
                <a href="mailto:kjunho0619@gmail.com" class="btn btn-primary">Send us mail</a>
                <p class="m-t-sm">
                    Or follow us on social platform
                </p>
                <ul class="list-inline social-icon">
                    <li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li class="list-inline-item"><a href="#"><i class="fa fa-linkedin"></i></a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 text-center m-t-lg m-b-lg">
                <p><strong>Copyright &copy; 2019 BY BISION. All rights reserved. </strong>
                <!-- <br/> consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde. --></p>
            </div>
        </div>
    </div>
</section>

<!-- Mainly scripts -->
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>
<script src="js/plugins/wow/wow.min.js"></script>


<script>

    $(document).ready(function () {

        $('body').scrollspy({
            target: '#navbar',
            offset: 80
        });

        // Page scrolling feature
        $('a.page-scroll').bind('click', function(event) {
            var link = $(this);
            $('html, body').stop().animate({
                scrollTop: $(link.attr('href')).offset().top - 50
            }, 500);
            event.preventDefault();
            $("#navbar").collapse('hide');
        });
    });

    var cbpAnimatedHeader = (function() {
        var docElem = document.documentElement,
                header = document.querySelector( '.navbar-default' ),
                didScroll = false,
                changeHeaderOn = 200;
        function init() {
            window.addEventListener( 'scroll', function( event ) {
                if( !didScroll ) {
                    didScroll = true;
                    setTimeout( scrollPage, 250 );
                }
            }, false );
        }
        function scrollPage() {
            var sy = scrollY();
            if ( sy >= changeHeaderOn ) {
                $(header).addClass('navbar-scroll')
            }
            else {
                $(header).removeClass('navbar-scroll')
            }
            didScroll = false;
        }
        function scrollY() {
            return window.pageYOffset || docElem.scrollTop;
        }
        init();

    })();

    // Activate WOW.js plugin for animation on scrol
    new WOW().init();

</script>

</body>
</html>
