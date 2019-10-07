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
		<div class=" wrapper wrapper-content animated fadeInRight">
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8">
					<div class="ibox">
						<div class="ibox-title">
							<h5>회원가입 양식</h5>
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
							<h2>BISION에 오신 것을 환영합니다</h2>
							<p><br>기업 분석과 키워드 검색 등 BISION만의 다양한 기업 분석 서비스가 준비되어 있습니다.
									<br>서비스를 이용하시려면 회원가입이 필요합니다.</p>

							<form id="form" action="#" class="wizard-big">
								<h1>인증하기</h1>
								<fieldset>
									<h2>이메일 인증</h2>
									<p>입력하신 이메일로 인증메일을 보내드립니다. 인증을 하셔야 회원가입을 하실 수 있습니다.</p>
								<!-- 	<div class="row"> -->
<!-- 										<div class="col-lg-8">
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
											
										</div> -->
										
									<div class="col-lg-12" >
										<!-- 이메일 -->
										<form action="emailConfirm" method = "post">
												<div class="col-lg-8" style="padding: 0px; float:left;" >
													<label>e-mail *</label> 
													<input id="userEmail" name="userEmail" type="email" class="form-control required" >
												</div>
												<div class="col-lg-4" style="padding: 27px 0px 0px 13px; float:left;">
													<button type="submit" class="btn btn-primary">인증메일 발송</button>
												</div>
												</form>
												<br>
										<!-- 인증번호 -->
										
										<!-- 		<div class="col-lg-8" style="padding: 15px 0px 0px 0px; float:left;">
													<label>인증번호 *</label> 
													<input id="confirmNum" name="confirmNum" type="text" class="form-control required">
												</div>
												<div class="col-lg-4" style="padding: 42px 0px 0px 13px; float:left;">
													<button type="submit" class="btn btn-primary">인증번호 확인</button>
												</div>
											 -->

									</div>
										
										<!-- <div class="col-lg-12" >
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

									</div> -->
										
										<!-- <div class="col-lg-4">
											<div class="text-center">
												<div style="margin-top: 10px">
													<i class="fa fa-sign-in"
														style="font-size: 180px; color: #e5e5e5"></i>
												</div>
											</div>
										</div> -->
									<!-- </div> -->

								</fieldset>
								<h1>회원정보입력</h1>
								<fieldset>
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
										</div>
										<div class="col-lg-6">
											<div class="form-group">
											<!-- 이 부분은 앞에 이메일 인증하면서 적은 값 가져오기 -->
												<label>ID * <small>(이메일은 아이디로 사용됩니다.)</small></label> 
												<input id="userEmail" name="userEmail"
													type="email" class="form-control required email" readonly="readonly">
											</div>
											<div class="form-group">
												<label>비밀번호 확인 *</label> 
												<input id="userPwCheck" name="userPwCheck"
													type="text" class="form-control required">
											</div>
										</div>
									</div>
								</fieldset>

								<h1>Warning</h1>
								<fieldset>
									<div class="text-center" style="margin-top: 120px">
										<h2>You did it Man :-)</h2>
									</div>
								</fieldset>

								<h1>Finish</h1>
								<fieldset>
									<h2>Terms and Conditions</h2>
									<input id="acceptTerms" name="acceptTerms" type="checkbox"
										class="required"> <label for="acceptTerms">I
										agree with the Terms and Conditions.</label>
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
