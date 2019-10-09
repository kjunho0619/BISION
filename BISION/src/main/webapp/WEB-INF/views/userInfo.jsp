<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>BISION | Sign Up</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet"> 
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    
	<!-- validate 한글 지원 -->
	<script type="text/javascript" src="js/validate/jquery.validate.js"></script>
	<script type="text/javascript" src="js/validate/additional-methods.js"></script>
	<script type="text/javascript" src="js/validate/localization/messages_ko.min.js"></script>
	
	<!-- Sweet Alert -->
    <link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
	
    

	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:500,700&display=swap&subset=korean" rel="stylesheet">
</head>

<style>
font{
	font-family: 'Noto Sans KR', sans-serif; 
}
</style>
<script type="text/javascript">
</script>
<body class="gray-bg">

	<div class="text-center loginscreen animated fadeInDown" style="padding: 40px 0px 0px 0px;">
	    	<a  role="button" href="homeForm"><img alt="BISION_logo" src="img/BISION_logo_400x200.png"></a>
 	</div>
 	
 	
    <div class="middle-box text-center loginscreen animated fadeInDown" style="padding: 0px;">
        <div>
            <!-- <div style="text-align: center;">
                <h1 class="logo-name">IN+</h1>			
            </div> -->
<!--             <h3>BISION에 오신 것을 환영합니다</h3>
            <p>
            	기업 분석과 키워드 검색 등 BISION만의 <br>다양한 기업 분석 서비스가 준비되어 있습니다.
            </p>
            <p>서비스를 이용하시려면 회원가입이 필요합니다.</p> -->
            <!-- <form class="m-t" role="form" action="index">
                <div class="form-group">
                    <input type="email" class="form-control" placeholder="Username" required="">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password" required="">
                </div> -->
		</div>
    </div>
    
    <!-- 회원가입 form -->
		<div class=" <wrapper wrapper-content animated fadeInRight">
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8">
					<div class="ibox">
						<div class="ibox-title">
							<h5>마이 페이지</h5>
							<!-- <div class="ibox-tools">
								<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
								</a> <a class="dropdown-toggle" data-toggle="dropdown" href="#">
									<i class="fa fa-wrench"></i>
								</a>
								<ul class="dropdown-menu dropdown-user">
									<li><a href="#" class="dropdown-item">Config option 1</a>
									</li>
									<li><a href="#" class="dropdown-item">Config option 2</a>
									</li>
								</ul>
								<a class="close-link"> <i class="fa fa-times"></i>
								</a>
							</div> -->
						</div>
						
						
						<div class="ibox-content">
