<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,800,300'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">


<link rel="stylesheet" type="text/css" href="/web/DeliveryProject/list.css?after" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<style type="text/css">
.listmain2 {
	width: 100%;
	height: 317px;
	overflow: hidden;
}
.foodzzim{
 position: relative;
	
	    top: -204px;
    left: 244px;
width: 30px; 
height: 30px;
background-color: white;
}
.menushow{
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
    top: -54px;
     line-height: 34px; 

}

</style>
<script type="text/javascript">
	var pk = 1;
	var compare="";
	function zzimajax(url,id,cnt){
		var forms=$("form#zzim"+id).serialize();
		$.ajax({
		url:url,
		data:forms,
		async:false,
		dataType:"text",
		success:function(v){
			if(cnt==1){
				
			compare=v;
			//alert(compare);
			}
		},error:function(v){
			
		}
		})									
	}
	
	$(function() {
$("button.zzim").hide();
		$(".foodzzim").click(function() {
			alert($(this).attr("id"));
		var id=$(this).attr("id");
		var url="/web/zzimcompare.do";
		var url2="/web/zzim.do";
		zzimajax(url,id,1);
		if(compare=="true"){
			$("button.zzim").text('이미 찜!');
			$("button.zzim").show(500);
			//alert("이미 찜");
			return ;
		}
		if(compare=="false"){
			alert("false 상태");
			$("img#"+this.id).attr("src",function(i,attr){
				if(attr.match('hit1')){
					return attr.replace("/web/DeliveryImg/hit1.png","/web/DeliveryImg/hit.png");
				}else{
					return attr.replace("/web/DeliveryImg/hit.png","/web/DeliveryImg/hit1.png");
				}
			})
		zzimajax(url2,id,2);
			$("button.zzim").text('찜 성공!');
			$("button.zzim").show(500);
		}
		//$("form#zzim"+id).submit();
			

		});
		$("button.zzim").click(function(){
			$(this).hide();
		})
		 $("span.spanmenu").click(function(){
	         var spanId=$(this).attr('id');
	         $(".spanmenu").each(function(index,dom){
	            if(spanId==dom.id){
	               $(this).addClass('onClick');   
	            }else{
	               $(this).removeClass('onClick');
	            }
	         });
	      });
	      
	    $("span.menushow").click(function(){
	    	alert($(this).attr("id"));
	    	var id=$(this).attr("id");
	    	$("form#menuFrm"+id).submit();
	    });

	});
</script>
</head>

<body>
<button class="zzim"id="" type="button" style="	border: solid 1px #f90346; border-radius:30px;  left: 50% ; top: 50% ;position: fixed; width: 125px; height: 50px;transform: translate(-50%,-50%); z-index: 10 ;background-color: #ffffff;color: #f90346; cursor: pointer; " ></button>

	<div><jsp:include page="header.jsp"></jsp:include></div>

	<div
		style="width: 100%; position: relative; top: 0; left: 0; background-color: #EE0242">
		<div
			style="margin: 0 auto; width: 1318px; padding: 100px 0; overflow: hidden;">
			<div>
				<div style="border: 1px solid white; width: 30%;"></div>
				<p
					style="position: absolute; top: 29%; left: 0; right: 0; bottom: 0; font-size: 2em; margin: auto; width: 388px; color: white; font-weight: bold;">역삼동의
					Bsst Store</p>
				<div style="border: 1px solid white; width: 30%; float: right"></div>
			</div>
		</div>
		<div id="spanmenus"
			style="width: 1318px; height: 60px; margin: 0 auto;">
			<span class="spanmenu onClick" id="span1">전체보기</span> <span
				class="spanmenu" id="span2">별점순</span> <span class="spanmenu"
				id="span3">리뷰순</span>
		</div>
	</div>


	<div class="listmain">
	
	
	
		<c:forEach var="i" items="${seachss==1?seachlist:deli}" varStatus="cnt"> 
	
	
	
		<!-- main center  -->
		<div class="listmain2" style="border-bottom: 2px dashed lightgray;">
			<div id="foodshopimg" ><!-- <img style="position:relative; margin: 0 auto;" width="70px" height="50px"src="/web/DeliveryImg/15.png"> --></div>
			<!-- <img id=foodshopimg alt="" src="image/15.png" > -->
			<form id="zzim${i.OWNERNO}"  >
			<img class="foodzzim" id="${i.OWNERNO}" name="foodzzim" alt="" src="/web/DeliveryImg/hit1.png">
			
			<input type="hidden" value="${i.OWNERNO}" name="storeno" />
			<input type="hidden" value="${id}" name="userid"/>			
			<input type="hidden" value="${userno}" name="userno"/>			
			</form>
			<iframe style="display: none" name="if"></iframe>
			<div id="brandborder">

				<p id="brandname" style="width:300px;">${i.STORENAME}</p>
				<br>
				<p id="brandloc"style="width:300px;">${i.STOREADDR}</p>
<!--${i.STOREADDR.substring(i.STOREADDR.indexOf('(')+1,i.STOREADDR.indexOf(')'))}  -->
			</div>

			<div id="starborder">
				<div
					style="position: relative; width: 100%; height: 33px; text-align: right;">별점</div>
				<p id="starscore">4.5</p>

			</div>
			<div
				style="border: 1px dashed lightgray; width: 914px; margin-left: 344px; position: relative; top: -297px;">
			</div>


			<div id="foodtypeborder">


				<p id="foodtel">${i.STOREPHONE}</p>
				<img alt="" src="/web/DeliveryImg/tel.png"
					style="width: 20px; height: 20px; position: relative; left: 7%; top: -29px;">
			</div>
			<p id="foodtypename">${category}전문점</p>

			<div id="reviewborder">
			<form id="menuFrm${i.OWNERNO }" action="/web/menulist.do" method="post">
				<input type="hidden" id="ownerno" name="ownerno" value="${i.OWNERNO}">
				<input type="hidden" id="category" name="category" value="${category}">
				<p id="reviewcount">15개의 리뷰</p>
				<span class="show" id="reviewshow">리뷰 보러가기 </span>
				<p
					style="position: relative; font-size: 18px; top: -24px; color: #F90346; font-weight: bold;">메뉴
					목록</p>
				<span class="show menushow" id="${i.OWNERNO }">메뉴 보러가기 </span>
				</form>

			</div>
		</div>
			<!--      main center end                 -->
			</c:forEach>
			<c:if test="${seachss==1}">

	</c:if>

		<!--                                                  -->


		<!--                                                                                -->


		<!--                                                                 -->

		<!--                                                                                -->

		<!--                                                                                -->
		<!--                                                                                -->
		<!--                                                                                -->


	</div>


	<div
		style="position: absolute; left: 0; overflow: hidden;  width: 1318px; margin: 20 auto;    margin-left: 22px; height: 200px">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>


</body>
</html>