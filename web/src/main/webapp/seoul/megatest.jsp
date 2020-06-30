<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
  <link rel="stylesheet" href="css/bootstrap.css">
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<title>Insert title here</title>

	<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawSeriesChart);

    function drawSeriesChart(arr2,r) {
		/* console.log(list);
		alert(list);
		var array=new Array();
		array=list ; */
		console.log(r);
		var arr = [

			['ID', '��� ����',	'�����',	'����'],

			['CAN',    83.66,              -0.2,      'North America'],

			['DEU',    79.84,              1.36,      '�ѱ�'],

			['DNK',    78.6,               1.84,      'Europe'],

			['EGY',    72.73,              2.78,      'Middle East']

			];
		//alert(arr);
		console.log(this.arr);
       var data = google.visualization.arrayToDataTable(r==0?arr2:arr); 
    /*    [   	  
           ['ID', '��� ����',	'�����',	'����',	'�α���'],    //DB �÷���
           ['CAN',    83.66,              -0.2,      'North America',  33739900], //DB ������
           ['DEU',    79.84,              1.36,      '�ѱ�',         81902307],
           ['DNK',    78.6,               1.84,      'Europe',         5523095],
           ['EGY',    72.73,              2.78,      'Middle East',    79716203]   
        
         ] */
         
   	
      var options = {
        title: 'Correlation between life expectancy, fertility rate ' +
               'and population of some world countries (2010)',
        hAxis: {title: '��� ����'},  
        vAxis: {title: '�����'},
        bubble: {textStyle: {fontSize: 12}}      };

      var chart = new google.visualization.BubbleChart(document.getElementById('series_chart_div'));
      chart.draw(data, options);
    }
    
    $(function(){
    	
   	$("button[id='list']").click(function(){
   		var url="/web/mingming.do";
   		$.ajax({
			url:"/web/mingtest.do",
			datatype:"json",
			contentTyple:"application/json",
			success:function(v){
				var list=new Array();
				//list=[['ID', '��� ����',	'�����',	'����',	'�α���'],['CAN',    83.66,              -0.2,      'North America',  33739900],['DEU',    79.84,              1.36,      '�ѱ�',         81902307],['DNK',    78.6,               1.84,      'Europe',         5523095],['EGY',    72.73,              2.78,      'Middle East',    79716203]];
			//	drawSeriesChart(v);
				//drawSeriesChart(list);
				console.log(v);
				
		/* 	$("body").html(v);
			$("button").text("����");
			alert("����"); */
			},error:function(v){
				alert("error");
			}
				
   		
   		})
   		
   	});
   	
   	$("button[id='data_array']").click(function(){
   		//var arr[] =[['asd'],[213],['bfbs']];
   		//alert("���� ��ư");
   		  		
   		$.ajax({
   			url:"/web/arraydata.do",
   			datatype:"json",
   			success:function(v){
   				//alert("????");
   				arr=new Array;
				//arr=v[1];
				var p=0;
				arr[0] = ['ID', '��� ����',	'�����',	'����','�α���'];

				
				for (var i = 0; i < v.length; i++) {
					
				arr[i+1]=[v[i].id,v[i].life,v[i].birthlate,v[i].area,v[i].population];
				}
   			
   				
   				
   				//arr[p]=arr2;
				
				
   				//arr=v;
   				//arr.psuh=['ID', '��� ����',	'�����',	'����'];
   				console.log("arr ��");
   				console.log(arr);
   				drawSeriesChart(arr,0);
   					//alert(arr);
   					
				   //	var arr=v;
   					//console.log(arr);
   				
   				},error:function(v){
   					alert("error");
   				}
   			})
   		});
   	$("input[id='test']").click(function(){
   		
			
		setTimeout(function(){
   		for (var i = 0; i < 3; i++) {
			alert(i);
			
		};
		},2000);			
   		
   	});
   	
   
   
  
    });
    </script>
  </head>
  <body>
  ${mingulist}
    <div id="series_chart_div" style="width: 1500px; height: 700px;"></div>
    <div class="megamain" style="float: right ;border: 1px black solid ; "  >
    	<div style="border: 1px black solid ; float: left" >
    		<input type="text" style="text-align: left; size: 20px ; " >
    	</div>
    	<div style="border: 1px black solid ; float: left">
    		<button id="list" type="button" style="">�˻�</button>

				
    	</div>
    	
    	   
    </div>
    <input id="test" type="button" style="background-color: red; width: 100px; height: 50px;">
    <button id="data_array" style="width: 100px; height: 30px ; background-color: blue;" >�迭������</button>
  </body>
</html>