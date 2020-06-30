<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>리추로 사장님 사이트</title>
<link rel="stylesheet" type="text/css" href="/web/DeliveryProject/css/sb-admin-2.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style type="text/css">
@font-face {
	font-family: "BM";
	src: url("/web/DeliveryProject/font/BMDOHYEON_ttf.ttf")
		format("truetype");
}

body {
	background-image: url(/web/DeliveryImg/back4.jpg);
	background-size:cover;
	font-family: BM;
	color: gray;
}
div.fb-login-button{
	margin:0 auto;
}
</style>
<script type="text/javascript">
	$(function(){
		  
		$("a#loginBtn").click(function(){
		    	if($("input#id").val()==""||$("input#pass").val()==""){
					alert("입력 값이 없습니다. 입력값을 확인해 주세요");
					$("input#id").focus();
					return false;
				}
		    	$("form").submit();
		    });
		if($("input[type='hidden']").val()=='none'){
			alert("계정이 존재하지 않습니다.");
			return false;
		}
		if($("input[type='hidden']").val()=='fail'){
			alert("비밀번호가 맞지 않습니다. 다시 확인해 주세요");
			return false;
		}
		if($("input[type='hidden']").val()=='notconfirm'){
			alert("인증되지 않았습니다. 메일을 확인해 주세요.");
			return false;
		}
		  
	});

</script>
</head>

<body class="wrap">
<div id="fb-root"></div>
<script>
function fbLogin() {
    // 로그인 여부 체크
    FB.getLoginStatus(function(response) {
		var fbname;
		var accessToken=response.authResponse.accessToken;
        if (response.status === 'connected') {
            FB.api('/me?fields=id,name,age_range,birthday,gender,email', function(response) {
                // 제일 마지막에 실행
                console.log(JSON.stringify(response));
                var data=response.name;
                document.location.href="/web/deliveryLogin2.do?name="+data;
            });
        } else if (response.status === 'not_authorized') {
            // 사람은 Facebook에 로그인했지만 앱에는 로그인하지 않았습니다.
            alert('앱에 로그인해야 이용가능한 기능입니다.');
        } else {
            // 그 사람은 Facebook에 로그인하지 않았으므로이 앱에 로그인했는지 여부는 확실하지 않습니다.
            alert('페이스북에 로그인해야 이용가능한 기능입니다.');
        }
    }, true); // 중복실행방지
}

window.fbAsyncInit = function() {
    FB.init({
        appId   : '401988800640551',
        cookie  : true,
        xfbml   : true,
        version : 'v2.8'
    });
};
(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.9&appId=401988800640551";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
    
  
</script>
    <input type="hidden" value="${ state}">
	<div class="content">

		<!-- Outer Row -->
		<div class="row justify-content-center ">

			<div class="col-xl-10 col-lg-12 col-md-9">

				<div class="container">

					<!-- Nested Row within Card Body -->

					<%-- <div class="col-lg-6 d-none d-lg-block bg-login-image></div> --%>

					<div class="col-lg-6" style="margin:0 auto;width:600px;background: rgba(255,255,255,0.7);margin-top: 110px;">
						<div class="p-5">

							<div class="text-center">
								<p class="h4 text-gray-900 mb-4">
									<img alt="" src="/web/TeamProject/img/bm_logo.PNG">
								</p>
								<h1 class="h4 text-gray-900 mb-4">Make your like delicious!</h1>

							</div>
							<form class="user" action="/web/deliveryLogin.do" method="POST">
								<div class="form-group">
									<input type="email" class="form-control form-control-user"
										id="id" name="id" aria-describedby="emailHelp" placeholder="아이디">
								</div>
								<div class="form-group">
									<input type="password" class="form-control form-control-user"
										id="pass" name="pass" placeholder="비밀번호">
								</div>
								<div class="form-group">
									<div class="custom-control custom-checkbox small">
										<input type="checkbox" class="custom-control-input"
											id="customCheck"> <label class="custom-control-label"
											for="customCheck">아이디저장</label>
									</div>
								</div>
								<a href="javascript:void(0)" id="loginBtn" class="btn btn-primary btn-user btn-block">
									로그인 </a>
								<hr>
									
								<div class="fb-login-button" scope="public_profile,email,publish_pages,manage_pages" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="true" data-auto-logout-link="true" data-use-continue-as="true" onlogin="fbLogin();"></div>
								<hr>
							</form>
							<hr>

							<div class="text-center">
								<a class="small" href="forgotId.jsp">아이디찾기</a> / <a
									class="small" href="forgotPassword.jsp">비밀번호찾기</a>
							</div>
							<div class="text-center">
								<a class="small" href="register.jsp">회원가입</a>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

</html>
