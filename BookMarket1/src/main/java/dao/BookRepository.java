package dao;

import java.util.ArrayList;

import dto.Book;

public class BookRepository{
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	
	public BookRepository() {
		Book book1= new Book("B1234", "[Hello coding] HTML5+CSS3",15000);
		book1.setAuthor("황재호");
		book1.setDescription("워드나 PPT 문서를 만들 수 있나요? 그러면 문제 없습니다. 지금 바로 웹페이지 제작에 도전해보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행 화면이 바로 보여서 눈으로만 읽어도 어떻게 작동하는지 쉽게 파악할 수 있는 것은 기본이고, 중간중간 퀴즈를 추가하여 재미있게 게임하듯 복습할 수 있습니다. 또한 이제 막 입문하여 도움을 구할 곳이 없는 여러분을 고려하여, 궁금해할 내용을 알아서 질문하고, 팁으로 친절하게 답해줍니다. 각 장의 끝에는 앞에서 배운 내용을 자연스럽게 복습할 수 있는 프로젝트도 있습니다. ");
		book1.setPublisher("한빛미디어");
		book1.setCategory("컴퓨터");
		book1.setUnitsInStock(100);
		book1.setTotalPages(523);
		book1.setReleaseDate("2019/12/11");
		book1.setCondition("New");
		
		Book book2= new Book("B1235", "[IT 모바일] 쉽게 배우는 자바 프로그래밍",27000);
		book2.setAuthor("우종중");
		book2.setDescription("이 책은 객체 지향의 핵심을 다루면서도 자바 8 이후 도입된 새로운 기능을 상세히 설명합니다. 군더더기 없는 핵심 코드를 읽고 따라 하면서 ‘개념 이해와 실제 구현’을 할 수 있고, 실생활에 적용할 수 있는 프로젝트 문제를 풀면서 프로그래밍 실력도 끌어올릴 수 있습니다.");
		book2.setPublisher("한빛아카데미");
		book1.setCategory("컴퓨터");
		book1.setUnitsInStock(100);
		book1.setTotalPages(522);
		book1.setReleaseDate("2019/12/13");
		book1.setCondition("New");
		
		Book book3= new Book("B1236", "[IT모바일] 스프링4 입문",27000);
		book3.setAuthor("하세가와 유이치, 오오노 와타루, 토키 코헤이(권은철, 전민수)");
		book3.setDescription("스프링은 단순히 사용 방법만 익히는 것보다 아키텍처를 어떻게 이해하고 설계하는지가 더 중요합니다. 예제를 복사해 붙여넣는 식으로는 실제 개발에서 스프링을 제대로 활용할 수 없습니다. 이 책에서는 웹 애플리케이션의 기초를 다지고 스프링 코어를 살펴보며 클라우드 네이티브 입문까지 다룹니다. 이제 막 실무에 뛰어든 웹 애플리케이션 초급자나 개발 경험은 있지만 스프링은 사용해본 적 없는 분을 대상으로 가능한 한 쉽게 설명합니다. ");
		book3.setPublisher("한빛미디어");
		book1.setCategory("컴퓨터");
		book1.setUnitsInStock(120);
		book1.setTotalPages(432);
		book1.setReleaseDate("2020/9/13");
		book1.setCondition("New");
		
		listOfBooks.add(book1);
		listOfBooks.add(book2);
		listOfBooks.add(book3);
	}
	
	public Book getBookById(String bookId) {
		Book bookById = null;

		for (int i = 0; i < listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if (book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
				bookById = book;
				break;
			}
		}
		return bookById;
	}
	
	public ArrayList<Book> getAllBook(){
		return listOfBooks;
	}
}