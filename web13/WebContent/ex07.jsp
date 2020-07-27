<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="jquery/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('button').click(function() {
			var param = 'id=admin&msg='+$('input').val();
			if ($(this).text() == 'get') {
//				$.get('ex08');
				$.ajax('ex08?'+param,{
					'method' : 'get'
				});
			} else if ($(this).text() == 'post') {
//				$.post('ex08');
				$.ajax('ex08', {
					'method' : 'post',
					'data':param
				});
			} else if ($(this).text() == 'put') {
				$.ajax('ex08', {
					'method' : 'put',
					'data':param
				});
			} else if ($(this).text() == 'delete') {
				$.ajax('ex08', {
					'method' : 'delete',
					'data':param
				});
			}

		});//button click

	});
</script>
</head>
<body>

	<h1>method별 호출</h1>
	<input type="text" />
	<button>get</button>
	<button>post</button>
	<button>put</button>
	<button>delete</button>
</body>
</html>