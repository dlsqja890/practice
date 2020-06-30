<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
	<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/web/DeliveryProject/css/footer.css?after" />
<link rel="stylesheet" type="text/css"
	href="/web/DeliveryProject/css/main.css?after" />
<link href='http://fonts.googleapis.com/css?family=Raleway:400,800,300'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="/web/DeliveryProject/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="/web/DeliveryProject/css/set1.css" />
<style type="text/css">
.coupon{

cursor: pointer;

}	
div.coupon_contents {
	position: absolute;
	text-align: center;
	width: 340px;
	padding: 41px 0px;
}
div.coupon_contents p{
	font-size: 15px;
}
	
</style>
<script type="text/javascript">


$(document).ready(function() {
	
	$('.bxslider').bxSlider({
		touchEnabled:false,
		minSlides:1,
		maxSlides:1,
		 adaptiveHeight: true,

		  mode: 'fade'
		
	});
	
	});
$.ajax({
	url:"/web/couponlist.do",
	dataType:"json",	
	success:function(v){
		var vleng=v.length-1;
		var imsiindex=new Array();
		var temp="";
		//alert(v);
		for (var i = 0; i < v.length-1; i++) {
			 imsiindex[i]=i*6-1;
		}
		
		$(v).each(function(index,dom){					
			if(index%6==0){
				temp+="<li class=\"li\" id=\"li\" style=\"height: 300px ;\"><div class=\"coupon\" id=\"coupon\" style=\"width: 970px ;\">";
			}
		temp+="<form id=\""+dom.couponno+"\" method=\"post\">";				
		temp+="<div class=\"ccc\" id=\""+dom.couponno+"\"style=\"z-index: 99\">";
		temp+="<div class=\"coupon_contents\" ><h2 class=\""+dom.couponno+"\">"+dom.storename+"</h2><p class=\""+dom.couponno+"\">"+dom.couponname+" "+dom.sale+"% 할인</p>";
		temp+="</div>";
		temp+="<img class=\""+dom.couponno+"\" src=\"/web/DeliveryImg/coupon_dash.png\" width=320px height=150px >";
		temp+="</div>";
		temp+="<input type=\"hidden\" name=\"couponno\" value=\""+dom.couponno+"\"/>";
		temp+="<input type=\"hidden\" name=\"couponname\" value=\""+dom.couponname+"\"/>";
		temp+="<input type=\"hidden\" name=\"ownerno\" value=\""+dom.ownerno+"\"/>";
		temp+="</form>";		
	  	if(index%6==5 ){
 			temp+="</div></li>";		 		 		
 		}	
	   	if(index==vleng){
	  		temp+="</div></li>";		 			
	  	} 	  							
		});
		
	   	$(".bxslider").html(jQuery.trim(temp));								
	},error:function(e){
		alert('error');
	}
});
	
	var temp2="";
	
function couponcheck(id){
	//alert(id);
	
		var forms=$("form#"+id).serialize();
	$.ajax({
		url:"/web/couponcheck.do",
		data:forms,
		async:false,
		dataType:"text",
		success:function(v){
		
			temp2=v;
			
			
			
		},error:function(e){
			
		}
		
		
	});
	
}
	
	
$(function(){
	$('.bxslider').bxSlider({ adaptiveHeight: true, mode: 'fade' });
	$("button.down").hide();
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
			if($(".mypage").attr("id")!=''){
			$(".mypage").attr("href","/web/mypage.do");
			}
		});
		var temp=$("input#seach").val();
		$("input#seach").click(function(){
			if($("input#imsi").val()==""){
				alert('주소를 입력해주세요');
				return ;
			}
			$("form#seach").submit();
		});
	
		
		
		$(".ccc").click(function(){
			var id=$(this).attr("id");
			alert(id);
			couponcheck(id);
			
			alert('ccc클릭시 temp2의 값  = '+temp2);
			if(temp2=='false'){
				$("button.down").text('이미 쿠폰을 가지고 있습니다');
			}else if(temp2=='true') {
				$("button.down").text('쿠폰함에서 확인!');
			}else if(temp2=='fullcount'){
				$("button.down").text('쿠폰이 모두 소진되었습니다!');
			}
			$("button.down").show(500);
		});
		$("button.down").click(function(){
			$("button.down").hide(500);
			if(temp2==false){
				$("button.down").text('이미 쿠폰을 가지고 있습니다');
				}
				if(temp2==true){

				$("button.down").text('쿠폰함에서 확인!');
			//	alert($(".bool").val());
			}
		})
		$(".ccc").mouseover(function(){
			$("h2."+this.id).hide();
			$("p."+this.id).hide();
		$("img."+this.id).attr("src","/web/DeliveryImg/couponB.png");
		});
		$(".ccc").mouseout(function(){
			$("h2."+this.id).show();
			$("p."+this.id).show();
			$("img."+this.id).attr("src","/web/DeliveryImg/coupon_dash.png");
		}); 
		
	});
	
	
	
</script>
</head>
<body>

	<div>
		<div>
			<div id="header" >

				<div id="header_upper">

					<a href="#"><img alt="" src="/web/DeliveryImg/richuro_logo.png" ></a>
