<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글목록</title>
<style>
table {
	border-collapse : collapse;
}

thead tr {
	border-top : 1px solid #f3b352;
	border-bottom : 1px solid gray;
	
}

th {
	text-align : center;
	padding : 15px;
	whidth : 100px;	
}

tbody tr {
	border-bottom : 1px solid gray;
}

td {
	text-align : center;
	padding : 15px;
	whidth : 200px;
}

#newpost {
	text-align : right;
}

#page {
	text-align : center;	
}

#search {
	text-align : right;
	whidth : 800px;
	border-top : none;
	border-bottom : 2px solid #f3b352;
} 

</style>
</head>
<body>
<h4 style = "text-indent:3em; font-weight:bold;">글목록</h4>
	<form name = "frm">
	<table style = "whidth:800px;">
		<thead>
			<tr id = "search">
				<td colspan = "5" style = "text-align : right;"><select name="search" style="width:70px;">
					<option value="제목" selected>제목</option>
					<option value="작성자">작성자</option>
				</select>
				<input type = "text" value = "" style="width:150px;">
				<input type = "button" value = "검색" style = "background-color:black; color:white;"></td>
			</tr>
			<tr>
				<th>No</th>
				<th style = "width:400px">제목</th>
				<th>작성자</th>
				<th>조회</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>번호</td>
				<td style = "text-align : left;">글제목</td> 
				<td>관리자</td>
				<td>조회수</td>
				<td>2018-12-31</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td id = "newpost" colspan = "5">
				<input type = "button" value = "글쓰기" style = "background-color:black; color:white; border-radius:5px;"> </td>
			</tr>
			<tr>
				<td id = "page" colspan = "5">페이지</td>
			</tr>
		</tfoot>
	</table>
	</form>
</body>
</html>