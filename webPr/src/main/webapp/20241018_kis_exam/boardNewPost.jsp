<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<style>
table {
	border-collapse : collapse;
}
td {
	border-bottom : 1px solid #d9d9d7;
	padding : 10px;
	width : 200px;
	text-align : center;
}
#a {
	border-top : 2px solid #f3b352;
}

</style>
</head>
<body>
<h4 style = "text-indent:3em; font-weight:bold;">글쓰기</h4>
	<form name = "frm">
	<table style = "whidth:800px;">
		<tbody style = "align : center;">
			<tr id = "a">
				<td style = "font-weight:bold;">제목</td>
				<td><input type = "text" value = "" style = "border : 1px solid #d9d9d7; text-align : left; width:600px;"></td>
			</tr>
			<tr>
				<td style = "font-weight:bold;">내용</td>
				<td><textarea rows="10" cols="100" style = "border : 1px solid #d9d9d7; text-align : left; width:600px;"></textarea></td>
			</tr>
			<tr>
				<td style = "font-weight:bold;">작성자</td>
				<td><input type = "text" value = "" style = "border : 1px solid #d9d9d7; text-align : left; width:600px;"></td>
			</tr>
			<tr>
				<td style = "font-weight:bold;">비밀번호</td>
				<td><input type = "text" value = "" style = "border : 1px solid #d9d9d7; text-align : left; width:600px;"></td>
			</tr>
			<tr>
				<td style = "font-weight:bold;">첨부파일</td>
				<td><input type = "file" value = "" style = "text-align : left; width:600px;"></td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td style = "border-bottom : none; border-radius:5px;"></td>
				<td colspan = "2" style = "border-bottom : none; text-align : right;">
				<input type = "button" value = "저장" style = "background-color:black; color:white; border-radius:5px;">
				<input type = "button" value = "취소" style = "background-color:black; color:white; border-radius:5px;"> </td>
		</tfoot>
	</table>
	</form>

</body>
</html>