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
	<h1>�ֹ�����</h1>
	<div>
		<div id="payInfo">
		<h2>BHC ġŲ (������)</h2>
			<div>
				<h3>�ֹ���ȣ</h3>
				<p>199999939393399</p>
				<input type="button" value="���� �ۼ��ϱ�">
			</div>
			<div>
				<h3>�ֹ��Ͻ�</h3>
				<p>2019�� 04�� 01�� ���� 6:30</p>
			</div>
			<div>
				<h3>�����</h3>
				<p>�⺻�����</p>
			</div>
			<div>
				<h3>�����Ȳ</h3>
				<p>��۴��</p>
			</div>
		</div>
		<table id="infoTable" border="0" cellspacing="0" >
			<tr id="head">
				<th>��ǰ</th>
				<th>�����Ȳ</th>
				<th>����</th>
				<th>�ݾ�</th>
			</tr>
			<tr>
				<td>�Ѹ�Ŭ ġŲ</td>
				<td>��� ���</td>
				<td>1��</td>
				<td>20,000��</td>
			</tr>
			<tr>
				<td>�ݶ� 1.5L</td>
				<td>��� ���</td>
				<td>1��</td>
				<td>1,800��</td>
			</tr>
			<tr>
				<td>�Ѹ��Ѹ��Ѹ���Ʈ(�Ѹ�ŬġŲ+��������+�ݶ�)</td>
				<td>��� ���</td>
				<td>1��</td>
				<td>20,000��</td>
			</tr>
		</table>
		<div id="totalInfo" class="clearfix">
			<div id="left">
				<div id="totalPrice" class="clearfix">
					<p><span>�Ѹ�ŬġŲ</span> <span>1</span>�� �� <span>2</span>��</p>
					<p>25,000��</p>
				</div>
				<div>
					<p>��ۺ�</p>
					<p>2,500��</p>
				</div>
				<div>
					<p>���αݾ�</p>
					<p>(-) 0��</p>
				</div>
				<div>
					<p>����Ʈ ���ݾ�</p>
					<p>(-) 0��</p>
				</div>
			</div>
			<div id="right">
				<h4>��������</h4>
				<div id="totalPrice2">
					<p>�����ݾ�</p>
					<p>27,500��</p>
				</div>
				<div>
					<p>�������</p>
					<p>�ſ�ī��</p>
				</div>
			</div>
		</div>
	</div>
</div>
<input type="button" id="lastbtn" value="�� �ֹ��ϱ�">
<div id="upButton">
	<img src="/web/DeliveryImg/arrow-top.png">
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>