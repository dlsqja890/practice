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

* {
	margin: 0;
	padding: 0;
}



</style>
<script type="text/javascript">

$(function(){
	//alert($("span#reviewshow4").text());
	/* if($("span#reviewshow4").text()=='사용'){
		alert('gg');
		$(this).addClass('usecoupon');
	//	$(this).text('사용했네');
	} */
	$.each($("span#reviewshow4"),function(index,dom){
		var classname=$(this).attr("class").split(" ")[3];
		if($("input#e"+classname).val()=='사용'){
			$("span."+classname).css({"color":"white","background-color":"#F90346"});
			//color: white;
		//	background-color:#F90346;
		}

		
	})
	
	
	
	
});



</script>
</head>
<body>

<div style="position:relative; width: 100%; ;  height: 100px; margin-top: 53px; border-bottom: 1px solid;text-align: center; " >
<p style="position: relative; top:-10px;width: 100%;  height: 50px; color: #434343; font-weight: bold; font-size: 40px;">쿠폰함</p>
</div>
<!-- <div style="position: relative; width: 100%;   margin-top: 9px; "></div> -->


<c:forEach var="i" items="${mycouponlist}">
<div style="border-bottom: 1px solid #B5B5B5; width: 100%;  height: 240px; position: relative;margin-top: 10px; ">

<div id="brandborder4" >

<p id="brandname4">${i.couponname} </p><br>

<p id="brandloc4" >3만원 이상시 사용가능 </p>

</div>
<div id="reviewborder4" >

<p id="coupondate">사용기한 : ${i.startdate} ~  ${i.enddate}</p>
<span class="spansss show show4 ${i.couponno}" id="reviewshow4"   >${i.usecoupon}
 </span>
<input type="hidden" id="e${i.couponno}" value="${i.usecoupon}">

</div>
</div>
</c:forEach>
<!-- 							 -->


<!--							  -->
<!-- 
 -->

</body>
</html>