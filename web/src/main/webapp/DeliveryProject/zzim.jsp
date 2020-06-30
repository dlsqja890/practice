<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
		<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<style type="text/css">
p#brandname2{
width: 200px;
}
p#brandloc2{
width: 200px;
}
span.menushow21{
font-weight: bold;
 background-color:#F90346;
  font-size: 13px  ;
  color:white; 
   border-radius:50px; 
   width: 160px;
   height: 35px;
   display: block; 
   text-align: center ;
    position: relative; 
    margin-left: 110px; 
    top: 38px;
     line-height: 34px; 

}
</style>
<script type="text/javascript">

	 function ajaxtest(url2,id){
		var forms=$("form#delete"+id).serialize();
		$.ajax({
			url:url2,
			data:forms,
			async:false,
			type:"post",
			dataType:"text",
			success:function(v){
			$("div.mainn2").remove();
				alert(v);
				$("div.mainn").html(v);
			},error:function(e){
				
			}
			
		})
		
	} 
	$(function() {

		$("span#reviewshow2").click(function() {

			alert('sda');
		});
		
		$("span.menushow21").click(function(){
			var id=$(this).attr("id");
			alert(id);
			var url="/web/zzimdelete.do";
		ajaxtest(url,id);
			//$("form#delete"+id).submit();
		});

	});
</script>
</head>
<body>
${g}
 <div class="mainn">
	<div class="zzimcenterdiv">
		<p class="ptagzzim">찜한가게</p>
	</div>
	<!-- <div style="position: relative; width: 100%;   margin-top: 9px; "></div> -->
<c:forEach var="i" items="${list}" varStatus="cnt">

	<div class="mainn2"
		style="border-bottom: 1px solid #B5B5B5; width: 100%; height: 200px; position: relative; margin-top: 10px;">
		<img alt="" src="/web/DeliveryImg/15.png"
			style="position: absolute; width: 150px; height: 150px; margin-left: 35px; margin-top: 20px; border-radius: 10px;">




		<div id="brandborder2">

			<p id="brandname2">${i.STORENAME}</p>
			<br>

			<p id="brandloc2">${i.STOREADDR.substring(i.STOREADDR.indexOf('(')+1,i.STOREADDR.indexOf(')'))}점</p>
<!--${i.STOREADDR.substring(i.STOREADDR.indexOf('(')+1,i.STOREADDR.indexOf(')'))}  -->
		</div>
		<div
			style="border: 1px solid; width: 200px; height: 26px; position: relative; top: 45px; left: 26%;"></div>
		<div id="reviewborder2">
				<form action="/web/deletezzim.do" id="delete${i.OWNERNO}">
	
			<span class="spans show" id="reviewshow2">리뷰 보러가기 </span> <span
				class="spans show" id="menushow2">메뉴 보러가기 </span>
				 <span
				class="spans show menushow21" id="${i.OWNERNO}">찜안할래 </span>
				<input type="hidden" value="${i.OWNERNO}" name="ownerno">
</form>



		</div>
	</div>
	</c:forEach>
	</div>
	<!-- 
 -->
	
</body>
</html>