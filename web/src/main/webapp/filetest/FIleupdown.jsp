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
td {
	text-align: center;
}
</style>



<script type="text/javascript">
	$(function(){
		$("input[id='up']").click(function(){
			alert("업로드");
			
		});
		
		$("button[name='add']").click(function(){
			
			
			
			
		});
		
		
		
		
	});




</script>
</head>
<body>
	FileUpdown
<!-- 	<table style="border: 1px solid black; width: 500px; height: 200px;">
		<tbody>
			<tr>

				<td>냐햐</td>



				<td>냐햐2</td>



				<td>냐햐3</td>



				<td>냐햐4</td>


			</tr>


		</tbody>

	</table> -->
	<form action="/web/fileupload.do" id="formfile" method="post" enctype="multipart/form-data">
	<ul style="list-style: none;">
	<li>이름<input type="text" name="hoichaname" style="list-style: none;" ></li>
	<li>제목<input type="text" name="hoichatitle" style="list-style: none;"></li>
	</ul>
	<input type="hidden">
	<input>
	<input type="file" name="uploadfile" placeholder="파일선택"><br/>
	<input type="button" id="up" value="업로드">
	<button type="list">목록</button>
	<button type="button" name="add">추가하기</button>
	</form>
</body>
</html>