<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/default.css"/>" />
<script>

</script>
</head>
<body>
<form action="/bision/keywordSearch" method="post">
<input type="text" name="searchNaver">
<input type="submit" value="확인">
</form>
</body>
</html>
