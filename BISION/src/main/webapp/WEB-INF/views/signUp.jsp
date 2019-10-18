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
    

	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:500,700&display=swap&subset=korean" rel="stylesheet">
</head>

<style>
font{
	font-family: 'Noto Sans KR', sans-serif; 
}
</style>
<script type="text/javascript">
function signup() {
	if(confirm("입력하신 정보로 가입하시겠습니까?")==true){
		document.getElementById('form').submit();
	}else{
		return;
	}
}
</script>
<body class="gray-bg">
<c:if test="${signupErrMessage != null}">
	<script type="text/javascript">
		alert('${signupErrMessage}');
	</script>
</c:if>
	<div class="text-center loginscreen animated fadeInDown" style="padding: 40px 0px 0px 0px;">
	    	<a  role="button" href="homeForm"><img alt="BISION_logo" src="img/BISION_logo_400x200.png"></a>
 	</div>
    <div class="middle-box text-center loginscreen animated fadeInDown" style="padding: 0px;">
        <div>
		</div>
    </div>
    
    <!-- 회원가입 form -->
		<div class=" wrapper wrapper-content animated fadeInRight">
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8">
					<div class="ibox">
						<div class="ibox-title">
							<h5>회원가입 양식</h5>
						</div>
						<div class="ibox-content">
							<form action="signup" id = "form" method = "post">
								<h1>회원정보입력</h1>
								<fieldset style="margin-left: 20px; margin-right: 20px;">
									<h2>필수 회원정보 입력</h2>
									<div class="row">
										<div class="col-lg-6">
											<div class="form-group">
												<label>이름 *</label> <input id="usename" name="username"
													type="text" class="form-control required">
											</div>
											<div class="form-group">
												<label>비밀번호 *</label> <input id="userpw"
													name="userpw" type="password" class="form-control required password">
											</div>
											<div class="form-group">
												<label>생년월일 *</label> <input id="userbirth"
													name="userbirth" type="date" class="form-control required date">
											</div>
											<div class="form-group">
												<label>전화번호 *</label> <input id="userphone"
													name=userphone type="number" class="form-control required number" placeholder="- 를 제외하고 숫자만 입력해주세요.">
											</div>											
										</div>
										<div class="col-lg-6">
											<div class="form-group">
											<!-- 이 부분은 앞에 이메일 인증하면서 적은 값 가져오기 -->
												<label>ID * <small>(이메일은 아이디로 사용됩니다.)</small></label> 
												<input id="userid" name="userid"
													type="email" class="form-control required email">
											</div>
											<div class="form-group">
												<label>비밀번호 확인 *</label> 
												<input id="userpwcheck" name="userpwcheck"
													type="password" class="form-control required">
											</div>
											<div class="form-group">
												<label>주소 *</label> 
												<input id="useraddress" name="useraddress"
													type="text" class="form-control required">
											</div>
											<div class="form-group">
												<label>직업 *</label> 
												
												
												<select id="userbelong" name="userbelong" class="form-control  required" >
													    <option value="" selected="selected">직업선택</option>
													    <option value="student">학생</option>
													    <option value="company">회사원</option>
													    <option value="order">기타</option>
												</select>
											
											</div>
											
										</div>
										<br>
                                
								</div>
								</fieldset>
								</form>
						</div>
					</div>
					<p class="m-t" style="text-align: center;">
					<small>BISION &copy; 2019</small>
					</p>
				</div>
				<div class="col-lg-2"></div>
			</div>
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

    <!-- Steps -->
    <script src="js/plugins/steps/jquery.steps.min.js"></script>

    <!-- Jquery Validate -->
    <script src="js/plugins/validate/jquery.validate.min.js"></script>

	<script>
        $(document).ready(function(){
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
