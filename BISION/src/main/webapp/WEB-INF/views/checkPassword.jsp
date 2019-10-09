<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>BISION | check password</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

	<div class="text-center loginscreen animated fadeInDown" style="padding: 40px 0px 0px 0px;">
	   <a  role="button" href="homeForm"><img alt="BISION_logo" src="img/BISION_logo_400x200.png"></a>
	</div>

    <div class="passwordBox animated fadeInDown" style="padding: 20px;">
        <div class="row">

            <div class="col-md-12">
                <div class="ibox-content">

                    <h2 class="font-bold">비밀번호 확인</h2>

                    <p>
                        회원정보를 확인하기 위해 비밀번호를 입력해주세요.
                    </p>

                    <div class="row">

                        <div class="col-lg-12">
                            <form class="m-t" role="form" action="index">
                                <div class="form-group">
                                    <input type="password" class="form-control" placeholder="비밀번호를 입력해주세요." required="">
                                </div>

                                <button type="submit" class="btn btn-primary block full-width m-b" onclick="location.href='userInfoForm'">확인</button>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col-md-6">
               BISION
            </div>
            <div class="col-md-6 text-right">
               <small>© 2019</small>
            </div>
        </div>
    </div>

</body>

</html>