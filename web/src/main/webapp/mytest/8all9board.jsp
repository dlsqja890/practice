<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="/web/mytest/8all9css.css?after">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<style type="text/css">
body {
	height: 1500px;
}
*{
margin: 0;
padding: 0;

}
.tableboard {
	margin: 0 auto;
	margin-top: 20px;
	width: 780px;
	
	
}
thead{
background-color: #F4F6EB; 

}
tr{
	height: 40px;
	
}
tbody td{
	text-align: center;
	border-bottom: 1px solid #DDDDDD;
}
td:nth-child(2) {
 color:black;
 text-align: left;
 cursor: pointer;
 
}
.pagespan {
cursor: pointer;
display:table-cell;
text-align: center;
vertical-align: middle;

padding-right: 5px;
padding-left: 5px;



}
.beforepage,.afterpage {
cursor: pointer;
display:table-cell;
text-align: center;
vertical-align: middle;

padding-right: 5px;
padding-left: 5px;

}
.bahover:hover{
color: #518011;

}
td:nth-child(2):hover {

color: #518011;
font-size: 17px;
}
.pagespan:hover{
color: red;
font-size: 18px;
}
</style>
<script type="text/javascript">
		$(function(){
			
			 $(".pagespan:nth-child(1)").css({"color":"red","font-size":"19px"});
		/* 	 $("td:nth-child(2)").hover(function(){
				// alert($(this).text());
					$(this).css({"color":"#518011","font-size":"17px"});
					
				},function(){
					$(this).css({"color":"black","font-size":"15px"});
				}); */							
			$("button").click(function(){
				
			//	window.location.href="/web/8all9.do";
				$.ajax({
					url:"/web/8all9.do",
					datatype:"text",
					success:function(v){
						$("body").html(v);
					},error:function(v){
						
					}
					
					
					
				})
			});
				$(document).on("click","td:nth-child(2)",function(){
				alert($(this).text());
			})
				
			$(document).on("click",".pagespan",function(){
				var currentcount=$(this).attr("id");
				$(".pagespan").removeAttr("style");
				$(this).css({"color":"red","font-size":"19px"});
				$.ajax({
					url:"/web/paging.do?currentcount="+currentcount,
					datatype:"text",
					
					success:function(v){
						var hh=$(v).find("tbody").html();
						$("tbody").html(hh);
					//$("body").html(v);
					},error:function(v){
						alert("실패");
					}
				})
			})
			$(".bahover").click(function(){
				var sign=$(this).attr("id");
				var temp="";
				if($(this).attr("class").split(' ')[0]=="beforepage"){
					sign=Number(sign)-1;
				}else{
					sign=Number(sign)+1;
				}
				$.ajax({
					url:"/web/blockk.do?sign="+sign,
					datatype:"json",
					success:function(data){
						//alert(data.before+"  "+data.after);
						if(data.after<=data.pagespan){
						$(".bahover").attr("id",data.sign);
						}
						$(".pagespan").detach();
					for (var int = data.before; int <= data.after; int++) {
						temp+="<span class=\"pagespan\" id="+int+">"+int+"</span>"	 ;
						
					}	
							
					$(".beforepage").after(temp);
					},eroor:function(data){
						alert("실패");
					}
				})
			});
		});


</script>
</head>
<body>

<div><jsp:include page="8all9header.jsp"/></div>

<div style="border: 1px solid black; width: 800px ; height: 600px; margin:0 auto; margin-top: 50px;">
	<div class="tableboardbody" style="height: 450px ; ">
	<table class="tableboard" style="border-top: 1px solid #869554 " cellspacing="0" >
		<colgroup>
			<col width="15%">
			<col width="45%">
			<col width="15%">
			<col width="15%">
			<col width="10%">
		</colgroup>
		
		<thead>
		
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>
				<th>조회수</th>
			
			</tr>
		
		</thead>
		<tbody class="tablebody">
		<c:forEach var="i" items="${boardlist}" varStatus="cnt">
			<tr>
				<td>${i.rk}</td>
				<td>${i.title }</td>
				<td>${i.writer }</td>
				<td>${i.todate }</td>
				<td>${i.hits}</td>
			
			
			</tr>						
		</c:forEach>
		</tbody>
	
	</table>
</div>
<form action="">
<div style="margin:0 auto;display: table; height: 40px ;">
	<span class="beforepage bahover" id=1>&#60;</span>
	<c:forEach  var="ii" varStatus="cnt" begin="1" end="${pagenumber}" step="1" >
	<span class="pagespan" id="${ii}">${ii}</span>	
	</c:forEach>
	<span class="afterpage bahover" id=1>&#62;</span>
</div>
</form>


<button style="position: relative;  width: 100px; height: 40px; float:right; margin:15px 12.5px 0 0;    background-color: #4AB34A ;color: white; cursor: pointer;" >글쓰기</button>
<div class="testing" id="testing">
<span  id="testing">testing</span>
</div>
</div>
</body>
</html>