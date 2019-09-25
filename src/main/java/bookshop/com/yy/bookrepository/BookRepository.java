package bookshop.com.yy.bookrepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import bookshop.com.yy.entity.Book;

public interface BookRepository extends JpaRepository<Book, Integer> {
}
