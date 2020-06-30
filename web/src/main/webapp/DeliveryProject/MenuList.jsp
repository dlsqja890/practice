<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/web/DeliveryProject/css/MenuList.css" />
<script type="text/javascript">
   function ajaxProcess(url,dataType,data,type){
      $.ajax({
         url:url,
         dataType:dataType,
         type:type,
         data:data,
         success:function(v){
            console.log(v);
            $("div#tabInfo").html(v);
           
            $("div#tabInfo_menu ul li div.plus").click(function(){
               var destination=$("div#recipe ul");
               
               var total=parseInt($("div#total>p").text().substring(0,$("div#total>p").text().length-1));
               var price=$(this).siblings('span').text();//가격
               var menu=$(this).siblings('div:nth-child(2)').find('span').text();//메뉴이름
               var cnt=$(this).siblings('div.menuCnt').find('span').text();//갯수
               for(var i=0;i<cnt;i++){
                  destination.append("<li class='clearfix'><a href='javascript:void(0)'><img src='/web/DeliveryImg/minus.png'></a><span class='MenuName'>"+menu+"</span><span class='price'>"+price+"</span></li>");
               }
               total+=parseInt(price.substring(0,price.length-1).replace(/,/g,''))*cnt;
               
               $("div#total>p").html("<p>"+total+"원</p>");
               
               $("div#recipe ul li a").click(function(){
                  var minusPrice=parseInt($(this).siblings("span.price").text().substring(0,$(this).siblings("span.price").text().length-1).replace(/,/g,''));
                  total-=minusPrice;
                  $("div#total>p").html("<p>"+total+"원</p>");
                  $(this).parent().remove();
               });//영수증에서 메뉴 삭제할 때
               
            });   //메뉴 추가할 때
            
            $("div.menuCnt a").click(function(){
               var temp=$(this).attr('href');
               var cnt=Number($(this).siblings("p").find("span").text());
               if(temp=='#up'){
                  cnt=cnt+1;
                  $(this).siblings("p").find("span").text(cnt);
               }else if(temp=='#down'){
                  if(cnt==1){
                     alert("메뉴 갯수는 한 개 이상부터 주문 가능하십니다.");
                     return false;
                  }
                  cnt=cnt-1;
                  $(this).siblings("p").find("span").text(cnt);
               }
            });
            
            
         },error:function(e){
            alert('error'+e);
         }
      });
   }
   
   
   $(function(){
      
      $("div#menuTab ul li:last-child a").click(function(){
         $("div#menuTab ul li a").removeClass("click");
         $(this).addClass("click");
         ajaxProcess('/web/DeliveryProject/review.jsp','text','POST');
      });
      $("div#menuTab ul li:first-child a").click(function(){
         $("div#menuTab ul li a").removeClass("click");
         $(this).addClass("click");
         ajaxProcess('/web/DeliveryProject/menuInfo.jsp','text','POST');
      });//탭 메뉴- ajax
      
   
      
      $("input#payBtn").click(function(){
         var pay=parseInt($("div#total p").text().substring(0,$("div#total p").text().length-1));
         if(pay==0){
            alert("메뉴를 추가해주세요");
            return false;
         }
         document.location.href="/web/DeliveryProject/delieveryPay.jsp"
      })   
   });
</script>
</head>
<body onload="ajaxProcess('/web/DeliveryProject/menuInfo.jsp','text','POST')">
${cate}

<jsp:include page="header.jsp"></jsp:include>
<div id="container" class="clearfix">
   <div id="left">
         <div id="menuInfo">
            <div id="logo">
               <img src="/web/DeliveryImg/${cate[0].STOREIMG}.png" width="">
            </div>
            <div id="storeKind">
               <span>퓨전 치킨 전문점</span>
            </div>
            <div id="storeName">
               <h1>${cate[0].STORENAME}</h1>
            </div>
            <div id="storeGrade">
               <div id="star">
                  <img src="/web/DeliveryImg/star.svg">
               </div>
               <span id="point">4.5</span>
               <div id="storeTel">
                  <img src="">
                  <span>${cate[0].STOREPHONE}</span>
               </div>            
            </div>
      </div>
      <div id="menuTab" class="clearfix">
         <ul>
            <li><a href="javascript:void(0)" class="click">메뉴</a></li>
            <li><a href="javascript:void(0)">리뷰</a></li>
         </ul>
      </div>
      <div id="tabInfo">
         
         
      </div>
   </div>
   <div id="right">
      <p>주문현황</p>
      <div id="recipe" class="clearfix">
         <h2>BHC 역삼점</h2>
            <ul>
               
            </ul>
            <div id="total" class="clearfix">
               <span>총</span><p>0원</p>
            </div>
      </div>
      <input type="button" id="payBtn" value="결제">
   </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>