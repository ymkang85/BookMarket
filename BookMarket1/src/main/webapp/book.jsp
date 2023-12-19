<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Book"%>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 정보</h1>
		</div>
	</div>
	<%
	String id = request.getParameter("id");
	Book book = bookDAO.getBookById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><% out.println(book.getName() );%></h3>
				<p><% out.println(book.getDescription() ); %>
				<p><b>도서 코드 : </b><span class="badge badge-danger"><%=book.getBookId()%></span>
				<p><b>출판사</b> : <% out.println(book.getPublisher() );%>
				<p><b>저자</b> : <% out.println(book.getAuthor() );%>
				<p><b>재고 수</b> : <% out.println(book.getUnitsInStock() );%>
				<p><b>총 페이지 수</b> : <% out.println(book.getTotalPages() );%>
				<p><b>출판 일</b> : <% out.println(book.getReleaseDate() );%>
				<h4><% out.println(book.getUnitPrice() );%>원
				</h4>
				<p>
					<a href="#" class="btn btn-secondary"> 도서 주문 &raquo;</a>
					<a href="./books.jsp" class="btn btn-secondary"> 도서 목록 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>