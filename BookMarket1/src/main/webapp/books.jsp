<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<%!String greeting = "도서 목록";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<%
	BookRepository dao = BookRepository.getInstance();
	ArrayList<Book> listOfBooks = dao.getAllBook();
	%>
	<div class="container">
			<%
			for (int i = 0; i < listOfBooks.size(); i++) {
				Book book = listOfBooks.get(i);
			%>
		<div class="row">
			<div class="col-md-3">
				<img src="./resources/images/<%=book.getFilename()%>" style="width:200px; height:300px; margin:0; padding:0">
			</div>			
			<div class="col-md-6">				
				<h3><%=book.getName()%></h3>
				<p class="text-truncate"><%=book.getDescription()%>
				<p><%=book.getAuthor()%> | <%=book.getPublisher()%> | <%=book.getUnitPrice()%>원
			</div>
			<div class="col-md-3">
				<a href="./book.jsp?id=<%=book.getBookId()%>"
					class="btn btn-secondary" role="button"> 상세정보 &raquo;></a>
			</div>
		</div>
		<hr class="block">
			<%
			}
			%>
		</div>
	<%@ include file="footer.jsp"%>
</body>
</html>