<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}


</style>
<script type="text/javascript">
var pwcheck="" ;
var deletevalue="";
function aja(url,cnt){
	
	var forms=$("form#forminfo").serialize();
	var forms2=$("form#forminfo");
	
	 	$.ajax({
	url:url,
	data:forms,
	type:"post",
	async:false,
	dataType:"text",
	success:function(v){
		if(cnt==1){
		pwcheck=v;
		}
	},error:function(e){
		
	}
}) 
	
	
}

function aja2(url2,cnt){
	alert(url2);
		$.ajax({
			url:url2,
			dataType:"text",
			type:"post",
			async:false,
			success:function(v){
				//alert(v);
				if(cnt==1){
				deletevalue=v;
				}
			},error:function(e){
				
			}
			
		}) 
}

	$(function() {
		$(document).on("keyup", "input:text[numberOnly]", function() {$(this).val( $(this).val().replace(/[^0-9]/gi,"") );});
		 $("button.delete").hide();
		 $("button.modi").hide();
		
		
		$("input[type='checkbox']").click(function() {
			$(this).css({
				'background-color' : 'red'
			});
		});
		$(".gender2").click(function(){    //성별 체크박스 여부
			var id2=$(this).attr("id");	
			
			  $(".gender2").each(function(index,dom) {
				  if($(this).attr("id")!=id2){				  
				  		$(this).prop("checked", false); 
				  }
			 }); 
			
		})	;
		//alert($("input.gender").val());
		 $(".gender2").each(function(index,dom) {
			// alert($(this).val().substring(0,1));
			  if($(this).val().substring(0,1)==$("input.gender").val().substring(0,1)){
					$(this).prop("checked", true); 
			 }else if($("input.gender").val().substring(0,1)=="" || $("input.gender").val().substring(0,1)==null) {
				 $("input[id='all5']").prop("checked", true);
			 }
		 }); 
		 
		 $("input#current").focusout(function(){
			 $("h6#1").hide(500);
			var temp=$(this).val();
			$("input[name='current']").val(temp);
			var url="/web/currentpw.do"
		//	$("form").attr("action","/web/currentpw.do");
				aja(url,1);					
		//	$("form").submit();
	//	alert(pwcheck);
			if(pwcheck=="true"){
			$("h6.1").text("비밀번호가 일치합니다");
			$("h6.1").css("color","blue");
			}if(pwcheck=="false") {
				$(this).val('');
				$("h6.1").text("비밀번호가 일치하지 않습니다");
				$("h6.1").css("color","red");
			}
				 
		
			
			 
			 
		 });
		 $("input.new2").focusout(function(){
			var valu=$(this).val();
			if( $("input.new1").val()==$("input.new2").val()){
				$("h6.2").text("비밀번호가 서로 일치합니다");
				$("h6.2").css("color","blue");
				$("input[name='userpw']").val(valu);
				
			}else{
				$("h6.2").text("비밀번호가 서로 일치하지 않습니다");
				$("h6.2").css("color","red");
				$("input.new1").val('');
				$("input.new2").val('');
			}
			 
			 
		 });
		 
		 $("input[name='userbirth2']").focusout(function(){
		 var temp=$(this).val().substring(0,4)+'/'+$(this).val().substring(4,6)+'/'+$(this).val().substring(6,8);
		//var temp=$(this).val();
		$("input[name='userbirth']").val(temp);
		// $(this).val(^(\d+)[/|\-|\s]+[0|1](\d)[/|\-|\s]+([0|1|2|3]\d)$);
	//	 alert($(this).val().substring(0,4)+'-'+$(this).val().substring(4,6)+'-'+$(this).val().substring(6,8));
		 
		 })
		 $("span#menushow9").click(function(){
			 alert('d');
			var url="/web/infoupdate.do";
			if($("input[name='userpw']").val()!="" ){
			aja(url,2);
			}else {
				alert("모든 값을 입력해주세요");
				
			}
			 $("button.modi").show(500);
		 });
		 $("button.modi").click(function(){
			 
			 document.location.href="/web/DeliveryProject/DelieveryMain.jsp";
			 $(this).hide(500);
		 });
			$("span#outshow9").click(function(){
		
				var url2="/web/memberdelete.do";
		aja2(url2,1);
		// alert('하이')
		 	//alert('dd');
				// $("button.delete").show(500);
			//	alert(deletevalue);
				if(deletevalue=="delete"){
						 $("button.delete").show(500);
				}
			}) ;
			 $("button.delete").click(function(){
				 var url="/web/remypage.do";
				 document.location.href="/web/logoutProcess.do";
		//alert('dd');
				 $(this).hide(500);
			 
			 });
			 
			 
		

	});
