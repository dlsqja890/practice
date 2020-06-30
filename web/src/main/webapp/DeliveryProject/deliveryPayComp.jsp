<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/web/DeliveryProject/css/paycomplete.css" />
<script type="text/javascript">
	$(function(){
		$("div#upButton").click(function(){
			$('html').animate({scrollTop : -1}, 100);
		});
		
	});
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="container">
	<h1>주문내역</h1>
	<div>
		<div id="payInfo">
		<h2>BHC 치킨 (역삼점)</h2>
			<div>
				<h3>주문번호</h3>
				<p>199999939393399</p>
				<input type="button" value="리뷰 작성하기">
			</div>
			<div>
				<h3>주문일시</h3>
				<p>2019년 04월 01일 오후 6:30</p>
			</div>
			<div>
				<h3>배송지</h3>
				<p>기본배송지</p>
			</div>
			<div>
				<h3>배송현황</h3>
				<p>배송대기</p>
			</div>
		</div>
		<table id="infoTable" border="0" cellspacing="0" >
			<tr id="head">
				<th>상품</th>
				<th>배송현황</th>
				<th>수량</th>
				<th>금액</th>
			</tr>
			<tr>
				<td>뿌링클 치킨</td>
				<td>배송 대기</td>
				<td>1개</td>
				<td>20,000원</td>
			</tr>
			<tr>
				<td>콜라 1.5L</td>
				<td>배송 대기</td>
				<td>1개</td>
				<td>1,800원</td>
			</tr>
			<tr>
				<td>뿌링뿌링뿌링세트(뿌링클치킨+웨지감자+콜라)</td>
				<td>배송 대기</td>
				<td>1개</td>
				<td>20,000원</td>
			</tr>
		</table>
		<div id="totalInfo" class="clearfix">
			<div id="left">
				<div id="totalPrice" class="clearfix">
					<p><span>뿌링클치킨</span> <span>1</span>개 외 <span>2</span>개</p>
					<p>25,000원</p>
				</div>
				<div>
					<p>배송비</p>
					<p>2,500원</p>
				</div>
				<div>
					<p>할인금액</p>
					<p>(-) 0원</p>
				</div>
				<div>
					<p>포인트 사용금액</p>
					<p>(-) 0원</p>
				</div>
			</div>
			<div id="right">
				<h4>결제정보</h4>
				<div id="totalPrice2">
					<p>결제금액</p>
					<p>27,500원</p>
				</div>
				<div>
					<p>결제방법</p>
					<p>신용카드</p>
				</div>
			</div>
		</div>
	</div>
</div>
<input type="button" id="lastbtn" value="더 주문하기">
<div id="upButton">
	<img src="/web/DeliveryImg/arrow-top.png">
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>