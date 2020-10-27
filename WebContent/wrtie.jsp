<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="index.jsp" method="post" onsubmit = "return formCheck();">
		제목 : <input type = "text" name = "title"><br>
		작성자 : <input type = "text" name = "writer"><br>
		날짜 : <input type = "text" name = "regdate"><br>
		<input type = "submit">
	</form>

<script>
	function formCheck() {
		 
		var length = document.forms[0].length-1; 
		// submit을 제외한 모든 input태그의 갯수를 가져옴
		 
		for(var i = 0; i < length; i++){     // 루프를 돌면서
		 
		    if(document.forms[0][i].value == null || document.forms[0][i].value == ""){
		 
		        alert(document.forms[0][i].name + "을/를 입력하세요."); 
		        document.forms[0][i].focus();          
		 
		        return false;
		 
		    }//end if
		 
		}//end for
	}
</script>

</body>
</html>