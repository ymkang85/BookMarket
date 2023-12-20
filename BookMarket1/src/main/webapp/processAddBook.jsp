<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>

<%
request.setCharacterEncoding("UTF-8");

String bookId = request.getParameter("bookId");
String name = request.getParameter("name");
String unitPrice = request.getParameter("unitPrice");
String author = request.getParameter("author");
String description = request.getParameter("description");
String publisher = request.getParameter("publisher");
String category = request.getParameter("category");
String unitsInStock = request.getParameter("unitsInStock");
String totalpages = request.getParameter("totalpages");
String releaseDate = request.getParameter("releaseDate");
String condition = request.getParameter("condition");

Integer price;
if (unitPrice.isEmpty())
	price = 0;
else
	price = Integer.valueOf(unitPrice);

long stock;
if (unitsInStock.isEmpty())
	stock = 0;
else
	stock = Long.valueOf(unitsInStock);

Integer pages;
if (totalpages.isEmpty())
	pages = 0;
else
	pages = Integer.valueOf(totalpages);

BookRepository dao = BookRepository.getInstance();

Book newBook = new Book();
newBook.setBookId(bookId);
newBook.setName(name);
newBook.setUnitPrice(price);
newBook.setAuthor(author);
newBook.setDescription(description);
newBook.setPublisher(publisher);
newBook.setCategory(category);
newBook.setUnitsInStock(stock);
newBook.setTotalPages(pages);
newBook.setReleaseDate(releaseDate);
newBook.setCondition(condition);

dao.addBook(newBook);

response.sendRedirect("books.jsp");
%>