<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>���߷� ��� ȸ������</title>
<!-- Custom styles for this template-->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="css/sb-admin-2.css" rel="stylesheet">
<style type="text/css">

@font-face {
	font-family: "BM";
	src: url("/web/DeliveryProject/font/BMDOHYEON_ttf.ttf")
		format("truetype");
}

body {
	font-family: BM;
	color: gray;
}

</style>
<script>
	$(function(){
		$("a#btn").click(function(){
			
			if($("input#id").val()==""||$("input#pass").val()==""||$("input#passcheck").val()==""||$("input#tel").val()==""||$("input#name").val()==""){
				alert("�Է� ���� �����ϴ�. �Է°��� Ȯ���� �ּ���");
				$("input#id").focus();
				return false;
			}
			
			if($("input#pass1").val()!=$("input#pass2").val()){
				alert("�н����尡 �ٸ��ϴ�. �ٽ� üũ���ּ���");
				return false;
			}else if($("input#pass1").val().trim()==$("input#pass2").val().trim()){
				$("input#password").val($("input#pass1").val());
			}
			
			$("form").submit();
		});
		

		$("input#id").focusout(function(){
			if($("input#id").val()==""){
				alert("�Է� ���� �����ϴ�. �Է°��� Ȯ���� �ּ���");
			}else{
				$.ajax({
					url:"/web/idCheck.do",
					type:"GET",
					data:"id="+$(this).val(),
					dataType:"text",
					success:function(v){
						if(v=='true'){
							alert('�ߺ��� ���� �ֽ��ϴ�. �̸��� �ּҸ� �ٽ� Ȯ�����ּ���');
						}else if(v=='false'){
							alert('��밡���� �̸��� �Դϴ�')
						}
					},error:function(e){
						alert("error"+e);
					}
				});
			}
		});
	
	});
</script>
</head>

<body class="bg-gradient-primary">

	<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5" style="    background-color: rgba(255,255,255,0.5);width: 756px; margin: 0 auto; text-align: center;">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block ">
						<img alt=""
							src="/web/teamProject/bootstrap/img/bm_login_image.jpg"><img
							alt="" src="/web/teamProject/bootstrap/img/bm_login_image.jpg">
					</div>
					<div class="text-center">
								<p class="h4 text-gray-900 mb-4">
									<img alt="" src="/web/TeamProject/img/bm_logo.PNG">
								</p>
								<h1 class="h4 text-gray-900 mb-4">Make your like delicious!</h1>

							</div>
					<div class="col-lg-7">
						<div class="p-5">
							<p style="color: black;">�ʼ� ������ �Է����ּ���.
							<p>
							<form method="post" action="/web/register.do" class="user">

								<div class="form-row">
									<input type="email" class="form-control form-control-user"
										id="id" name="userid" placeholder="���̵�*(4~20��)">
								</div>
								<br>
								<div class="form-row">
									<input type="password" class="form-control form-control-user"
										id="pass1" name="pass1" placeholder="��й�ȣ*(����+����,8~20��)" >

								</div>
								<br>

								<div class="form-row">
									<input type="password" class="form-control form-control-user"
										id="pass2" placeholder="��ι�ȣ ��Ȯ��*">
								</div>
								<input type="hidden" name="userpw" id="password">
								<br>
								<div class="form-row">
									<input type="text" class="form-control form-control-user"
										id="tel" name="usertel" placeholder="��ȭ��ȣ">
								</div>
								<br>
								<div class="form-row">
									<input type="text" class="form-control form-control-user"
										id="name" name="username" placeholder="�̸�*">
								</div>
								<br>
								
						<br>
				

						<!-- test -->
						<div class="signup-terms">
							<div class="input-checkbox input-check-all" style="text-align:left">
								<input id="terms-all" data-ref="termsAll" type="checkbox"><label
									for="terms-all" style="color:#393939; margin-left:20px">��ü ����� �����մϴ�</label>
							</div>

							<div class="input-checkbox input-check-term" style="text-align:left">
								<input id="terms-required" class="terms-item"
									name="termsRequired" type="checkbox" ><label
									for="terms-required" style="color:#393939; margin-left:20px">�ʼ� �׸� �����մϴ�.</label>
							</div>
							
						</div>


						<a href="javascript:void(0)" id="btn" class="btn btn-primary btn-user btn-block">
							���ԿϷ� </a>
						<hr>
						</form>
						<hr>

					</div>
				</div>
			</div>
		</div>
	</div>

	</div>

</body>

</html>
