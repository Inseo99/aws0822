<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>키이벤트 조작하기</title>
<style>
td {
	width:50px; 
	height:50px; 
	border:1px solid orchid;
}
</style>
</head>
<body>
<script>

let tds = "";
let index = 0;	// 현재 칸번호
let prevIndex = 0;	// 이전 칸번호

window.onload = function() {	// 화면이 모두 로딩된 후에 함수를 실행한다.
	tds = document.getElementsByTagName("td");	// 각 td태그를 찾는다.
	tds[index].style.backgroundColor = "orchid";
}

window.onkeydown = function(e) {		// 키눌림을 감지했을때
	switch(e.key) {	
	case "ArrowDown":
		if (index/3 >= 2) {	// 맨 아래로 셀이 이동한경우
			return;		// 멈춤
		}
		
		index = index + 3;
		
		break;	
	case "ArrowUp":
		if (index/3 < 1) {	// 맨 위로 셀이 이동한경우
			return;		// 멈춤
		}
		
		index = index - 3;
		
		break;
	case "ArrowLeft":
		if (index%3 == 0) {	// 맨 왼쪽으로 셀이 이동한경우
			return;		// 멈춤
		}
		
		index--;
		
		break;
	case "ArrowRight":
		if (index%3 == 2) {	// 맨 오른쪽으로 셀이 이동한경우
			return;		// 멈춤
		}
		
		index++;
		
		break;
	}
	
	tds[index].style.backgroundColor = "orchid";
	tds[prevIndex].style.backgroundColor = "white";
	prevIndex = index;

}

</script>

<h3>화살표 키로 셀위로 이동하기</h3>
<hr>

<table>
<tr>
<td></td><td></td><td></td>
</tr>
<tr>
<td></td><td></td><td></td>
</tr>
<tr>
<td></td><td></td><td></td>
</tr>
</table>

</body>
</html>