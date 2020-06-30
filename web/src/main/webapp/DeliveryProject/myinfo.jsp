<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="/web/DeliveryProject/info.css?after" />
<title>Insert title here</title>
<style type="text/css">
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(".menu").click(function() {
			//alert($(this).attr("id"));
			$(".menu").css({
				"background-color" : "#FF3068",
				"color" : "white"
			});
			$(this).css({
				"background-color" : "white",
				"color" : "black"
			});
		});

		/* $( ".menu" ).each(function(index){
			$(".menu").click(function(){
				alert($(this).attr("id")));
			});
		}); */
		$(".menu1").click(function() {
			$.ajax({
				url : "/web/zzimpage.do",
				type : "GET",
				dataType : "text",
				success : function(v) {
					$("div#include").html(v);
				},
				erroe : function() {
					alert('error');

				}

			})

		});
		$(".menu2").click(function() {
			$.ajax({
				url : "order.jsp",
				type : "GET",
				dataType : "text",
				success : function(v) {
					$("div#include").html(v);
				},
				erroe : function() {
					alert('error');

				}

			})

		});
		$(".menu3").click(function() {
			$.ajax({
				url : "myreview.jsp",
				type : "GET",
				dataType : "text",
				success : function(v) {
					$("div#include").html(v);
				},
				erroe : function() {
					alert('error');

				}

			})

		});
		$(".menu4").click(function() {
			$.ajax({
				url : "/web/couponpage.do",
				type : "GET",
				dataType : "text",
				async:false,
				success : function(v) {
					$("div#include").html(v);
				},
				erroe : function() {
					alert('error');

				}

			})

		});
		$(".menu5").click(function() {
			$.ajax({
				url : "/web/modify.do",
				type : "GET",
				dataType : "text",
				
				success : function(v) {
					$("div#include").html(v);
				},
				erroe : function() {
					alert('error');

				}

			})

		});
	});
</script>
</head>
<body>
	<div>
		<div><jsp:include page="header.jsp"></jsp:include></div>
	</div>


	<div class="myinfodivmain1">
		<div class="myinfodivmain2">
			<img id="people" alt="" src="/web/DeliveryImg/15.png" width="100%"
				height="200px;" style="border-radius: 10px; left: -85px;">
		</div>
		<div class="htag">

			<h1 style="line-height: 16px;">${name}님 반갑습니다</h1>
		</div>
		<div
			style="width: 792px; height: 120px; position: relative; left: 330px; top: -183px;">
			<span class="spans grade spa1" id="1"
				style="border-top-left-radius: 10px;"><p>등급</p></span> <span
				class="spans grade spa1" id="2"><p>포인트</p></span> <span
				class="spans grade spa1" id="3"
				style="border-top-right-radius: 10px;"><p>나의쿠폰</p></span> <span
				class="spans grade spa2" id="4"
				style="border-bottom-left-radius: 10px;"><p>진골</p></span> <span
				class="spans grade spa2" id="5"><p>1,200p</p></span> <span
				class="spans grade spa2" id="6"
				style="border-bottom-right-radius: 10px;"><p>${countcoupon}개</p></span>

		</div>

	</div>


	<div class="centerheader">
		<div class="centerheader2" style="z-index: 99;">
			<span class="spans menu menu1" id="my1">찜한가게</span> <span
				class="spans menu menu2" id="my2">내주문관리</span> <span
				class="spans menu menu3" id="my3">리뷰관리</span> <span
				class="spans menu menu4" id="my4">쿠폰함</span> <span
				class="spans menu menu5" id="my5">내정보수정</span>

		</div>

		<div id="include">


			<jsp:include page="zzim.jsp"></jsp:include>

		</div>


	</div>
	<div
		style="position: absolute; margin-top: 20px; right: 6%; left: 0; width: 100%;">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>


</body>
</html>