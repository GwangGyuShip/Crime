<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<!--hichart-->
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<title>Insert title here</title>
</head>
<body>
		<div id="line_chart" style="min-width: 310px; height: 400px; margin: 0 auto">
			                                       
		</div>
  <script>
  
  var getChart = function(){ 
  	  var totalList=[];
	  <c:forEach var="vo" items='${chartList}' varStatus="status">
	  	totalList.push(parseInt('${vo.total}'));
	  </c:forEach>
	  
	  return totalList;
  }
	
     Highcharts.chart('line_chart', {
       
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

      series: [{	
          name: '${c_gu}',
          data:getChart()  
      }],

      responsive: {
          rules: [{
              condition: {
                  maxWidth: 500
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

  });
</script>
</body>
</html>