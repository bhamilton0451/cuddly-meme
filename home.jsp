<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Aula Web</title>
</head>

<body>
	<h1>Aula Web</h1>
	
	Palavra: <input type="text" name=in1 size=15> <br>
	
	<button onclick="Palindromo(document.getElementById('in1').value)">
		Enviar
	</button><br>
	
	<%! 
		boolean checkPalindromo(String in1){
			String input1 = in1;
				
			for(int L = 0; L < input1.length(); L++){
				if(input1.charAt(L) 
						!= 
					input1.charAt(input1.length() -1 - L)
				){
					return false;
				}
			} return true;
		}
	%>
		
	<%
		String in1 = request.getParameter("in1");
		boolean check = checkPalindromo(in1);
		
		if(check){
			out.print(in1 + " é palindromo.");
		} else {
			out.print(in1 + " não é palindromo.");
		}
	%>
	
	<p id="editable"></p>
</body>


</html>
