package bookshop.com.yy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bookshop.com.yy.dao.BookCateMapper;
import bookshop.com.yy.entity.BookCate;
import bookshop.com.yy.entity.Fenye;
@Service
public class BookCateServiceImp implements BookCateService {
	@Autowired
	private BookCateMapper bookCateMapper;

	
	@Override
	public List<BookCate> selectBookCateAll() {
		// TODO Auto-generated method stub
		return bookCateMapper.selectBookCateAll();
	}

	@Override
	public Fenye<BookCate> selectBookCateByBcname(Fenye<BookCate> fenye) {
		// TODO Auto-generated method stub
		List<BookCate> selectBookCateByBcname = bookCateMapper.selectBookCateByBcname(fenye);
		Integer selectBookCateByBcnameTotal = bookCateMapper.selectBookCateByBcnameTotal(fenye);
		fenye.setRows(selectBookCateByBcname);
		fenye.setTotal(selectBookCateByBcnameTotal);
		return fenye;
	}


	@Override
	public Integer addBookCate(BookCate bookCate) {
		// TODO Auto-generated method stub
		return bookCateMapper.addBookCate(bookCate);
	}

	@Override
	public Integer updateBookCate(BookCate bookCate) {
		// TODO Auto-generated method stub
		return bookCateMapper.updateBookCate(bookCate);
	}

	@Override
	public Integer delBookCate(Integer id) {
		// TODO Auto-generated method stub
		return bookCateMapper.delBookCate(id);
	}

}
