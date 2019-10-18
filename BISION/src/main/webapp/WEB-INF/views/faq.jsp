<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
   <title>BISION > FAQ</title>
   
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
   
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:500,700&display=swap&subset=korean" rel="stylesheet">
</head>

<style>
font{
	font-family: 'Noto Sans KR', sans-serif; 
}
</style>

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

<body class="top-navigation">

   <div id="wrapper">
      <div id="page-wrapper" class="gray-bg">
         <div class="row border-bottom white-bg">
            <nav class="navbar navbar-expand-lg navbar-static-top"
               role="navigation">

               <a href="homeForm" class="navbar-brand" style="padding-top : 5px; padding-bottom : 5px;"><img src="img/BISION_logo_final_final.png"></a>
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
                        href="homeForm #features">기술소개</a></li>
                     <li class="dropdown"><a aria-expanded="false" role="button"
                        href="homeForm #workflow">업데이트</a></li>
                     <li class="dropdown"><a aria-expanded="false" role="button"
                        href="homeForm #pricing">가격</a></li>
                     <li class="dropdown"><a aria-expanded="false" role="button" href="homeForm #customerSupport" class="dropdown-toggle" data-toggle="dropdown">고객지원</a>
                         <ul role="menu" class="dropdown-menu">
                                  <li><a href="faqForm" style="text-align: center;">FAQ</a></li>
                                  <li><a href="qnaForm" style="text-align: center;">Q&A</a></li>
                              </ul>
                     </li>

                  </ul>
                  <ul class="nav navbar-top-links navbar-right">
                     <!-- 로그인 전 -->
                    	<c:if test="${sessionScope.loginUser == null }"> 
                	     	<li><a href="loginForm"><i class="fa fa-user-o"></i><font class="colorFont">로그인</font></a></li>
                	  	 	<li><a href="signUpForm"><i class="fa fa-sign-in"></i><font class="colorFont">회원가입</font></a></li>
                		</c:if>
                		<!-- 로그인 후 -->
                		<c:if test="${sessionScope.loginUser != null }"> 
                	     	<li><a href="checkPassword"><i class="fa fa-user"></i><font class="colorFont">마이페이지</font></a></li>
                	  	 	<li><a href="logout"><i class="fa fa-sign-out"></i><font class="colorFont">로그아웃</font></a></li>
                		</c:if>
                  </ul>
               </div>
            </nav>
         </div>
         
		 <!-- 내용 시작 -->
         <div class="wrapper wrapper-content">
            <div class="container">
            <div class="row wrapper border-bottom white-bg page-heading" >
                <div class="col-sm-4" >
                    <h2>FAQ</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="homeForm">Home</a>
                           	&nbsp;<a>></a>&nbsp;
                            <a>고객지원</a>
                        </li>
                        <li class="breadcrumb-item active">
                            <strong>자주 묻는 질문</strong>
                        </li>
                    </ol>
                </div>
                
                <div class="col-sm-8">
                    <div class="title-action">
                        <a href="" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i> 질문 추가하기</a>
                    </div>
                </div>  
            </div> 
            
           	<div class="wrapper wrapper-content animated fadeInRight">
            
             <!-- FAQ 1 -->
            <div class="row">
            	<div class="col-sm-12" >
            	   <div class="faq-item">
                            <div class="row">
                            	<div class="col-md-1" style="padding: 0px; text-align: center;">
                            		<a style="font-size: 30px;">Q</a>
                            	</div>
                                <div class="col-md-10" style="padding: 10px 0px;">
                                    <a data-toggle="collapse" href="#faq1" class="faq-question">BISION의 활용으로 기업과 사용자가 얻게 되는 이익은 무엇인가요 ?</a>
                            </div>
                            <div class="col-md-1">
                            	<i class="fa fa-chevron-down" style="padding: 15px 0px 15px 30px;"></i>
                            </div>
                         </div>
                            <div class="row">
                                <div class="col-lg-12">
                                	<c:choose>
                                		<c:when test="${value eq '1'}">
                                			<div id="faq1" class="panel-collapse">
		                                		<div class="faq-answer">
		                                            <p>
		                                               BISION은 소셜네트워크, 뉴스 등을 통해 정보를 수집합니다.
			 									<br><br>수집된 정보의 내용에 따라 기업에 긍정적인 영향을 주는 경우도 있고 부정적인 영향을 주는 경우도 있을 수 있습니다. BISION에서는 자체적인 기준에 따라 해당 영향력의 수준을 측정하여 사용자에게 알기 쉬운 형태로 전달합니다.
												<br><br>사용자는 발생할 수 있는 문제에 대해 미리 감지하여 대응할 수 있으며 사건의 본질에도 쉽게 접근할 수 있습니다.
		                                            </p>
		                                        </div>
		                                    </div>
                                		</c:when>
                                		<c:otherwise>
                                			<div id="faq1" class="panel-collapse collapse ">
                                			<div class="faq-answer">
		                                            <p>
		                                               BISION은 소셜네트워크, 뉴스 등을 통해 정보를 수집합니다.
			 									<br><br>수집된 정보의 내용에 따라 기업에 긍정적인 영향을 주는 경우도 있고 부정적인 영향을 주는 경우도 있을 수 있습니다. BISION에서는 자체적인 기준에 따라 해당 영향력의 수준을 측정하여 사용자에게 알기 쉬운 형태로 전달합니다.
												<br><br>사용자는 발생할 수 있는 문제에 대해 미리 감지하여 대응할 수 있으며 사건의 본질에도 쉽게 접근할 수 있습니다.
		                                            </p>
		                                        </div>
		                                    </div>
                                		</c:otherwise>
                                	</c:choose>
                                </div>
                            </div>
                        </div>
                       
                        <!-- FAQ 2 -->
                        <div class="faq-item">
                            <div class="row">
                            	<div class="col-md-1" style="padding: 0px; text-align: center;">
                            		<a style="font-size: 30px;">Q</a>
                            	</div>
                                <div class="col-md-10" style="padding: 10px 0px;">
                                    <a data-toggle="collapse" href="#faq2" class="faq-question">가장 신속하고 편리하게 안내를 받고자 합니다. 어디로 연락하면 되나요 ?</a>
                            </div>
                            <div class="col-md-1">
                            	<i class="fa fa-chevron-down" style="padding: 15px 0px 15px 30px;"></i>
                            </div>
                         </div>
                            <div class="row">
                                <div class="col-lg-12">
                                	<c:choose>                               		
                                		<c:when test="${value eq '2'}">
		                                     <div id="faq2" class="panel-collapse">
		                                        <div class="faq-answer">
		                                            <p>
		                                               	평가의뢰, 평가수수료, 사용방법 등 기타 관련 안내를 원하시는 분은 
		                                               	<br>Q&A게시판에 글을 올려주시거나 대표번호(010-4359-4998) 또는 영업팀(010-7475-5425)로 문의하여 주시기 바랍니다. 
		                                               	<br><br>신속하고 정확하게 안내해 드리겠습니다.
		                                            </p>
		                                        </div>
		                                    </div>                               			
                                		</c:when>
                                		<c:otherwise>
		                                    <div id="faq2" class="panel-collapse collapse ">
		                                        <div class="faq-answer">
		                                            <p>
		                                               	평가의뢰, 평가수수료, 사용방법 등 기타 관련 안내를 원하시는 분은 
		                                               	<br>Q&A게시판에 글을 올려주시거나 대표번호(010-4359-4998) 또는 영업팀(010-7475-5425)로 문의하여 주시기 바랍니다. 
		                                               	<br><br>신속하고 정확하게 안내해 드리겠습니다.
		                                            </p>
		                                        </div>
		                                    </div>                                		
                                		</c:otherwise>
                                	</c:choose>

                                </div>
                            </div>
                        </div>
                        
                        <!-- FAQ 3 -->
                        <div class="faq-item">
                            <div class="row">
                            	<div class="col-md-1" style="padding: 0px; text-align: center;">
                            		<a style="font-size: 30px;">Q</a>
                            	</div>
                                <div class="col-md-10" style="padding: 10px 0px;">
                                    <a data-toggle="collapse" href="#faq3" class="faq-question">기업평가 컨설팅 의뢰 시 소요 기간 및 비용은 어떻게 되나요 ?</a>
                            </div>
                            <div class="col-md-1">
                            	<i class="fa fa-chevron-down" style="padding: 15px 0px 15px 30px;"></i>
                            </div>
                         </div>
                            <div class="row">
                                <div class="col-lg-12">
                                       <c:choose>
	                                		<c:when test="${value eq '3'}">
			                                    <div id="faq3" class="panel-collapse">
			                                        <div class="faq-answer">
			                                            <p>
			                                               	기초 평가에 필요한 평가기간은 신규 업체의 경우  20영업일 이내를 기준으로 하며,
			                                               	<br> 신속한 평가기초자료 조사, 인터뷰 및 실사 등 평가 진행에 원활한 협조가 이루어질 경우 실제 소요기간은 단축될 수 있습니다. 
			                                               	<br>컨설팅 수수료는 당사의 수수료 체계에 의거한 수수료가 적용됩니다.
			                                            </p>
			                                        </div>
			                                    </div>	                                			
	                                		</c:when>
	                                		<c:otherwise>
			                                    <div id="faq3" class="panel-collapse collapse ">
			                                        <div class="faq-answer">
			                                            <p>
			                                               	기초 평가에 필요한 평가기간은 신규 업체의 경우  20영업일 이내를 기준으로 하며,
			                                               	<br> 신속한 평가기초자료 조사, 인터뷰 및 실사 등 평가 진행에 원활한 협조가 이루어질 경우 실제 소요기간은 단축될 수 있습니다. 
			                                               	<br>컨설팅 수수료는 당사의 수수료 체계에 의거한 수수료가 적용됩니다.
			                                            </p>
			                                        </div>
			                                    </div>	                                		
	                                		</c:otherwise>
                                		</c:choose>

                                </div>
                            </div>
                        </div>
                        
                        <!-- FAQ 4 -->
                        <div class="faq-item">
                            <div class="row">
                            	<div class="col-md-1" style="padding: 0px; text-align: center;">
                            		<a style="font-size: 30px;">Q</a>
                            	</div>
                                <div class="col-md-10" style="padding: 10px 0px;">
                                    <a data-toggle="collapse" href="#faq4" class="faq-question">서비스 불편사항 접수는 어디서 할 수 있나요 ?</a>
                            </div>
                            <div class="col-md-1">
                            	<i class="fa fa-chevron-down" style="padding: 15px 0px 15px 30px;"></i>
                            </div>
                         </div>
                            <div class="row">
                                <div class="col-lg-12">
									<c:choose>
										<c:when test="${value eq '4'}">
											<div id="faq4" class="panel-collapse">
												<div class="faq-answer">
													<p>
														데스크탑으로 접속한 경우 웹페이지에 있는 Q&A메뉴를 통해 접수할 수 있습니다. <br>또는
														영업팀 대표번호(010-7475-5425)로 문의하여 주시기 바랍니다.
													</p>
												</div>
											</div>
										</c:when>
										<c:otherwise>
											<div id="faq4" class="panel-collapse collapse ">
												<div class="faq-answer">
													<p>
														데스크탑으로 접속한 경우 웹페이지에 있는 Q&A메뉴를 통해 접수할 수 있습니다. <br>또는
														영업팀 대표번호(010-7475-5425)로 문의하여 주시기 바랍니다.
													</p>
												</div>
											</div>
										</c:otherwise>
									</c:choose>
								</div>
                            </div>
                        </div>
                     </div>
            	</div>  
            <br><br><br>
            </div>
         </div>
         </div>
         <!-- 내용 끝 -->
         <div class="footer">
            <div class="float-right">
               <!-- 10GB of <strong>250GB</strong> Free. -->
            </div>
            <div>
               <strong>Copyright</strong> BISION &copy; 2019
            </div>
         </div>

      </div>
   </div>

</body>

</html>