<c:choose>
						<c:when test="${name eq null }">
							<div>
								<a href="/web/DeliveryProject/register.jsp">회원가입</a> <a href="/web/DeliveryProject/login.jsp">로그인</a>
							</div>
						</c:when>
						<c:otherwise>
							<div>
								<a href="" id="${name}" class="mypage">${name } 님</a> <a href="/web/logoutProcess.do" >로그아웃</a>
							</div>
						</c:otherwise>
					</c:choose>					

				</div>
				<div id="header_bottom">
					<div>
						<p>시간과 공간을 넘어 이어지는 맛의 경험</p>
						<p>배송까지 완벽하게, 내마음 같이</p>
					</div>
					<div id="headerInput">
				
						<form action="/web/seach.do" id="seach" method="post">
						<p>배달을 원하시는 주소지를 입력해주세요</p>
						<input id="imsi" type="text" name="seachvalue" value="${seachvalue}"/><input type="button" value="검색" id="seach" />
						<input id="cate" type="hidden" name="ownermenucate" value="${category}">
						</form>
					</div>
				</div>
			</div>
		</div>
		<div id="nav">
		<form action="/web/category.do" method="post" id="cate" >
			<ul>
				<li class="foodcategory" >치킨</li>
				<li class="foodcategory" >피자</li>
				<li class="foodcategory" >분식</li>
				<li class="foodcategory" >중식</li>
				<li class="foodcategory" >한식</li>
				<li class="foodcategory" >일식</li>
				<li class="foodcategory" >족발/보쌈</li>
			</ul>
			<input type="hidden" name="category" id="category" />
				<input id="imsi1" type="hidden" name="seachvalue" value="${seachvalue}"/>
					<input id="cate2" type="hidden" name="ownermenucate" value="${category}">
			</form>
		</div>
	</div>
	<div>
		<div class="category">
			<span class="line_Left"></span>
			<h2>현재 역삼동에서 가장 인기있는 메뉴는?</h2>
			<span class="line_Right"></span>
		</div>
		<div style="overflow: hidden;">
			<div class="grid">
				<figure class="effect-layla">
					<img src="/web/DeliveryImg/mainImg1.png" alt="img06" />
					<figcaption>
						<h2>
							간장 <span>장어구이</span>
						</h2>
						<p>스테미나에는 역시 장어구이, 안 먹을 수는 없잖아요? 그래서 저렴하고 초간단, 간편하게 즐길 수 있는
							간장소스 장어구이를 준비했습니다.</p>
						<p id="price">\6,300</p>
						<a href="#">View more</a>
					</figcaption>
				</figure>
				<figure class="effect-layla">
					<img src="/web/DeliveryImg/mainImg2.png" alt="img03" />
					<figcaption>
						<h2>
							직접 빚은 <span>지마구</span>
						</h2>
						<p>찹쌀 반죽을 손으로 일일이 빚어 동그란 경단을 만들고, 달콤한 팥 앙금을 넣어 쪄냈습니다. 고소한 통깨를
							입혀서 씹는 맛과 향을 더했습니다.</p>
						<p id="price">\6,000</p>
						<a href="#">View more</a>
					</figcaption>
				</figure>
				<figure class="effect-layla">
					<img src="/web/DeliveryImg/mainImg3.png" alt="img03" />
					<figcaption>
						<h2>
							<span>청국장찌개</span>
							
						</h2>
						<p>강원도 정선의 농민 100여명이 모여 좋은 콩을 직접 선별하고 깨끗한 환경에서 정통 방식으로 만들었습니다.</p>
						<p id="price">\4,500</p>
						<a href="#">View more</a>
					</figcaption>
				</figure>
				<figure class="effect-layla">
					<img src="/web/DeliveryImg/mainImg4.png" alt="img03" />
					<figcaption>
						<h2 >
							수원 <span>교동짬뽕</span>
						</h2>
						<p>고기를 우려낸 얼큰한 육수에 쫄깃한 면발이 더해져 다른 짬뽕과는 다른 걸쭉하고 매콤한 불향을 느낄 수
							있습니다</p>
						<p id="price">\12,900</p>
						<a href="#">View more</a>
					</figcaption>
				</figure>
			</div>
		</div>
	</div>
	<div>
		<div class="coupon-bk" style="margin-top: 161.8px; overflow: hidden;">
			<div><img id="ticket-bg" alt="" src="/web/DeliveryImg/ticket_bg.png"></div>


			

			<div class="category" >
				<span class="line_Left left"></span>
				<h2>이벤트</h2>
				<span class="line_Right right"></span>
			</div>
			<div
				style="width: 420px; height: 120px; margin: 0 auto; margin-bottom: 86px;">
				<label style="font-size: 40px; color: #434343; line-height: 64px;">오늘은
					리추로</label> <label
					style="font-size: 40px; line-height: 64px; color: #f90346;">맛난데이</label>
				<p
					style="font-size: 32px; line-height: 64px; color: #434343; text-align: center;">쿠폰받고
					먹부림해보자 !!</p>
			</div>
			
			<button class="down"id="" type="button" style="	border: solid 1px #f90346; border-radius:30px;  left: 50% ; top: 50% ;position: fixed; width: 200px; height: 50px;transform: translate(-50%,-50%); z-index: 10 ;background-color: #ffffff;color: #f90346; cursor: pointer; " >쿠폰함에서 확인!</button>
			<ul class="bxslider" id="box"   >
		<!-- 		<li class="li" id="li" >
					<div class="coupon" id="coupon" style="width: 970px ; ">
				/////////////////////////////		
						<div class="ccc" id="ccc"  >
							<div class="coupon_contents ccc" id="coupon_contents" >
								<h2></h2>
								<p>gggg% 할인</p>
							</div>
							<img  src="/web/DeliveryImg/coupon_dash.png"  width=320px
								height=150px >
						</div>
						
					/////////////////////////////																																													
																																															
					</div>
					

				</li>  -->
				
			</ul>
		</div>
		<div id="coupon_bottom">
			<span> <input type="button" value="쿠폰확인"></span> <span>
				<label style="float: right; margin-top: 7px;">본 쿠폰을 다운 받은 후<br>
					마이페이지에서 확인하세요.
			</label>
			</span>
		</div>
	</div>
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>