<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
	<html>
	<head>
	<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/web/DeliveryProject/css/header.css?after" />
	<script type="text/javascript">
	
	$(function(){
		
		$(".foodcategory").click(function(){
			var temp=$(this).text();
			$("input#category").val(temp);
			var temp2=$("input#category").val();
			var temp3=$("input#imsi").val();
			var temp4=$("input#cate").val();
			$("input#imsi1").val(temp3);
			$("input#cate2").val(temp4);
			//alert(temp2);
			$("form#cate").submit();
		});
		
		$(".mypage").click(function(){
			$(".mypage").attr("href","/web/mypage.do");
			
		});
	$("input#seach").click(function(){
			if($("input#imsi").val()==""){
				alert('�ּҸ� �Է����ּ���');
				return ;
			}
			$("form#seach").submit();
		});
	
	
	
	});
	
	
	</script>
</head>
<div>

	<div id="header">

		<div id="header_upper">

			<a href="/web/DeliveryProject/DelieveryMain.jsp"><img alt="" src="/web/DeliveryImg/richuro_logo.png"></a>

<c:choose>	
						<c:when test="${name eq null }">
							<div>
							<a href="/web/DeliveryProject/register.jsp">ȸ������</a> <a href="/web/DeliveryProject/login.jsp">�α���</a>
							</div>
						</c:when>
						<c:otherwise>
							<div>
								<a href="" class="mypage">${name } ��</a> <a href="/web/logoutProcess.do">�α׾ƿ�</a>
							</div>
						</c:otherwise>
					</c:choose>
		

		</div>
		<div id="header_bottom">
			<div>
				<p>��� ���� ��󺼱�� ?</p>
			</div>
			<div id="headerInput">
			
				<form action="/web/seach.do" id="seach" method="post">
						<p>����� ���Ͻô� �ּ����� �Է����ּ���</p>
						<input id="imsi" type="text" name="seachvalue" value="${seachvalue}"/><input type="button" value="�˻�" id="seach" />
						<input id="cate" type="hidden" name="ownermenucate" value="${category}">
						</form>
			</div>
		</div>
	</div>
</div>
<div id="nav">
<form action="/web/category.do" method="post" id="cate">
			<ul>
				<li class="foodcategory" >ġŲ</li>
				<li class="foodcategory" >����</li>
				<li class="foodcategory" >�н�</li>
				<li class="foodcategory" >�߽�</li>
				<li class="foodcategory" >�ѽ�</li>
				<li class="foodcategory" >�Ͻ�</li>
				<li class="foodcategory" >����/����</li>
			</ul>
				<input type="hidden" name="category" id="category" />
				<input id="imsi1" type="hidden" name="seachvalue" value=""/>
					<input id="cate2" type="hidden" name="ownermenucate" value="">
			</form>
</div>
</html>