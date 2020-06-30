<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<style type="text/css">
* {
 margin:  0;
 padding: 0 ;

}
.header{
width: 100% ;
height: 70px;

}
.header2 {
margin: 0 auto ;
width: 1000px;
height: 70px;
border: 1px solid black;
display: table;
}
.headerspan{
cursor:pointer;
color:white;
background: #91C501;
display: table-cell;
text-align: center;
vertical-align: middle;

}

</style>
<script type="text/javascript">

$(function(){
	

	$(".headerspan").mouseover(function(){
		$(this).css("background","#6DB000"); 
	
	});
	$(".headerspan").mouseout(function(){
		$(this).css("background","#91C501"); 
	
	});
	$(".headerspan").click(function(){
		var id=$(this).attr("id");
		
		location.href="/web/8all9header.do?id="+id
		
		
	});
});


</script>
</head>
<body>
<div class="header">
	<div class="header2">
		<span class="headerspan" id="1">땡땡몰소개</span>
		<span class="headerspan" id="2">마이페이지</span>
		<span class="headerspan" id="3">전 어떻게 써요 ?</span>
		<span class="headerspan" id="4">사용후기</span>
		<span class="headerspan" id="board">자유게시판</span>
	
	</div>


</div>
</body>
</html>