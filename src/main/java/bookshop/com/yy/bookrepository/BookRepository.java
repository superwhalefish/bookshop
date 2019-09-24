package bookshop.com.yy.bookrepository;

import org.springframework.data.jpa.repository.JpaRepository;

import bookshop.com.yy.entity.Book;

public interface BookRepository extends JpaRepository<Book, Integer>{

}
