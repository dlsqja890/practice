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
					<p>�ֹ���Ȳ</p>
				</div>
				<div id="header_nav">
					<ul>
						<li>��ǰ</li>
						<li>��ۺ�</li>
						<li>����</li>
						<li>�ݾ�</li>
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
							<p style="margin-bottom: 24px; margin-top: 5px;">������</p>
							<p style="font-size: 24px;">�Ѹ�Ŭ ġŲ</p>
						</div>

						<span style="position: relative; top: 98px; left: 56px;">��۹���</span>
						<span style="margin-left: 196px; position: relative; top: 98px;">1��</span>
						<span style="margin-left: 135px; position: relative; top: 98px;">20,000��</span>
					</div>
					<div class="pro_info">
						<span class="left" id="minus" style="position: relative;"><img
							alt="" src="/web/DeliveryImg/minus.png" style="margin-top: 25px;"></span>
						<span class="left" id="food_pic" style="position: relative;"><img
							alt="" src="/web/DeliveryImg/chicken.png" width="160px"
							height="160px"></span>
						<div class="left" id=food_info style="position: relative;">
							<b style="font-size: 35px;">BHC</b>
							<p style="margin-bottom: 24px; margin-top: 5px;">������</p>
							<p style="font-size: 24px;">�Ѹ�Ŭ ġŲ</p>
						</div>

						<span style="position: relative; top: 98px; left: 56px;">��۹���</span>
						<span style="margin-left: 196px; position: relative; top: 98px;">1��</span>
						<span style="margin-left: 135px; position: relative; top: 98px;">20,000��</span>
					</div>
					<div class="pro_info">
						<span class="left" id="minus" style="position: relative;"><img
							alt="" src="/web/DeliveryImg/minus.png" style="margin-top: 25px;"></span>
						<span class="left" id="food_pic" style="position: relative;"><img
							alt="" src="/web/DeliveryImg/chicken.png" width="160px"
							height="160px"></span>
						<div class="left" id=food_info style="position: relative;">
							<b style="font-size: 35px;">BHC</b>
							<p style="margin-bottom: 24px; margin-top: 5px;">������</p>
							<p style="font-size: 24px;">�Ѹ�Ŭ ġŲ</p>
						</div>
						<div>
						<span style="position: relative; top: 98px; left: 56px;">��۹���</span>
						<span style="margin-left: 196px; position: relative; top: 98px;">1��</span>
						<span style="margin-left: 135px; position: relative; top: 98px;">20,000��</span>
					</div>
					</div>
					</div>
					
						<div id="total">
							<div id="total1">
								<p style="margin-bottom: 16px;">�Ѹ�Ŭ ġŲ 1�� �� 2��</p>
								<p style="color: #f90346;">��ۺ�</p>
								<p style="color: #f90346;">���αݾ�</p>
								<p style="color: #f90346;">����Ʈ ���ݾ�</p>
							</div>
							<div id="total2">
								<p style="margin-bottom: 16px;">25,000��</p>
								<p>2,500��</p>
								<p>(-) 0��</p>
								<p>(-) 0��</p>
							</div>

							<div id="total3">
								<span style="font-size: 32px; font-weight: bold;">�����ݾ�</span> <span
									style="font-size: 40px; margin-left: 120px; font-weight: 900;">27,500��</span>
							</div>

						
					</div>
				</div>
				<div id="addr">
					<p>����� ����</p>
					<div id="addr_t">
						<p style="margin-bottom: 46px;">�����</p>
						<p style="margin-bottom: 124px;">�ֹ�������</p>
						<p style="margin-bottom: 52px;">�޴���</p>
						<p>��û����</p>
					</div>
					<div id="addr_info">
						<input type="checkbox" name="ck" id="ck5"><label for="ck5"></label>�⺻����� <input
							type="checkbox" name="ck" style="margin-left: 80px;" id="ck6"><label for="ck6"></label>�űԹ����
						<input type="button" value="�ּ� �Է�"
							style="margin-left: 31px; width: 176px; height: 48px; border: solid 1px #707070; background-color: white; font-size: 24px; color: #4f4f4f;">
						<p style="margin: 36px 0px 36px;">��¯��</p>
						<span style="margin-right: 26px;">���� Ư���� ������ ���ﵿ 1234-56
							101ȣ</span> <input type="button" value="����"
							style="width: 120px; height: 48px; background-color: #ff3068; color: white; font-size: 24px;">
						<br> <input type="text" id="tel"> <br> <input
							type="text" id="contents">
					</div>
				</div>

				<div id="payment">
					<p>��������</p>
					<div id="pay_ck">
						<div id="pay_t">
							<p style="margin-bottom: 52px;">����</p>
							<p style="margin-bottom: 122px;">����Ʈ</p>
							<p>�������</p>
						</div>
						<div id="pay_info">
							<span> <select name="coupon"
								style="margin-bottom: 48px; margin-top: 3px; font-size: 24px; font-weight: 300; color: #434343; width: 320px; height: 48px; border: solid 1px #707070;">
									<option>����</option>
									<option>BHC 15% ����</option>
									<option>����ġŲ 15% ����</option>
							</select>
							</span> <span> <input type="button" value="���"
								style="width: 120px; height: 48px; background-color: #ff3068; font-size: 24px; color: white; font-weight: 300; line-height: 2; margin-left: 32px;">
							</span> <br> <span><input type="text"
								style="width: 259px; height: 48px; border: solid 1px #707070; font-size: 24px; font-weight: 300; line-height: 2; color: #434343;"></span>
							<span><input type="button" value="���"
								style="margin-bottom: 40px; width: 120px; height: 48px; background-color: #ff3068; font-size: 24px; color: white; font-weight: 300; line-height: 2; margin-left: 31px;"></span>
							<p
								style="margin-bottom: 13px; font-size: 24px; font-weight: 500; line-height: 2; color: #434343;">�ܿ�
								����Ʈ: 200p</p>
							<br> <input type="checkbox" name="pay_ck" id="ck1"><label for="ck1"></label> <a
								style="font-size: 24px; font-weight: 300; line-height: 2; color: #434343;">ī�����</a>
							<input type="checkbox" name="pay_ck" style="margin-left: 102px;" id="ck2"><label for="ck2"></label>
							<a
								style="font-size: 24px; font-weight: 300; line-height: 2; color: #434343;" >�������(����)</a>
						</div>
					</div>

					<div id="card">
						<div id="card_t">
							<p style="margin-bottom: 48px;">�ҺαⰣ</p>
							<p>ī���</p>
						</div>

						<div id="card_info">
							<input type="checkbox" name="card_ck" id="ck3"><label for="ck3"></label> <a
								style="font-size: 24px; font-weight: 300; line-height: 2; color: #434343;">�Ͻú�</a>
							<input type="checkbox" name="card_ck" style="margin-left: 127px;" id="ck4"><label for="ck4"></label>
							<a
								style="font-size: 24px; font-weight: 300; line-height: 2; color: #434343;">�Һ�</a>
							<select name="hal"
								style="width: 160px; height: 48px; border: solid 1px #707070; margin-left: 40px; margin-bottom: 55px; font-size: 24px; font-weight: 300; line-height: 2; color: #434343;">
								<option>����</option>
								<option>3����</option>
								<option>4����</option>
								<option>5����</option>
							</select> <br>
							<button>����ī��</button>
							<button>����NHī��</button>
							<button>��ī��</button>
							<button>�ϳ�ī��</button>
							<button>�Ե�ī��</button>
							<br>
							<button id="ck">����ī��</button>
							<button>����ī��</button>
							<button>�Ｚī��</button>
							<button>��Ƽī��</button>
							<button>�츮ī��</button>
						</div>

					</div>
					<div id="card_img">

						<div id="img_white">
							<p
								style="font-size: 16px; font-weight: 300; color: #4f4f4f; line-height: 3; margin-left: 36px; padding-top: 15px; margin-bottom: -10px;">
								<b>��¥</b>: 2019-04-01 16:30:48
							</p>
							<span
								style="font-size: 24px; font-weight: bold; line-height: 2; color: #4f4f4f; margin-left: 36px;">27,500</span>
							<span
								style="font-size: 32px; font-weight: 900; line-height: 1.5; color: #4f4f4f; margin-left: 368px;">����ī��</span>
						</div>
						<div id="img_red">
							<div id="red1">
								<span class="t">ī���ȣ</span> <input
									style="margin-left: 40px; margin-bottom: 36px;" type="text">
								<input type="text"> <input type="text"> <input
									type="text">
							</div>
							<div id="red2">
								<span style="margin-left: 41px;" class="t">CVC</span> <input
									style="margin-left: 89px; margin-bottom: 36px;" type="text">
								<span style="margin-left: 77px;" class="t">��ȿ��¥</span> <input
									style="margin-left: 40px;" type="text">
							</div>
							<div id="red3">
								<a class="t" style="margin-left: 41px;">��й�ȣ</a> <input
									style="margin-left: 40px;" type="text">
							</div>
						</div>
					</div>

				</div>

				<div id="agree">
					<input style="margin-top: 76px; margin-left:52px;" type="checkbox" id="c1"><label for="c1"></label> <label><b>��ü����</b></label>
					<br> <input type="checkbox" style="margin-left:108px;margin-top: 40px;" id="c2"><label for="c2"></label><label>�� ��ǰ�� ��������
						Ȯ�� �� ���� ���� ����</label> <br> <input style="margin-left:108px; margin-top: 44px;" type="checkbox" id="c3"><label for="c3"></label><label>�����˸�
						SMS �ޱ�(�ֹ��� ������ ����ó�� �۽�)</label>
				</div>
				
				<div id="payDiv">
					<input id="payBtn" type="button" value="����">
				</div>
			</div>
		</div>
	</div>
	<div>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>