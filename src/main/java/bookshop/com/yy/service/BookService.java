package bookshop.com.yy.service;

import java.util.List;

import bookshop.com.yy.entity.Book;
import bookshop.com.yy.entity.Fenye;

public interface BookService {
	/**
	 * ������ѯ
	 * @param fenye
	 * @return
	 */
Fenye<Book> selectByNameOrBcname(Fenye<Book> fenye);


/**
 * �����鱾��Ϣ
 * @param book
 * @return
 */
Integer updateBook(Book book);

/**
 * ����鱾��Ϣ
 * @param book
 * @return
 */
Integer addBook(Book book);


/**
 * ɾ����Ʒ
 * @param id��Ʒ���
 * @return
 */
Integer del(Integer id);

/**
 * 随机查出两本书
 * @return
 */
List<Book> selectRandTwoBook();
}