<!-- 							<h2>BISION에 오신 것을 환영합니다</h2>
							<p><br>기업 분석과 키워드 검색 등 BISION만의 다양한 기업 분석 서비스가 준비되어 있습니다.
									<br>서비스를 이용하시려면 회원가입이 필요합니다.</p> -->
									
									
									<!-- 여기부터  -->
							<form>  <!-- class="content clrearfix" -->
								<fieldset class="body current" style="margin: 0 5px;" >
	
								<div class="bg-muted b-r-sm" style="padding: 25px 45px;">
									<h2>회원정보</h2>
									<p>입력하신 회원정보를 수정하실 수 있습니다.</p>
									<table class="table table-boardered ">
                                 <tr>
                                    <!-- 아이디 입력 텍스트-->
                                    <!-- <th>아이디</th>
                                    <td><input type="text" class="form-control"
                                       name="user_id" id="user_id" placeholder="ID를 입력하세요">
                                       <span id="chkDuple" style="display: none; color: red;"></span>
                                    </td>
                                    아이디 중복체크
                                    <td style="width: 110px;"><button
                                          class="btn btn-primary" onclick="registerCheckFunction();"
                                          type="button">중복 체크</button></td>

                                 </tr>

                                 비밀번호 입력 텍스트
                                 <tr>
                                    <th>비밀번호</th>
                                    <td><input type="password" class="form-control"
                                       name="user_pw" id="user_pw" placeholder="비밀번호를 입력하세요">
                                       <span id="chkPass1" style="display: none; color: red;"></span></td>
                                 </tr>

                                 비밀번호 확인 텍스트
                                 <tr>
                                    <th>비밀번호확인</th>
                                    <td><input type="password" class="form-control"
                                       name="user_pw2" id="user_pw2"
                                       placeholder="재확인용 비밀번호를 입력하세요"> <span id="chkPass2"
                                       style="display: none; color: red;"></span></td>
                                 </tr>

                                 <tr>
                                    이름 입력 텍스트
                                    <th>이름</th>
                                    <td><input type="text" class="form-control"
                                       name="user_name" id="user_name" placeholder="이름을 입력해 주세요."
                                       maxlength="20"><span id="chkName"
                                       style="display: none; color: red;"></span></td>
                                 </tr>
                                 <tr>
                                    나이 입력 텍스트
                                    <th>나이</th>
                                    <td><input type="text" class="form-control"
                                       name="user_age" id="user_age" placeholder="숫자만 입력해주세요"
                                       maxlength="2"><span id="chkAge"
                                       style="display: none; color: red;"></span></td>
                                 </tr> -->
                                 
                                 <tr>
                                 	<th style="height: 50px; vertical-align:middle; justify-content:center;">아이디<small><br>(이메일과 동일합니다.)</small></th>
                                    <td>
                                    	<input type="text" class="form-control" name="userId" id="userId" readonly>
                                       <span id="chkDuple" style="display: none; color: red;"></span>
                                    </td>
                                </tr>
                                 
                                 <tr>
                                 <th style="height: 50px; vertical-align:middle; justify-content:center;">이름</th>
                                    <td>
                                    	<input type="text" class="form-control" name="userName" id="userName" >
                                       <!-- <span id="chkDuple" style="display: none; color: red;"></span> -->
                                    </td>
                                </tr>
                                
                                 <tr>
                                 	<th style="height: 50px; vertical-align:middle; justify-content:center;">비밀번호</th>
                                    <td>
                                    	<input type="password" class="form-control" name="userPw" id="userPw" >
                                       <!-- <span id="chkDuple" style="display: none; color: red;"></span> -->
                                    </td>
                                </tr>
                                
                                 <tr>
                                 	<th style="height: 50px; vertical-align:middle; justify-content:center;">비밀번호 확인</th>
                                    <td>
                                    	<input type="password" class="form-control" name="userPwCheck" id="userPwCheck" >
                                       <!-- <span id="chkDuple" style="display: none; color: red;"></span> -->
                                    </td>
                                </tr>             
                                
                                 <tr>
                                 	<th style="height: 50px; vertical-align:middle; justify-content:center;">생년월일</th>
                                    <td>
                                    	<input type="text" class="form-control" name="userBirth" id=""userBirth"" >
                                       <!-- <span id="chkDuple" style="display: none; color: red;"></span> -->
                                    </td>
                                </tr>                      
                                
                               <tr>
                                 	<th style="height: 50px; vertical-align:middle; justify-content:center;">주소</th>
                                    <td>
                                    	<input type="text" class="form-control" name="userPwCheck" id="userPwCheck" >
                                       <!-- <span id="chkDuple" style="display: none; color: red;"></span> -->
                                    </td>
                                </tr>        
                                
                               <tr>
                                 	<th style="height: 50px; vertical-align:middle; justify-content:center;">전화번호</th>
                                    <td>
                                    	<input type="number" class="form-control" name="userPwCheck" id="userPwCheck" >
                                      <!--  <span id="chkDuple" style="display: none; color: red;"></span> -->
                                    </td>
                                </tr>   
                                
								<tr>
                                 	<th style="height: 50px; vertical-align:middle; justify-content:center;">직업</th>
                                    <td>
										<select id="userJob" name="userJob" class="form-control  required" >
											    <option value="" selected="selected">직업선택</option>
											    <option value="student">학생</option>
											    <option value="company">회사원</option>
											    <option value="order">기타</option>
										</select>
                                    </td>
                                </tr>      
                                
                                                                                                     
                                <!-- 
                                 <tr>
                                    성별 입력 텍스트
                                    <th style="height: 50px;  vertical-align : middle; justify-content:center; margin: 0 auto;">성별</th>
                                    <td style="vertical-align:middle; display:inline-flex;  width:100%; padding: 15px 8px;">
                                    	<input type="radio" name="pollGender" value="M" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;남&nbsp;&nbsp;&nbsp;
                                       	<input type="radio" name="pollGender" value="F" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;여&nbsp;&nbsp;
                                       	<span id="chkGender" style="display: none; color: red;"></span>
                                    </td>
                                 </tr>
                                 <tr>
                                    연령대 입력 텍스트
                                    <th style="height: 50px; vertical-align:middle; justify-content:center;">연령대</th>
                                    <td style="vertical-align : middle; display:inline-flex; width:100%; padding: 15px 8px;">
                                    	<input type="radio" name="pollAge" value="10" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;10대&nbsp;&nbsp;&nbsp;&nbsp;
                                       	<input type="radio" name="pollAge" value="20" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;20대&nbsp;&nbsp;&nbsp;&nbsp;
                                       	<input type="radio" name="pollAge" value="30" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;30대&nbsp;&nbsp;&nbsp;&nbsp;
                                       	<input type="radio" name="pollAge" value="40" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;40대&nbsp;&nbsp;&nbsp;&nbsp;
                                       	<input type="radio" name="pollAge" value="50" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;50대&nbsp;&nbsp;&nbsp;&nbsp;
                                       	<input type="radio" name="pollAge" value="60" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;60대&nbsp;&nbsp;&nbsp;&nbsp;
                                       	<input type="radio" name="pollAge" value="70" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;70대 이상&nbsp;&nbsp;&nbsp;&nbsp;
                                       	<span id="chkAge" style="display: none; color: red;"></span>
                                    </td>
                                 </tr>
                                 <tr>
                                    관심분야 입력 텍스트
                                    <th style="height: 50px; vertical-align : middle;">관심 분야</th>
                                    	<td style="vertical-align : middle;">
                                    		<input type="checkbox" name="user_category" onclick="checkboxSelect('user_category',3)" value="1">&nbsp;&nbsp;전자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    		<input type="checkbox" name="user_category" onclick="checkboxSelect('user_category',3)" value="2">&nbsp;&nbsp;통신&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    		<input type="checkbox" name="user_category" onclick="checkboxSelect('user_category',3)" value="3">&nbsp;&nbsp;예술&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       		<input type="checkbox" name="user_category" onclick="checkboxSelect('user_category',3)" value="4">&nbsp;&nbsp;사회&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                       		<input type="checkbox" name="user_category" onclick="checkboxSelect('user_category',3)" value="5">&nbsp;&nbsp;이슈&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                                       		<input type="checkbox" name="user_category" onclick="checkboxSelect('user_category',3)" value="6">&nbsp;&nbsp;교육&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                       		<input type="hidden" id="user_category1" name="user_category1" value="0"> 
                                       		<input type="hidden" id="user_category2" name="user_category2" value="0"> 
                                       		<input type="hidden" id="user_category3" name="user_category3" value="0">
                                       </td>
                                 </tr>
                                 <tr>
                                    관심키워드 입력 텍스트
                                    <th style="height: 50px ; vertical-align : middle; width:150px !important;">관심 키워드</th>
                                   	<th style=" width: 150px !important; height: 40px; vertical-align : middle;">관심 키워드</th>
                                   	 <td style="display:inline-flex; vertical-align : middle; width:100%;">
                                    	<div class="col-lg-4">
											<div class="form-group">
												<input id="pollKeyword " name="pollKeyword" type="text" class="form-control">
											</div>
										</div>		
										 <div class="col-lg-4">
											<div class="form-group">
												<input id="pollKeyword" name="pollKeyword" type="text" class="form-control">
											</div>
										</div>		
										<div class="col-lg-4">
											<div class="form-group">
												<input id="pollKeyword" name="pollKeyword" type="text" class="form-control">
											</div>
										</div>		 -->
												<!-- <div class="btn-group">
						                            <button data-toggle="dropdown" class="form-control btn btn-default dropdown-toggle" aria-expanded="false">직업선택</button>
						                            
						                            <ul class="dropdown-menu" x-placement="bottom-start" style="position: absolute; top: 33px; left: 0px; will-change: top, left;">
						                                <li><a class="dropdown-item" href="#">학생</a></li>
						                                <li><a class="dropdown-item" href="#">회사원</a></li>
						                                <li><a class="dropdown-item" href="#">기타</a></li>
						                                <li class="dropdown-divider"></li>
						                                <li><a class="dropdown-item" href="#">Separated link</a></li>
						                            </ul>
						                        </div> -->
                                    </td>
                                 </tr>
                                 <!-- <tr>
                                    signup button 과 close button
                                    <td colspan="2"><input type="button" id="closeButton2"
                                       class="btn btn-secondary" data-dismiss="modal"
                                       value="Close"> <input type="button"
                                       class="btn btn-primary" onclick="checkRegInfo();"
                                       value="Sign up">
                                 </tr> -->
                              </table>
             					</div>
								</fieldset>
							
							
							</form>
							

							<!-- <form id="form" action="#" class="wizard-big">
								<h1>인증하기</h1>
								<fieldset style="margin-left: 20px; margin-right: 20px;">
									<h2>이메일 인증</h2>
									<p>입력하신 이메일로 인증메일을 보내드립니다. 인증을 하셔야 회원가입을 하실 수 있습니다.</p>
									<div class="row">
										<div class="col-lg-8">
											<div class="">
												<label>e-mail *</label> 
													<input id="userEmail" name="userEmail" type="email" class="form-control required">
													<a class="btn btn-sm btn-white btn-block" href="">인증메일 발송</a>
													<button type="submit" class="btn btn-primary block full-width m-b">인증메일 발송</button>
													<button class="btn btn-primary" >인증메일 발송</button>
											</div>
											<div class="">
												<label>Password *</label> <input id="password"
													name="password" type="text" class="form-control required">
											</div>
											<div class="">
												<label>Confirm Password *</label> <input id="confirm"
													name="confirm" type="text" class="form-control required">
											</div> 
											
											<p>입력하신 이메일로 인증메일을 보내드립니다. <br>회원가입을 완료한 후 인증을 하셔야 로그인 하실 수 있습니다.</p>
											
										</div>
										
									<div class="col-lg-12" >
										이메일
												<div class="col-lg-8" style="padding: 0px; float:left;" >
													<label>e-mail *</label> 
													<input id="userEmail" name="userEmail" type="email" class="form-control required" >
												</div>
												<div class="col-lg-4" style="padding: 27px 0px 0px 13px; float:left;">
													<button type="submit" class="btn btn-primary" id="emailCheck">인증메일 발송</button>
												</div>
												<br>
										인증번호
												<div class="col-lg-8" style="padding: 15px 0px 0px 0px; float:left;">
													<label>인증번호 *</label> 
													<input id="confirmNum" name="confirmNum" type="text" class="form-control required">
												</div>
												<div class="col-lg-4" style="padding: 42px 0px 0px 13px; float:left;">
													<button class="btn btn-primary" id="emailNoCheck" >인증번호 확인</button>
												</div>

									</div>
										
										<div class="col-lg-12" >
											<div class="col-lg-12" style="padding: 0px; ">
											<div class="col-lg-12" style="padding: 0px 13px;">
												<div class="col-lg-8" style="padding: 0px; float:left;" >
													<label>e-mail *</label> <input id="userEmail"
														name="userEmail" type="email" class="form-control required">
													<a class="btn btn-sm btn-white btn-block" href="">인증메일 발송</a>
														<button type="submit" class="btn btn-primary block full-width m-b">인증메일 발송</button>
												</div>
												<div class="col-lg-4" style="padding: 27px 0px 0px 13px; float:left;"">
													<button type="submit" class="btn btn-primary">인증메일 발송</button>
												</div>
											</div>
											</div>
											<div class="col-lg-12" style="padding: 5px 0px 13px;">
												<div class="col-lg-8" style="padding: 0px;">
													<label>인증번호 *</label> 
													<input id="confirmNum" name="confirmNum" type="text" class="form-control required">
												</div>
											</div>
												<div class="">
													<label>Confirm Password *</label> <input id="confirm"
														name="confirm" type="text" class="form-control required">
												</div>

									</div>
										
										<div class="col-lg-4">
											<div class="text-center">
												<div style="margin-top: 10px">
													<i class="fa fa-sign-in"
														style="font-size: 180px; color: #e5e5e5"></i>
												</div>
											</div>
										</div>
									</div>

								</fieldset>
								<h1>회원정보입력</h1>
								<fieldset style="margin-left: 20px; margin-right: 20px;">
									<h2>필수 회원정보 입력</h2>
									<div class="row">
										<div class="col-lg-6">
											<div class="form-group">
												<label>이름 *</label> <input id="useName" name="useName"
													type="text" class="form-control required">
											</div>
											<div class="form-group">
												<label>비밀번호 *</label> <input id="userPw"
													name="userPw" type="password" class="form-control required password">
											</div>
											<div class="form-group">
												<label>생년월일 *</label> <input id="userBirth"
													name="userBirth" type="date" class="form-control required date">
											</div>
											<div class="form-group">
												<label>전화번호 *</label> <input id="userPhone"
													name=userPhone type="userPhone" class="form-control required number" placeholder="- 를 제외하고 숫자만 입력해주세요.">
											</div>											
										</div>
										<div class="col-lg-6">
											<div class="form-group">
											이 부분은 앞에 이메일 인증하면서 적은 값 가져오기
												<label>ID * <small>(이메일은 아이디로 사용됩니다.)</small></label> 
												<input id="userId" name="userId"
													type="email" class="form-control required email" readonly="readonly" value="11@11">
											</div>
											<div class="form-group">
												<label>비밀번호 확인 *</label> 
												<input id="userPwCheck" name="userPwCheck"
													type="text" class="form-control required">
											</div>
											<div class="form-group">
												<label>주소 *</label> 
												<input id="userAddress" name="userAddress"
													type="text" class="form-control required">
											</div>
											<div class="form-group">
												<label>직업 *</label> 
												<select name="job" class="form-control ">
													    <option value="" selected="selected">직업선택</option>
													    <option value="student">학생</option>
													    <option value="company">회사원</option>
													    <option value="order">기타</option>
												</select>
												
												<select id="userJob" name="userJob" class="form-control  required" >
													    <option value="" selected="selected">직업선택</option>
													    <option value="student">학생</option>
													    <option value="company">회사원</option>
													    <option value="order">기타</option>
												</select>
												
												<div class="btn-group">
						                            <button data-toggle="dropdown" class="form-control btn btn-default dropdown-toggle" aria-expanded="false">직업선택</button>
						                            
						                            <ul class="dropdown-menu" x-placement="bottom-start" style="position: absolute; top: 33px; left: 0px; will-change: top, left;">
						                                <li><a class="dropdown-item" href="#">학생</a></li>
						                                <li><a class="dropdown-item" href="#">회사원</a></li>
						                                <li><a class="dropdown-item" href="#">기타</a></li>
						                                <li class="dropdown-divider"></li>
						                                <li><a class="dropdown-item" href="#">Separated link</a></li>
						                            </ul>
						                        </div>
						                        
											</div>
										</div>
									</div>
								</fieldset>

								<h1>서비스 조사</h1>
								<fieldset style="margin-left: 20px; margin-right: 20px;">
									<h2>선택 회원정보 입력</h2>
									<p>서비스 품질 향상을 위한 간단한 조사입니다. 선택적으로 입력가능합니다.</p>
									<div class="text-center" style="margin-top: 120px">
										<h2>You did it Man :-)</h2>
									</div>
									
									<table class="table table-boardered">
                                 <tr>
                                    아이디 입력 텍스트
                                    <th>아이디</th>
                                    <td><input type="text" class="form-control"
                                       name="user_id" id="user_id" placeholder="ID를 입력하세요">
                                       <span id="chkDuple" style="display: none; color: red;"></span>
                                    </td>
                                    아이디 중복체크
                                    <td style="width: 110px;"><button
                                          class="btn btn-primary" onclick="registerCheckFunction();"
                                          type="button">중복 체크</button></td>

                                 </tr>

                                 비밀번호 입력 텍스트
                                 <tr>
                                    <th>비밀번호</th>
                                    <td><input type="password" class="form-control"
                                       name="user_pw" id="user_pw" placeholder="비밀번호를 입력하세요">
                                       <span id="chkPass1" style="display: none; color: red;"></span></td>
                                 </tr>

                                 비밀번호 확인 텍스트
                                 <tr>
                                    <th>비밀번호확인</th>
                                    <td><input type="password" class="form-control"
                                       name="user_pw2" id="user_pw2"
                                       placeholder="재확인용 비밀번호를 입력하세요"> <span id="chkPass2"
                                       style="display: none; color: red;"></span></td>
                                 </tr>

                                 <tr>
                                    이름 입력 텍스트
                                    <th>이름</th>
                                    <td><input type="text" class="form-control"
                                       name="user_name" id="user_name" placeholder="이름을 입력해 주세요."
                                       maxlength="20"><span id="chkName"
                                       style="display: none; color: red;"></span></td>
                                 </tr>
                                 <tr>
                                    나이 입력 텍스트
                                    <th>나이</th>
                                    <td><input type="text" class="form-control"
                                       name="user_age" id="user_age" placeholder="숫자만 입력해주세요"
                                       maxlength="2"><span id="chkAge"
                                       style="display: none; color: red;"></span></td>
                                 </tr>
                                 <tr>
                                    성별 입력 텍스트
                                    <th style="height: 50px;  vertical-align : middle; justify-content:center; margin: 0 auto;">성별</th>
                                    <td style="vertical-align:middle; display:inline-flex;  width:100%; padding: 15px 8px;">
                                    	<input type="radio" name="pollGender" value="M" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;남&nbsp;&nbsp;&nbsp;
                                       	<input type="radio" name="pollGender" value="F" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;여&nbsp;&nbsp;
                                       	<span id="chkGender" style="display: none; color: red;"></span>
                                    </td>
                                 </tr>
                                 <tr>
                                    연령대 입력 텍스트
                                    <th style="height: 50px; vertical-align:middle; justify-content:center;">연령대</th>
                                    <td style="vertical-align : middle; display:inline-flex; width:100%; padding: 15px 8px;">
                                    	<input type="radio" name="pollAge" value="10" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;10대&nbsp;&nbsp;&nbsp;&nbsp;
                                       	<input type="radio" name="pollAge" value="20" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;20대&nbsp;&nbsp;&nbsp;&nbsp;
                                       	<input type="radio" name="pollAge" value="30" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;30대&nbsp;&nbsp;&nbsp;&nbsp;
                                       	<input type="radio" name="pollAge" value="40" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;40대&nbsp;&nbsp;&nbsp;&nbsp;
                                       	<input type="radio" name="pollAge" value="50" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;50대&nbsp;&nbsp;&nbsp;&nbsp;
                                       	<input type="radio" name="pollAge" value="60" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;60대&nbsp;&nbsp;&nbsp;&nbsp;
                                       	<input type="radio" name="pollAge" value="70" onclick="hideRadioCheckMsg();">&nbsp;&nbsp;70대 이상&nbsp;&nbsp;&nbsp;&nbsp;
                                       	<span id="chkAge" style="display: none; color: red;"></span>
                                    </td>
                                 </tr>
                                 <tr>
                                    관심분야 입력 텍스트
                                    <th style="height: 50px; vertical-align : middle;">관심 분야</th>
                                    	<td style="vertical-align : middle;">
                                    		<input type="checkbox" name="user_category" onclick="checkboxSelect('user_category',3)" value="1">&nbsp;&nbsp;전자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    		<input type="checkbox" name="user_category" onclick="checkboxSelect('user_category',3)" value="2">&nbsp;&nbsp;통신&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    		<input type="checkbox" name="user_category" onclick="checkboxSelect('user_category',3)" value="3">&nbsp;&nbsp;예술&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       		<input type="checkbox" name="user_category" onclick="checkboxSelect('user_category',3)" value="4">&nbsp;&nbsp;사회&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                       		<input type="checkbox" name="user_category" onclick="checkboxSelect('user_category',3)" value="5">&nbsp;&nbsp;이슈&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                                       		<input type="checkbox" name="user_category" onclick="checkboxSelect('user_category',3)" value="6">&nbsp;&nbsp;교육&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                       		<input type="hidden" id="user_category1" name="user_category1" value="0"> 
                                       		<input type="hidden" id="user_category2" name="user_category2" value="0"> 
                                       		<input type="hidden" id="user_category3" name="user_category3" value="0">
                                       </td>
                                 </tr>
                                 <tr>
                                    관심키워드 입력 텍스트
                                    <th style="height: 50px ; vertical-align : middle; width:150px !important;">관심 키워드</th>
                                   	<th style=" width: 150px !important; height: 40px; vertical-align : middle;">관심 키워드</th>
                                   	 <td style="display:inline-flex; vertical-align : middle;">
                                    	<div class="col-lg-4">
											<div class="form-group">
												<input id="pollKeyword " name="pollKeyword" type="text" class="form-control">
											</div>
										</div>		
										 <div class="col-lg-4">
											<div class="form-group">
												<input id="pollKeyword" name="pollKeyword" type="text" class="form-control">
											</div>
										</div>		
										<div class="col-lg-4">
											<div class="form-group">
												<input id="pollKeyword" name="pollKeyword" type="text" class="form-control">
											</div>
										</div>		
												<div class="btn-group">
						                            <button data-toggle="dropdown" class="form-control btn btn-default dropdown-toggle" aria-expanded="false">직업선택</button>
						                            
						                            <ul class="dropdown-menu" x-placement="bottom-start" style="position: absolute; top: 33px; left: 0px; will-change: top, left;">
						                                <li><a class="dropdown-item" href="#">학생</a></li>
						                                <li><a class="dropdown-item" href="#">회사원</a></li>
						                                <li><a class="dropdown-item" href="#">기타</a></li>
						                                <li class="dropdown-divider"></li>
						                                <li><a class="dropdown-item" href="#">Separated link</a></li>
						                            </ul>
						                        </div>
                                    </td>
                                 </tr>
                                 <tr>
                                    signup button 과 close button
                                    <td colspan="2"><input type="button" id="closeButton2"
                                       class="btn btn-secondary" data-dismiss="modal"
                                       value="Close"> <input type="button"
                                       class="btn btn-primary" onclick="checkRegInfo();"
                                       value="Sign up">
                                 </tr>
                              </table>
             
								</fieldset>

								<h1>약관 동의</h1>
								<fieldset style="margin-left: 20px; margin-right: 20px;">
									<h2>이용약관</h2>
									<p>BISION 서비스 이용약관 및 정보이용 안내에 대한 동의를 해주세요. 
										<br> 회원가입시 작성한 정보는 회원에게 다양한 서비스를 제공하기 위해 사용되며, 회원탈퇴를 할 경우에는 회원과 관련된 데이터는 삭제됩니다.
									</p>
									<input id="acceptTerms" name="acceptTerms" type="checkbox" class="required"> 
									<label for="acceptTerms">I agree with the Terms and Conditions.</label>
									
										<label>이용약관에 동의합니다. *</label>
										<input id="acceptTerms" name="acceptTerms" type="checkbox">
										
 									<input  id="acceptTerms" name="acceptTerms" type="checkbox" class="required"> 
									<label for="acceptTerms">이용약관에 동의합니다.</label>
								</fieldset>
							</form> -->
							<div class="row" style="padding: 20px 20px 0px 20px;">
	                    		<!-- <div style="width:auto; left:0; right:0; margin-left:auto; margin-right:auto;"> -->
			                   		<div class="mail-body text-center " style="width: 100%; padding: 20px 10px;">
			                   			<a href="mailbox" class="btn btn-sm btn-primary"  title="수정하기" style="margin: 0 5px;"><i class="fa fa-pencil"></i> 수정하기</a>
			                        	<a href="homeForm" class="btn btn-white btn-sm"  title="홈으로 가기" style="margin: 0 5px;"><i class="fa fa fa-reply"></i> 홈으로 가기</a>
