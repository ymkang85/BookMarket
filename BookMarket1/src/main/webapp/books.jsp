<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Book"%>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" />
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
	ArrayList<Book> listOfBooks = bookDAO.getAllBook();
	%>
	<div class="container">
		<div>
			<%
			for (int i = 0; i < listOfBooks.size(); i++) {
				Book book = listOfBooks.get(i);
			%>
			<div>
				<div>
					<h3><%=book.getName()%></h3>
					<p class="text-truncate"><%=book.getDescription()%>
					<p><%=book.getAuthor()%> | <%=book.getPublisher()%> | <%=book.getUnitPrice()%>원
				</div>
				<div>
					<a href="./book.jsp?id=<%=book.getBookId()%>"
						class="btn btn-secondary" role="button"> 상세정보 &raquo;></a>
				</div>
			</div>
			<hr class="block">
			<%
			}
			%>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>