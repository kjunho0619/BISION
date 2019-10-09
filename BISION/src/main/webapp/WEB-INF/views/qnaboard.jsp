<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
   <title>BISION > Q&A</title>
   
   <link href="css/bootstrap.min.css" rel="stylesheet">
   <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
   
   <link href="css/plugins/summernote/summernote-bs4.css" rel="stylesheet">
   
   <link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">
   
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

.note-editor.note-frame {
  border: 1px solid #e7eaec;
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
                <div class="col-sm-12" >
                    <h2>Q&A</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="homeForm">Home</a>
                           	&nbsp;<a>></a>&nbsp;
                            <a>고객지원</a>
                        </li>
                        <li class="breadcrumb-item active">
                            <strong>질의 응답</strong>
                        </li>
                    </ol>
                </div>
                
               <!--  <div class="col-sm-8">
                    <div class="title-action">
                        <a href="" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i> 문의하기</a>
                    </div>
                </div>  --> 
            </div> 
            
           	<div class="wrapper wrapper-content animated fadeInRight">
           	
            <!-- <div class="row">
				<div class="col-sm-12" >  <div class="col-sm-12" style="background-color: white;">
                      
                        <div class="ibox-content m-b-sm border-bottom">
                            <div class="text-center p-lg">
                                <h2>궁금하신 점, 도움이 필요하신 점이 있으시다면</h2>
                                <span>우측 상단에</span>
                                <button title="Create new cluster" class="btn btn-primary btn-sm" onclick="location.href=''"><i class="fa fa-plus"></i> <span class="bold">문의하기</span></button> 
                                <span>버튼을 클릭해주세요.</span>
                            </div>
                        </div>  
                                  	
            	</div>
            	
            </div>  -->
            <!-- <br> -->
               
            <div class="row">
            	<div class="col-sm-12" > <!-- style="background-color: white;" -->
            	
			           <div style="background-color: #ffffff; border: 0; border-bottom: 1px solid #e7eaec; padding: 30px 20px 20px 20px;">
<!-- 			                <div class="float-right tooltip-demo">
			                    <a href="mailbox" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="Move to draft folder"><i class="fa fa-pencil"></i> Draft</a>
			                    <a href="mailbox" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="top" title="Discard email"><i class="fa fa-times"></i> Discard</a>
			                </div> -->
			                <h2>
			                   	문의하기
			                </h2>
			            </div>
	            	
            	   <div class="faq-item">
            	   		<div class="panel-body">

                                        <fieldset>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">제목:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="Product name"></div>

                                            </div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">유형:</label>
                                                <!-- <div class="col-sm-10"><input type="text" class="form-control" placeholder="$160.00"></div> -->
                                                <div class="col-sm-10 m-b-xs">
	                                                <select class="form-control-sm form-control input-s-sm inline">
								                        <option value="0">전체</option>
								                        <option value="1">회원정보</option>
								                        <option value="2">서비스문의</option>
								                        <option value="3">오류/의견</option>
								                        <option value="4">기타</option>
								                    </select>
							                    </div>
                                            </div>
                                           <div class="form-group row"><label class="col-sm-2 col-form-label">내용:</label>
                                                <div class="col-sm-10">
                                                    <div class="summernote">
                                                        <h3>Lorem Ipsum is simply</h3>
                                                        dummy text of the printing and typesetting industry. <strong>Lorem Ipsum has been the industry's</strong> standard dummy text ever since the 1500s,
                                                        when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic
                                                        when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic
                                                        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with
                                                        <br/>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">날짜:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="오늘 날짜 불러와주세요." ></div>
                                            </div>
                                            <!-- <div class="form-group row"><label class="col-sm-2 col-form-label">Meta Tag Description:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="Sheets containing Lorem"></div>
                                            </div>
                                            <div class="form-group row"><label class="col-sm-2 col-form-label">Meta Tag Keywords:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="Lorem, Ipsum, has, been"></div>
                                            </div> -->
                                        </fieldset>

                                    </div>
            	   
            	   		<!-- <div class="row">
	            	
	                    <div class="col-sm-5 m-b-xs"><select class="form-control-sm form-control input-s-sm inline">
	                        <option value="0">전체</option>
	                        <option value="1">회원정보</option>
	                        <option value="2">서비스문의</option>
	                        <option value="3">오류/의견</option>
	                        <option value="4">기타</option>
	                    </select>
	                    </div>
	                    <div class="col-sm-4 m-b-xs">
	                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
	                            <label class="btn btn-sm btn-white ">
	                                <input type="radio" name="options" id="option1" autocomplete="off" checked> Day
	                            </label>
	                            <label class="btn btn-sm btn-white active">
	                                <input type="radio" name="options" id="option2" autocomplete="off"> Week
	                            </label>
	                            <label class="btn btn-sm btn-white">
	                                <input type="radio" name="options" id="option3" autocomplete="off"> Month
	                            </label>
	                        </div>
	                    </div>
	                    <div class="col-sm-3">
	                        <div class="input-group"><input placeholder="Search" type="text" class="form-control form-control-sm"> <span class="input-group-append"> <button type="button" class="btn btn-sm btn-primary">Go!
	                        </button> </span></div>
	                    </div>
                 </div>
                 <br>
            	   
                   		<div class="ibox-content border-bottom" style="padding: 15px 20px 0px 20px;  text-align: center;">
							
                            <table style="margin: 0px;" class="table table-hover " >
                                <thead>
                                <tr>
                                    <th style="width: 5%;">번호</th>
                                    <th style="width: 15%;">유형</th>
                                    <th style="width: 50%;">제목</th>
                                    <th style="width: 15%;">상태</th>
                                    <th style="width: 15%;">등록일</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td><span class="pie">0.52,1.041</span></td>
                                    <td>Samantha</td>
                                    <td class="text-navy"> <i class="fa fa-level-up"></i> 40% </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td><span class="pie">226,134</span></td>
                                    <td>Jacob</td>
                                    <td class="text-warning"> <i class="fa fa-level-down"></i> -20% </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td><span class="pie">0.52/1.561</span></td>
                                    <td>Damien</td>
                                    <td class="text-navy"> <i class="fa fa-level-up"></i> 26% </td>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>
                        </div> 
                        
	                    <div class="row" style="padding: 20px 20px 0px 20px; text-align: center; margin: auto;">
	                    	<div style="width:auto; left:0; right:0; margin-left:auto; margin-right:auto;">
			                   <ul class="pagination float-right" style="margin: 0px;">
			                   	<li class="footable-page-arrow disabled"><a data-page="first" href="#first">«</a></li>
			                   	<li class="footable-page-arrow disabled"><a data-page="prev" href="#prev">‹</a></li>
			                   	<li class="footable-page active"><a data-page="0" href="#">1</a></li>
			                   	<li class="footable-page"><a data-page="1" href="#">2</a></li>
			                   	<li class="footable-page"><a data-page="2" href="#">3</a></li>
			                   	<li class="footable-page"><a data-page="3" href="#">4</a></li>
			                   	<li class="footable-page"><a data-page="4" href="#">5</a></li>
			                   	<li class="footable-page-arrow"><a data-page="next" href="#next">›</a></li>
			                    <li class="footable-page-arrow"><a data-page="last" href="#last">»</a></li>
			                   	</ul>
		               		</div> -->
		               		
		               		<div class="row" style="padding: 20px 20px 0px 20px; text-align: center; margin: auto;">
	                    		<!-- <div style="width:auto; left:0; right:0; margin-left:auto; margin-right:auto;"> -->
			                   		<div class="mail-body text-right " style="width: 960px; padding: 20px 10px;">
			                        	<a href="mailbox" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="취소하기" style="margin: 0 5px;"><i class="fa fa-times"></i> 취소하기</a>
			                        	<a href="mailbox" class="btn btn-sm btn-primary" data-toggle="tooltip" data-placement="top" title="등록하기" style="margin: 0 5px;"><i class="fa fa-pencil"></i> 등록하기</a>
			                   		 </div>
		               			<!-- </div> -->
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

<!-- Mainly scripts -->
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>

<!-- SUMMERNOTE -->
<script src="js/plugins/summernote/summernote-bs4.js"></script>

<!-- Data picker -->
<script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>

<script>
    $(document).ready(function(){

        $('.summernote').summernote();

        $('.input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });

    });
</script>





</html>