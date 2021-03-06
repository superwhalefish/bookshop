package bookshop.com.yy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import bookshop.com.yy.entity.Book;
import bookshop.com.yy.entity.Fenye;

public interface BookMapper {
	/**
	 * 根据名称或类别查询
	 * @param fenye
	 * @return
	 */
List<Book> selectByNameOrBcname(Fenye<Book> fenye);
/**
 * 根据名称或类别查询总条数
 * @param fenye
 * @return
 */
Integer selectTotalByNameOrBcname(Fenye<Book> fenye);
/**
 * 修改信息
 * @param book
 * @return
 */
Integer updateBook(Book book);
/**
 * 添加信息
 * @param book
 * @return
 */
Integer addBook(Book book);
/**
 * 删除信息
 * @param id
 * @return
 */
Integer del(Integer id);
/**
 * 随机查出两本书
 * @return
 */
List<Book> selectRandTwoBook();
/**
 * 根据id查出书本详情
 * @param id
 * @return
 */
List<Book> selectById(@Param("id") Integer id);
/**
 * 根据书本id查询相关书籍
 * @param id
 * @return
 */
List<Book> selectBcNameByBookId(Integer id);
}
