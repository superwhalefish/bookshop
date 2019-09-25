package bookshop.com.yy.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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

/**
 * 根据id查出书本的详情
 * @param id
 * @return
 */
List<Book> selectById(@Param("id")Integer id);
/**
 * 根据书本id查询相关书籍
 * @param id
 * @return
 */
List<Book> selectBcNameByBookId(Integer id);
}
