<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
* {
 margin:  0;
 padding: 0 ;

}
div#dd {
/* border: 1px solid black;  */
width: 150px ;
 height: inherit; 
 position:absolute; 
 text-align: right;
 display: table;

}
span{
	display: table-row;
	background-color:  #FFD4DF;
	text-align: center;
	line-height: 70px;
}
div#ddd{
/* border: 1px solid black;  */
width: 450px ;
 height: inherit; 
 position:absolute; 
 margin-left: 150px;
 display: table;

}
.dd {
display: table-row;
	background-color:  #FFD4DF;
	line-height: 70px;
	width: 450px;
	border: none;

}
/* .header{
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

} */
</style>
<script type="text/javascript">

$(function(){
	
	$("textarea").click(function(){
		/* alert("������ ?"); */
		$(this).text("");
		
	});
/* 	$(".headerspan").mouseover(function(){
		$(this).css("background","#6DB000"); 
	
	});
	$(".headerspan").mouseout(function(){
		$(this).css("background","#91C501"); 
	
	}); */
	
	$("button").click(function(){    //Ȯ�ι�ư ������ �Խñ� �ۼ�
		var vacuum=false;
		//var formdata=$("form").serialize();
		
		 $(".ddd").each(function(i,e){
		if($(this).val()=="" ||$(this).val()==null ){
			vacuum=true;
		}
		});		
		if(vacuum==true){
			alert("��� ���� �Է����ּ���");
			return ;
		} 
		 if($("input[name=password]").val()==null ||$("input[name=password]").val()==""){
			$("input[name=password]").val("-1") ;
		} 
		//alert($("input[name=password]").val());
		$("form").submit();
				/*writer ���Խ�����  �˻��� �ʱ�ȭ �ϱ� ..  */
	});
	$("input[name=writer]").blur(function(){ //�ۼ��� only �ѱ۷θ� ���Խ� üũ
		var values=$(this).val();
		if(check(values)==false){
			alert("Name Check");
			$(this).val("");
		}
		
	});
	 //onkeyup="this.value=this.value.replace(/[0-9|a-z|^��-��]/g,'');"
});
function check (writer){
	var checking=/^[��-��]*$/g ;
	if(checking.test(writer)==true){
		return true;
	}else {
		//alert("Name Check");
		return false ;
	}
}

</script>
</head>
<body>
<div><jsp:include page="8all9header.jsp"></jsp:include></div>

<div style="border : 1px solid black ;  width: 800px ; height: 600px; margin: 0 auto; margin-top: 50px;">
		<form id="write" method="post" action="/web/8all9board.do">
	<div style=" width:  600px ; height: 210px; margin: 0 auto; margin-top: 60px;">
		<div id="dd" >
			<span>�ۼ���</span>	
			<span>��й�ȣ</span>	
			<span>����</span>	
		</div>
		<div id="ddd" >
		<input class="dd ddd" type="text" name="writer" >
		<input class="dd" type="password" name="password" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" maxlength="4" placeholder="��ݽ� ���� 4���� �Է����ּ��� " >
		<input class="dd ddd" type="text" name="title" >
		
		</div>
	</div>
	<div style="border: 1px; width:  600px ; height: 210px; margin: 0 auto; margin-top: 60px;">
		<textarea  class="ddd" name="message" rows="" cols="" style="width:  600px ; height: 210px; margin: 0 auto; resize: none; " placeholder="[����] 1. �������� ���Ե鲲�� �Ⱦ��Ͻô� ����� ���� �ʽ��ϴ�. 2. ��, �弳�� ��ǳ����� ��ġ�� ���� �ڵ����� 1:1 ���� �Խ������� �̵��˴ϴ�. �����մϴ�."   ></textarea>
	
	
		
	
	</div>
		</form>
<button style="width: 100px; height: 40px; float: right;   margin-top:70px; background-color: #4AB34A ;color: white; cursor: pointer;" >Ȯ��</button>
</div>










</body>
</html>