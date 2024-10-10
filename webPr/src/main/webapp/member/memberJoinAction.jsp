<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ page import="java.sql.Connection" %> --%>
<%-- <%@ page import="java.sql.DriverManager" %> --%>
<%@ page import="java.sql.*" %>
<%@ include file ="/common/dbconn.jsp" %>
<%@ include file ="/common/function.jsp" %>

<jsp:useBean id="mv" class="Vo.MemberVo" scope="page"/>
<!-- <scope범위는 4가지가 있다 page(페이지내에서만), request(전송하는 범위까지),
 session(서버에서 끝날때까지 로그아웃, application(프로그램이 살아있을 때까지 > -->
 
<jsp:setProperty name="mv" property="*"/>
 
<%
/* 	String memberId = request.getParameter("memberId");
out.println("memberId값은?"+memberId);
out.println("<br>");
String memberPwd = request.getParameter("memberPwd");
out.println("memberPwd?"+memberPwd);
out.println("<br>");
String memberPwd2 = request.getParameter("memberPwd2");
out.println("memberPwd2?"+memberPwd2);
out.println("<br>");
String memberName = request.getParameter("memberName");
out.println("memberName?"+memberName);
out.println("<br>");
String memberEmail = request.getParameter("memberEmail");
out.println("memberEmail?"+memberEmail);
out.println("<br>");
String memberPhone = request.getParameter("memberPhone");
out.println("memberPhone?"+memberPhone);
out.println("<br>");
String memberAddr = request.getParameter("memberAddr");
out.println("memberAddr?"+memberAddr);
out.println("<br>");
String memberGender = request.getParameter("memberGender");
out.println("memberGender?"+memberGender);
out.println("<br>");
String memberBirth = request.getParameter("memberBirth");
out.println("memberBirth?"+memberBirth);
out.println("<br>"); */
String[] memberHobby = request.getParameterValues("memberhobby");
String memberInHobby="";
for(int i=0;i<memberHobby.length;i++){
	memberInHobby = memberInHobby + memberHobby[i] + ",";
	
	/* out.println("memberHobby?"+memberHobby[i]); */		
}


//1. jsp 프로그래밍 (날코딩 낱코딩방법부터 -> 함수화 -> 객체화 방식)
//2. java/jsp 프로그래밍 (mode1, model2  MVC방식으로 진화되는 방법)
//3. spring 프레임워크로 프로그래밍 하는 방법



// conn 객체안에는 많은 메소드가 있는데 일단 createStatement 메소드를 사용해서 쿼리 작성

/* String sql = "insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,memberemail,memberhobby) values('"+memberId+"','"+memberPwd+"','"+memberName+"','"+memberGender+"','"+memberBirth+"','"+memberAddr+"','"+memberPhone+"','"+memberEmail+"','"+memberInHobby+"')";
Statement stmt = conn.createStatement(); // 쿼리구문을 동작시키는 클래스 Statement
int value = stmt.executeUpdate(sql); */
// value가 0이면 미입력 1이면 입력됨

// PreparedStatement 클래스는 메소드화 시켜서 사용함

// 매개변수에 인자값 대입해서 함수호출하자
int value = memberInsert(conn, mv.getMemberid(), mv.getMemberpwd(), mv.getMembername() ,mv.getMembergender(), mv.getMemberbirth(), mv.getMemberaddr(), mv.getMemberphone(), mv.getMemberemail(), memberInHobby);

// vaule값이 1이면 입력성공 0이면 입력실패다.
// 1이면 성공했기때문에 다른 페이지로 이동시키고 0이면 다시 회원가입입력페이지로 간다.

String pageUrl = "";
String msg = "";
if(value == 1) {							// index.jsp파일은 web.xml웹설정파일에 기본등록되어있음 - 생략가능
	msg = "회원가입되었습니다.";
	pageUrl = request.getContextPath() + "/";	//request.getContextPath() : 프로젝트 이름
	response.sendRedirect(pageUrl);		// 전송방식 sendRedirect는 요청받으면 다시 그쪽으로 가라고 지시하는 방법
} else {
	msg = "회원가입 오류발생하였습니다.";
	pageUrl = request.getContextPath() + "/member/memberjointeacher.jsp";
	response.sendRedirect(pageUrl);
}
%>
    <script>
    alert('<%=msg%>');
<%--     // alert(<%=value%>); --%>
     //자바스크립트로 페이지 이동시킨다. document 객체안에 location객체안에 주소속성에 담아서
     document.location.href = "<%=pageUrl%>";
     
    </script>

