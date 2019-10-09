<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>BISION | Login</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
	<link href="css/plugins/iCheck/custom.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    
    <link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">

	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:500,700&display=swap&subset=korean" rel="stylesheet">
</head>

<style>
font{
	font-family: 'Noto Sans KR', sans-serif; 
}
</style>
    <!-- 체크박스 -->
<script>
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
            
            function loginButonClick(){
            	userid = $("inputId").val();
            	userpw = $("inputPassword").val();
            	
            	if(userid.length == 0){
            		return false;
            	}
            	
            	if(userpw.length == 0){
            		return false;
            	}
            	
            	$("#loginForm").submit();
            }
            
            
</script>
<body class="gray-bg">

	<!-- Cookie가 비어있지 않을 때 checked 속성을 줌 -->
	<c:if test="${not empty cookie.user_check}">
		<c:set value="checked" var="checked"/>
	</c:if>

	<div class="text-center loginscreen animated fadeInDown" style="padding: 40px 0px 0px 0px;">
	    	<a  role="button" href="homeForm"><img alt="BISION_logo" src="img/BISION_logo_400x200.png"></a>
	</div>
    <div class="middle-box text-center loginscreen animated fadeInDown" style="padding: 0px;">
            <h3>BISION에 오신 것을 환영합니다</h3>
            <p>
            	기업 분석과 키워드 검색 등 BISION만의 <br>다양한 기업 분석 서비스가 준비되어 있습니다.
                <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
            </p>
            <p>기능을 사용하시려면 로그인해주세요.</p>
            <form class="m-t" id="loginForm" method="post" role="form" action="login">
                <div class="form-group">
                    <input type="email" class="form-control required" id="inputId" name="userid" value="${cookie.loginCookieId.value}" placeholder="이메일(ID)" required="" > 
                </div>
                <div class="form-group">
                    <input type="password" class="form-control required" id="inputPassword" name="userpw" placeholder="비밀번호"  value="${cookie.loginCookiePw.value}" required=""> 
                </div>
			<c:if test="${errorMassage != null}">
					<font style="color: red">${errorMassage}</font>;
			</c:if>
			<!-- 오류(알림) 메시지 위치 -->
			<div class="form-group">
				<span class="font-weight-bold text-white bg-dark"
					id="spanLoginCheck"></span>
			</div>

			<button id="loginBtn" class="btn btn-primary block full-width m-b" onclick="loginButonClick();">Login</button>

			<!-- 아이디 기억하기 -->
                <div class="form-group row">
                	<div class="col-lg-offset-2 col-lg-10">
					<div class="i-checks" style="text-align: left;">
						<label> 
						<input type="checkbox" id="rememberus" name="remember_userId" value="remember" checked='${cookie.loginCookieId != null ? "checked" : ""}'><i></i>&nbsp;&nbsp;&nbsp;
							로그인 상태 기억하시겠습니까?
						</label>
					</div>
				</div>
                </div>

			<a href="#"><small>비밀번호를 잊어버리셨나요?</small></a><!-- <br><br> -->
                <p class="text-muted text-center" style="margin: 8px 0px 5px;"><small>계정이 없으신가요?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="register">회원가입</a>
            </form>
            <p class="m-t"> <small>BISION &copy; 2019</small> </p>
    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    
        <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>
    
    <!-- iCheck -->
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    
    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- Steps -->
    <script src="js/plugins/steps/jquery.steps.min.js"></script>

    <!-- Jquery Validate -->
    <script src="js/plugins/validate/jquery.validate.min.js"></script>

</body>

</html>
