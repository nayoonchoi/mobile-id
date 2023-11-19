<%@page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<title>OACX Config Data</title>
		
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Pragma" content="no-cache" />
		<meta http-equiv="Cache" content="no-cache" />
		<meta http-equiv="Cache-Control" content="no-cache, must-revalidate" />
		<meta name="description" content="SP With Verifier" />
		
		<link rel="icon" href="<c:url value='/static/image/ico_favicon.ico' />">
		
		<link rel="stylesheet" href="<c:url value='/static/css/common.css' />">
		<link rel="stylesheet" href="<c:url value='/static/css/style.css' />">
		<link rel="stylesheet" href="<c:url value='/static/css/font.css' />">
		
		<script src="<c:url value='/static/js/comm/jquery-3.6.0.js' />"></script>
	</head>
	
	<body>
		<div class="wrap">
			<div class="box-group">
				<h1 class="box-tit">OACX Config Data</h1>
				
				<p>
					OACX - SP 서버 설정 후 해당 프로세스는 삭제하시기 바랍니다.(OacxViewController.oacxConfigDataView)
				</p>
				
				<div class="box-group">
					<h1 class="box-tit">security</h1>
					
					<div class="box-line">
						<label>sec.key : <input type="text" value='<c:out value="${secKey}"/>'></label>
					</div>
					<div class="box-line">
						<label>sec.iv : <input type="text" value="<c:out value="${secIv}"/>"></label>
					</div>
					<div class="box-line">
						<label>sec.alg : <input type="text" value="<c:out value="${secAlg}"/>"></label>
					</div>
					<div class="box-line">
						<label>sec.cipher : <input type="text" value="<c:out value="${secCipher}"/>"></label>
					</div>
				</div>
				
				<div class="box-group">
					<h1 class="box-tit">header</h1>
					
					<div class="box-line">
						<label>Authorization : <textarea><c:out value="${token}"/></textarea></label>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>