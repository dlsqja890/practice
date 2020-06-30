<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- <link rel="stylesheet" type="text/css"
	href="/web/DeliveryProject/css/include.css" /> -->
<link rel="stylesheet" type="text/css"
	href="/web/DeliveryProject/css/receipt.css?after" />
	<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
</head>

<script type="text/javascript">
	$(function(){
		$("input#payBtn").click(function(){
			document.location.href="/web/DeliveryProject/deliveryPayComp.jsp";
		});
	})
</script>
<body>
	<div>
	<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div>
		<div>
			<div id="receipt">
				<div id="receipt_header">
					<p>주문현황</p>
				</div>
				<div id="header_nav">
					<ul>
						<li>상품</li>
						<li>배송비</li>
						<li>수량</li>
						<li>금액</li>
					</ul>
				</div>
				<div class="product">
					<div id="pro_info">
					<div class="pro_info">
						<span class="left" id="minus" style="position: relative;"><img
							alt="" src="/web/DeliveryImg/minus.png" style="margin-top: 25px;"></span>
						<span class="left" id="food_pic" style="position: relative;"><img
							alt="" src="/web/DeliveryImg/chicken.png" width="160px"
							height="160px"></span>
						<div class="left" id=food_info style="position: relative;">
							<b style="font-size: 35px;">BHC</b>
							<p style="margin-bottom: 24px; margin-top: 5px;">역삼점</p>
							<p style="font-size: 24px;">뿌링클 치킨</p>
						</div>

						<span style="position: relative; top: 98px; left: 56px;">배송무료</span>
						<span style="margin-left: 196px; position: relative; top: 98px;">1개</span>
						<span style="margin-left: 135px; position: relative; top: 98px;">20,000원</span>
					</div>
					<div class="pro_info">
						<span class="left" id="minus" style="position: relative;"><img
							alt="" src="/web/DeliveryImg/minus.png" style="margin-top: 25px;"></span>
						<span class="left" id="food_pic" style="position: relative;"><img
							alt="" src="/web/DeliveryImg/chicken.png" width="160px"
							height="160px"></span>
						<div class="left" id=food_info style="position: relative;">
							<b style="font-size: 35px;">BHC</b>
							<p style="margin-bottom: 24px; margin-top: 5px;">역삼점</p>
							<p style="font-size: 24px;">뿌링클 치킨</p>
						</div>

						<span style="position: relative; top: 98px; left: 56px;">배송무료</span>
						<span style="margin-left: 196px; position: relative; top: 98px;">1개</span>
						<span style="margin-left: 135px; position: relative; top: 98px;">20,000원</span>
					</div>
					<div class="pro_info">
						<span class="left" id="minus" style="position: relative;"><img
							alt="" src="/web/DeliveryImg/minus.png" style="margin-top: 25px;"></span>
						<span class="left" id="food_pic" style="position: relative;"><img
							alt="" src="/web/DeliveryImg/chicken.png" width="160px"
							height="160px"></span>
						<div class="left" id=food_info style="position: relative;">
							<b style="font-size: 35px;">BHC</b>
							<p style="margin-bottom: 24px; margin-top: 5px;">역삼점</p>
							<p style="font-size: 24px;">뿌링클 치킨</p>
						</div>
						<div>
						<span style="position: relative; top: 98px; left: 56px;">배송무료</span>
						<span style="margin-left: 196px; position: relative; top: 98px;">1개</span>
						<span style="margin-left: 135px; position: relative; top: 98px;">20,000원</span>
					</div>
					</div>
					</div>
					
						<div id="total">
							<div id="total1">
								<p style="margin-bottom: 16px;">뿌링클 치킨 1개 외 2개</p>
								<p style="color: #f90346;">배송비</p>
								<p style="color: #f90346;">할인금액</p>
								<p style="color: #f90346;">포인트 사용금액</p>
							</div>
							<div id="total2">
								<p style="margin-bottom: 16px;">25,000원</p>
								<p>2,500원</p>
								<p>(-) 0원</p>
								<p>(-) 0원</p>
							</div>

							<div id="total3">
								<span style="font-size: 32px; font-weight: bold;">결제금액</span> <span
									style="font-size: 40px; margin-left: 120px; font-weight: 900;">27,500원</span>
							</div>

						
					</div>
				</div>
				<div id="addr">
					<p>배송지 정보</p>
					<div id="addr_t">
						<p style="margin-bottom: 46px;">배송지</p>
						<p style="margin-bottom: 124px;">주문자정보</p>
						<p style="margin-bottom: 52px;">휴대폰</p>
						<p>요청사항</p>
					</div>
					<div id="addr_info">
						<input type="checkbox" name="ck" id="ck5"><label for="ck5"></label>기본배송지 <input
							type="checkbox" name="ck" style="margin-left: 80px;" id="ck6"><label for="ck6"></label>신규배송지
						<input type="button" value="주소 입력"
							style="margin-left: 31px; width: 176px; height: 48px; border: solid 1px #707070; background-color: white; font-size: 24px; color: #4f4f4f;">
						<p style="margin: 36px 0px 36px;">신짱구</p>
						<span style="margin-right: 26px;">서울 특별시 강남구 역삼동 1234-56
							101호</span> <input type="button" value="수정"
							style="width: 120px; height: 48px; background-color: #ff3068; color: white; font-size: 24px;">
						<br> <input type="text" id="tel"> <br> <input
							type="text" id="contents">
					</div>
				</div>

				<div id="payment">
					<p>결제정보</p>
					<div id="pay_ck">
						<div id="pay_t">
							<p style="margin-bottom: 52px;">쿠폰</p>
							<p style="margin-bottom: 122px;">포인트</p>
							<p>결제방법</p>
						</div>
						<div id="pay_info">
							<span> <select name="coupon"
								style="margin-bottom: 48px; margin-top: 3px; font-size: 24px; font-weight: 300; color: #434343; width: 320px; height: 48px; border: solid 1px #707070;">
									<option>선택</option>
									<option>BHC 15% 할인</option>
									<option>교촌치킨 15% 할인</option>
							</select>
							</span> <span> <input type="button" value="사용"
								style="width: 120px; height: 48px; background-color: #ff3068; font-size: 24px; color: white; font-weight: 300; line-height: 2; margin-left: 32px;">
							</span> <br> <span><input type="text"
								style="width: 259px; height: 48px; border: solid 1px #707070; font-size: 24px; font-weight: 300; line-height: 2; color: #434343;"></span>
							<span><input type="button" value="사용"
								style="margin-bottom: 40px; width: 120px; height: 48px; background-color: #ff3068; font-size: 24px; color: white; font-weight: 300; line-height: 2; margin-left: 31px;"></span>
							<p
								style="margin-bottom: 13px; font-size: 24px; font-weight: 500; line-height: 2; color: #434343;">잔여
								포인트: 200p</p>
							<br> <input type="checkbox" name="pay_ck" id="ck1"><label for="ck1"></label> <a
								style="font-size: 24px; font-weight: 300; line-height: 2; color: #434343;">카드결제</a>
							<input type="checkbox" name="pay_ck" style="margin-left: 102px;" id="ck2"><label for="ck2"></label>
							<a
								style="font-size: 24px; font-weight: 300; line-height: 2; color: #434343;" >현장결제(현금)</a>
						</div>
					</div>

					<div id="card">
						<div id="card_t">
							<p style="margin-bottom: 48px;">할부기간</p>
							<p>카드사</p>
						</div>

						<div id="card_info">
							<input type="checkbox" name="card_ck" id="ck3"><label for="ck3"></label> <a
								style="font-size: 24px; font-weight: 300; line-height: 2; color: #434343;">일시불</a>
							<input type="checkbox" name="card_ck" style="margin-left: 127px;" id="ck4"><label for="ck4"></label>
							<a
								style="font-size: 24px; font-weight: 300; line-height: 2; color: #434343;">할부</a>
							<select name="hal"
								style="width: 160px; height: 48px; border: solid 1px #707070; margin-left: 40px; margin-bottom: 55px; font-size: 24px; font-weight: 300; line-height: 2; color: #434343;">
								<option>선택</option>
								<option>3개월</option>
								<option>4개월</option>
								<option>5개월</option>
							</select> <br>
							<button>국민카드</button>
							<button>농협NH카드</button>
							<button>비씨카드</button>
							<button>하나카드</button>
							<button>롯데카드</button>
							<br>
							<button id="ck">현대카드</button>
							<button>신한카드</button>
							<button>삼성카드</button>
							<button>씨티카드</button>
							<button>우리카드</button>
						</div>

					</div>
					<div id="card_img">

						<div id="img_white">
							<p
								style="font-size: 16px; font-weight: 300; color: #4f4f4f; line-height: 3; margin-left: 36px; padding-top: 15px; margin-bottom: -10px;">
								<b>날짜</b>: 2019-04-01 16:30:48
							</p>
							<span
								style="font-size: 24px; font-weight: bold; line-height: 2; color: #4f4f4f; margin-left: 36px;">27,500</span>
							<span
								style="font-size: 32px; font-weight: 900; line-height: 1.5; color: #4f4f4f; margin-left: 368px;">현대카드</span>
						</div>
						<div id="img_red">
							<div id="red1">
								<span class="t">카드번호</span> <input
									style="margin-left: 40px; margin-bottom: 36px;" type="text">
								<input type="text"> <input type="text"> <input
									type="text">
							</div>
							<div id="red2">
								<span style="margin-left: 41px;" class="t">CVC</span> <input
									style="margin-left: 89px; margin-bottom: 36px;" type="text">
								<span style="margin-left: 77px;" class="t">유효날짜</span> <input
									style="margin-left: 40px;" type="text">
							</div>
							<div id="red3">
								<a class="t" style="margin-left: 41px;">비밀번호</a> <input
									style="margin-left: 40px;" type="text">
							</div>
						</div>
					</div>

				</div>

				<div id="agree">
					<input style="margin-top: 76px; margin-left:52px;" type="checkbox" id="c1"><label for="c1"></label> <label><b>전체동의</b></label>
					<br> <input type="checkbox" style="margin-left:108px;margin-top: 40px;" id="c2"><label for="c2"></label><label>위 상품의 구매조건
						확인 및 결제 진행 동의</label> <br> <input style="margin-left:108px; margin-top: 44px;" type="checkbox" id="c3"><label for="c3"></label><label>도착알림
						SMS 받기(주문자 정보의 연락처로 송신)</label>
				</div>
				
				<div id="payDiv">
					<input id="payBtn" type="button" value="결제">
				</div>
			</div>
		</div>
	</div>
	<div>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>