</script>
</head>
<body>
	<div
		style="position: relative; width: 100%;; height: 100px; margin-top: 53px; border-bottom: 1px solid; text-align: center;">
		<p
			style="position: relative; top: -10px; width: 100%; height: 50px; color: #434343; font-weight: bold; font-size: 40px;">내정보수정</p>
	</div>


	<!--  main center  -->
	<form id="forminfo"  onsubmit="return true;">
	<div
		style="border-bottom: 1px solid #B5B5B5; width: 100%; height: auto; position: relative; margin-top: 20px;">
		<div style="width: 100%; height: 740px;">
		<input type="hidden" name="current">
		<input type="hidden" name="userpw">
		<input type="hidden" name="userid" value="${id}">
		<input type="hidden" name="userbirth" >
		<button class="delete"id="" type="button" style="	border: solid 1px #f90346; border-radius:30px;  left: 50% ; top: 50% ;position: fixed; width: 200px; height: 50px;transform: translate(-50%,-50%); z-index: 10 ;background-color: #ffffff;color: #f90346; cursor: pointer; " >정상적으로 탈퇴되었습니다</button>
		<button class="modi"id="" type="button" style="	border: solid 1px #f90346; border-radius:30px;  left: 50% ; top: 50% ;position: fixed; width: 200px; height: 50px;transform: translate(-50%,-50%); z-index: 10 ;background-color: #ffffff;color: #f90346; cursor: pointer; " >수정이 완료되었습니다</button>
			<ul>
						<c:forEach var="i" items="${mydetailinfo}">
				<li class="modi1">기본정보</li>
				<li class="modi1">아이디*<input class="inputmodi" type="text"
					width="320px;" value="${i.userid}" readonly="readonly"></li>
				<li class="modi1">현재 비밀번호<input class="inputmodi" type="text"
					width="320px;" id="current" onmouseover=""></li ><h6 class="1" style=" left: 600px;position: absolute;top: 168px;  "></h6>
				<li class="modi1">새 비밀번호<input class="inputmodi new new1" type="text"
					width="320px;"></li>
				<li class="modi1">새 비밀번호 확인<input class="inputmodi new new2" type="text"
					width="320px;"></li><h6 class="2" style=" left: 600px;position: absolute;top: 329px; "></h6>
				<li class="modi1">이름*<input class="inputmodi" type="text"
					width="320px;" value="${i.username}" readonly="readonly"></li>
				<li class="modi1">닉네임<input class="inputmodi" type="text"
					width="320px;">
				</li>
				<input class="gender" type="hidden" value="${i.usergender}">
				<span id="spanmo9" type="button">수정</span>
				<li class="modi1">휴대폰*<input class="inputmodi primary"
					type="text" width="320px;" value="${i.usertel}" name="usertel">
				</li>
				<span id="tel9" type="button">다른 번호 인증</span>
				<li class="modi1"><input class="inputmodi primary" type="text"
					width="320px;"></li>
				<span id="telinfo" type="button">인증번호 확인</span>

</c:forEach>
			</ul>
		</div>

		<div style="width: 100%; height: 600px;">
			<ul>

				<li class="modi2">추가정보</li>
				<li class="modi2" id="all2">성별 <input class="inputcheck9 gender2"
					id="all4" type="checkbox" value="남자" name="usergender" ><label for="all4" class="lab"></label><label>남자</label>
					<input class="inputcheck9 gender2" id="all3" type="checkbox"value="여자" name="usergender" ><label
					for="all3"></label><label>여자</label> <input class="inputcheck9 gender2"
					id="all5" type="checkbox"value="선택안함"name="usergender" ><label for="all5"></label><label>선택안함</label>
				</li>
				<li class="modi2">생년월일<input class="inputmodi"
					style="margin-right: 339px;" type="text" width="320px"
					placeholder=" YYYY / MM / DD 숫자 8자리"name="userbirth2" maxlength="8" numberonly="true" onkeydown="numb(event)"></li>
				<li class="modi2">선택약관 동의<input class="inputcheck9" id="all6"
					type="checkbox"><label for="all6"></label><label>개인정보처리방침(선택)</label>
					<a class="aa" href="" style="color: #ff3068; font-size: 16px;">약관보기</a>


				</li>


			</ul>
			<div
				style="width: 500px; margin: 0 auto; margin-top: 120px; height: 100px;">
				<span class="spanss show" id="reviewshow9">취소 </span> <span
					class="spanss show" id="menushow9">확인 </span> <span
					class="spanss show" id="outshow9">탈퇴 </span>
			</div>
		</div>
	</div>
	</form>
	
	<!-- <!--  main center end -->

</body>
</html>