<!-- 			                        	<a class="btn btn-warning btn-sm withdraw" title="탈퇴하기" style="margin: 0 5px; color: white;"><i class="fa fa-times"></i> 탈퇴하기</a> -->
			                        	<button class="btn btn-warning btn-sm withdraw"><i class="fa fa-times"></i>탈퇴하기</button>
			                   		 </div>
		               			<!-- </div> -->
	                   		</div>
						</div>
					</div>
					<p class="m-t" style="text-align: center;">
					<small>BISION &copy; 2019</small>
					</p>
				</div>
				<div class="col-lg-2"></div>
			</div>
		</div>
    
    
<!-- 			<div class="middle-box text-center loginscreen animated fadeInDown"
			style="padding: 0px;">
		<form class="m-t" role="form" action="index">
				<button type="submit" class="btn btn-primary block full-width m-b">Login</button>
	
				<a href="#"><small>비밀번호를 잊어버리셨나요?</small></a><br>
				<br>
				<p class="text-muted text-center" style="margin-bottom: 8px;">
					<small>계정이 있으신가요?</small>
				</p>
				<a class="btn btn-sm btn-white btn-block" href="login">로그인</a>
			</form>


		</div> -->
	

	<!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- Steps -->
    <script src="js/plugins/steps/jquery.steps.min.js"></script>

    <!-- Jquery Validate -->
    <script src="js/plugins/validate/jquery.validate.min.js"></script>
    
    <!-- Sweet alert -->
    <script src="js/plugins/sweetalert/sweetalert.min.js"></script>

	<script>

        $(document).ready(function(){
        	//////////////////////////////////////////////
        	$('.withdraw').click(function () {
                swal({
                    title: "탈퇴하시겠습니까?",
                    text: "탈퇴시 모든 회원정보가 삭제되며, 되돌릴 수 없습니다.",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "탈퇴하기",
                    closeOnConfirm: false
                }, function () {
                    swal("탈퇴성공!", "회원의 정보를 성공적으로 삭제하였습니다.", "success");
                });
            });
        	////////////////////////////////////////////
 			/* 탈퇴하기 */
/*     		$('.withdraw').click(function () {
    		    swal({
    		        title: "탈퇴하시겠습니까?",
    		        text: "탈퇴시 모든 회원정보가 삭제되며, 되돌릴 수 없습니다.",
    		        type: "warning",
    		        showCancelButton: true,
    		        confirmButtonColor: "#DD6B55",
    		        confirmButtonText: "탈퇴하기",
    		        closeOnConfirm: false
    		    }, function () {
    		        swal("탈퇴성공!", "회원의 정보를 성공적으로 삭제하였습니다.", "success");
    		    });
    		}); */
        	/////////////////////////////////////////
    		  $("#wizard").steps();
              $("#form").steps({
                  bodyTag: "fieldset",
                  onStepChanging: function (event, currentIndex, newIndex)
                  {
                      // Always allow going backward even if the current step contains invalid fields!
                      if (currentIndex > newIndex)
                      {
                          return true;
                      }

                      // Forbid suppressing "Warning" step if the user is to young
                      if (newIndex === 3 && Number($("#age").val()) < 18)
                      {
                          return false;
                      }

                      var form = $(this);

                      // Clean up if user went backward before
                      if (currentIndex < newIndex)
                      {
                          // To remove error styles
                          $(".body:eq(" + newIndex + ") label.error", form).remove();
                          $(".body:eq(" + newIndex + ") .error", form).removeClass("error");
                      }

                      // Disable validation on fields that are disabled or hidden.
                      form.validate().settings.ignore = ":disabled,:hidden";

                      // Start validation; Prevent going forward if false
                      return form.valid();
                  },
                  onStepChanged: function (event, currentIndex, priorIndex)
                  {
                      // Suppress (skip) "Warning" step if the user is old enough.
                      if (currentIndex === 2 && Number($("#age").val()) >= 18)
                      {
                          $(this).steps("next");
                      }

                      // Suppress (skip) "Warning" step if the user is old enough and wants to the previous step.
                      if (currentIndex === 2 && priorIndex === 3)
                      {
                          $(this).steps("previous");
                      }
                  },
                  onFinishing: function (event, currentIndex)
                  {
                      var form = $(this);

                      // Disable validation on fields that are disabled.
                      // At this point it's recommended to do an overall check (mean ignoring only disabled fields)
                      form.validate().settings.ignore = ":disabled";

                      // Start validation; Prevent form submission if false
                      return form.valid();
                  },
                  onFinished: function (event, currentIndex)
                  {
                      var form = $(this);

                      // Submit form input
                      form.submit();
                  }
              }).validate({
                          errorPlacement: function (error, element)
                          {
                              element.before(error);
                          },
                          rules: {
                              confirm: {
                                  equalTo: "#password"
                              }
                          }
                      });
              /* 이메일 인증 버튼  
              var l = Ladda.bind('.ladda-button-demo');
              l.click(function()

                 // Start loading
                 l.ladda( 'start' );

                 // Do something in backend and then stop ladda
                 // setTimeout() is only for demo purpose
                 setTimeout(function()
                     l.ladda('stop');
                 },2000)

             });*/
         });

    </script>
</body>

</html>
