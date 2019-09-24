package bookshop.com.yy.service;

import java.util.List;

import bookshop.com.yy.entity.BookCate;
import bookshop.com.yy.entity.Fenye;

public interface BookCateService {
	/**
	 * 查询所有书本类别
	 * @return
	 */
	List<BookCate> selectBookCateAll();
	
	/**
	 * 根据名称查询
	 * @param fenye
	 * @return
	 */
	Fenye<BookCate> selectBookCateByBcname(Fenye<BookCate> fenye);

	/**
	 * 添加书本类别
	 * @param bookCate
	 * @return
	 */
	Integer addBookCate(BookCate bookCate);
	/**
	 * 更新书本类别信息
	 * @param bookCate
	 * @return
	 */
	Integer updateBookCate(BookCate bookCate);
	/**
	 * 根据id删除类别
	 * @param id
	 * @return
	 */
	Integer delBookCate(Integer id);
}
