<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#selBox").change(function() {
			var c_year=$(this).children("option:selected").attr("value");
			$.ajax({
				type:"POST",
				url:"datatable_content.do?c_year="+c_year,
				data:{"c_year":c_year},
				success:function(res)
				{
					$('.d_table').html(res);
				}
			});
		});
	});
</script>
</head>
<body>
	<div class="container">
	    <div class="row">
	    	<select class="form-control" id="selBox" style="width:100px; float: right; margin: 20px;">
			    <option class="option1" value="2016">2016년</option>
			    <option class="option2" value="2015">2015년</option>
			    <option class="option3" value="2014">2014년</option>
			    <option class="option4" value="2013">2013년</option>
			    <option class="option5" value="2012">2012년</option>
			    <option class="option6" value="2011">2011년</option>
			    <option class="option7" value="2010">2010년</option>
			</select>
			<script>
				$(function(){
					$('.option1').trigger('click');
					$('#selBox').change();
				});
			</script>
	    	<div class="d_table">
	    	
	    	</div>
	    </div>
    </div>
</body>
</html>