<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>미술관 전시회</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>

	<!-- 헤더 영역 시작 -->
	<%@ include file="inc/header.jsp" %>
<%-- 	<jsp:include page="inc/header.jsp"></jsp:include> --%>


    <div id="wrap">
        <main id="main">
            <div id="slideshowArea">
                슬라이드 쇼 영역
            </div>
            <!-- div#slideshowArea -->
            <div id="contents" class="dFlex">
                <div id="bbsNotice" class="contentParts">
                    공지사항
                </div>
                <!-- div#bbsNotice -->

                <div id="bbsGallery" class="contentParts">
                    갤러리
                </div>
                <!-- div#bbsGallery -->

                <aside id="bannerArea" class="contentParts">
                    배너
                </aside>
                <!-- aside#bannerArea -->
            </div>
            <!-- div#contents -->

        </main>
    </div>
    <!-- div#wrap -->
	
	<!-- footer 영역 시작 -->
	<jsp:include page="inc/footer.jsp"></jsp:include>
	<script src="/script/jquery-3.6.0.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    