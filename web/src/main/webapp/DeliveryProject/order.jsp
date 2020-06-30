<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}
span.reviewshow3 {
	font-weight: bold;
	font-size: 13px;
	border: 0.8px solid #F90346;
	color: #F90346;
	border-radius: 50px;
	width: 185px;
	height: 45px;
	display: inline-block;
	text-align: center;
	position: relative;
	top: 14px;
	line-height: 44px;
	background-color: white;;
}
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(".reviewborder").hide();

		$("span.reviewshow3").click(function() {
			var id = $(this).attr("id");
			$("div#"+this.id).toggle();
		});
		

	});
</script>
</head>
<body>

	<div
		style="position: relative; width: 100%;; height: 100px; margin-top: 53px; border-bottom: 1px solid; text-align: center;">
		<p
			style="position: relative; top: -10px; width: 100%; height: 50px; color: #434343; font-weight: bold; font-size: 40px;">내주문관리</p>
	</div>
	<!-- <div style="position: relative; width: 100%;   margin-top: 9px; "></div> -->


	<!--  main center  -->
	<div class="centermain">




		<div id="brandborder3"
			style="width: 50%; left: 0; top: 0; height: 250px; position: relative;">

			<p class="order" id="orderdate">주문일시 : 2019년 4월 21일 오후 7:00</p>
			<p class="order" id="brandname3">BHC</p>

			<p class="order" id="brandloc3">역삼점</p>
			<p class="order" id="ordermenu">뿌링클 치킨 외 1개 25,000원</p>
			<p class="order" id="orderdetail" style="white-space: nowrap;">-
				뿌링클치킨 1개 /</p>


		</div>
		<div id="brandborder3-1"
			style="width: 50%; top: -252px; height: 250px; left: 50%; position: relative;">

			<p class="orderinfo addr">배달주소 : 기본배송지</p>
			<br>
			<p class="orderinfo payway">결제방법 : 신용카드</p>
			<br>
			<p class="orderinfo infopoint">포인트 : 40P</p>
			<br>
			<p class="orderinfo request">요청사항 : 소스 듬뿍</p>


			<div id="reviewborder3">
				<span class="spans show reviewshow3" id="aa" >리뷰 쓰러가기 </span> <span
					class="spans show" id="menushow3">다시 주문하기 </span>

			</div>

			<!--  -->

		</div>
	</div>
	<div class="reviewborder" style="display: inline-block; overflow: hidden;" id="aa">
	<p class="ptagreview" >나의 리뷰</p>
	<textarea class="textarea" rows="" cols="" placeholder="리뷰를 입력해주세요" ></textarea>
	<span class="spans8 show8" id="reviewshow10" >완료 </span>
	<img class="imgsave" alt="" src="/web/DeliveryImg/save.png" width="34px" height="34px" >
	</div>
	<!-- <!--  main center end -->
	<!--  main center  -->
	<div class="centermain">




		<div id="brandborder3"
			style="width: 50%; left: 0; top: 0; height: 250px; position: relative;">

			<p class="order" id="orderdate">주문일시 : 2019년 4월 21일 오후 7:00</p>
			<p class="order" id="brandname3">BHC</p>

			<p class="order" id="brandloc3">역삼점</p>
			<p class="order" id="ordermenu">뿌링클 치킨 외 1개 25,000원</p>
			<p class="order" id="orderdetail" style="white-space: nowrap;">-
				뿌링클치킨 1개 /</p>


		</div>
		<div id="brandborder3-1"
			style="width: 50%; top: -252px; height: 250px; left: 50%; position: relative;">

			<p class="orderinfo addr">배달주소 : 기본배송지</p>
			<br>
			<p class="orderinfo payway">결제방법 : 신용카드</p>
			<br>
			<p class="orderinfo infopoint">포인트 : 40P</p>
			<br>
			<p class="orderinfo request">요청사항 : 소스 듬뿍</p>


			<div id="reviewborder3">
				<span class="spans show reviewshow3" id="bb">리뷰 쓰러가기 </span> <span
					class="spans show" id="menushow3">다시 주문하기 </span>

			</div>

			<!--  -->

		</div>
	</div>
	<div class="reviewborder" style="display: inline-block; overflow: hidden;" id="bb">
	<p class="ptagreview" >나의 리뷰</p>
	<textarea class="textarea" rows="" cols="" placeholder="리뷰를 입력해주세요" ></textarea>
	<span class="spans8 show8" id="reviewshow10" >완료 </span>
	<img class="imgsave" alt="" src="/web/DeliveryImg/save.png" width="34px" height="34px" >
	</div>
	<!-- <!--  main center end -->
</body>
</html>