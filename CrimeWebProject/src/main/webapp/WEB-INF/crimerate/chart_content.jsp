<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<!--hichart-->
<script src="https://code.jquery.com/jquery.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<title>Insert title here</title>
</head>
<body>
		<div id="line_chart" style="min-width: 310px; height: 400px; margin: 0 auto">
                         
		</div>
		<script type="text/javascript">
            $(function(){

            var options={
                  title: {
                      text: '',
                  },

                  legend: {
                      itemStyle:{
                          fontSize:'15px'
                      }
                  },

                  plotOptions: {
                      series: {
                          label: {
                              connectorAllowed: false
                          },
                          pointStart: 2010
                      }
                  },

                  series: [],

                  responsive: {
                      rules: [{
                          condition: {
                              maxWidth: 300
                          },
                          chartOptions: {
                              legend: {
                                  layout: 'horizontal',
                                  align: 'center',
                                  verticalAlign: 'bottom',
                              }
                          }
                      }]
                  },
              };
                
                var g_name="";
                var g_animation="";
                var c_count=[];
                var guList=[];
                
                  <c:forEach var="vo" items='${guchList}' varStatus="status">
		                g_name='${vo.c_gu}';
		               if('${c_name}' == '평균'){
		               	c_count.push(parseFloat('${vo.average}'));
		               }else{
		               	c_count.push(parseInt('${vo.c_count}'));
		                  }
		              
	                 if(parseInt('${status.count}')%7==0 && parseInt('${status.count}')!=1 
	               		 && parseInt('${fn:length(guchList)}') != 7){
	               	 
	               	 if(parseInt('${fn:length(guchList)}') == parseInt('${status.count}')){
	               		 guList.push({"name":g_name,"data":c_count,"animation":true});  
	               	 }else{
	               		 guList.push({"name":g_name,"data":c_count,"animation":false});
	               	 }
	               	 
	               	 c_count=[];
	                 }
                   
                      if(parseInt('${fn:length(guchList)}')==7 && parseInt('${status.count}')==7){
                        	guList.push({"name":g_name,"data":c_count,"animation":true});	
                       }
                  </c:forEach>
                  
            for(var i=0; i<guList.length ; i++){ //list에 push해줄때 전체값은 꺾은선 색깔을 빨간색으로!
            	if(guList[i].name == '전체'){
            		options.series.push({
                        name:guList[i].name,    
                        data:guList[i].data,
                        animation:guList[i].animation,
                        color:'#FF0000'
                    }
                    );		
            	}else{ //'전체' 이외의 값은 색깔은 랜덤으로!
            	    options.series.push({
                        name:guList[i].name,    
                        data:guList[i].data,
                        animation:guList[i].animation
                    }
                    );
            	}
            
            }
                
               var chart=new Highcharts.chart('line_chart',options); 
                
            });
    
    </script>
</body>
</html>
