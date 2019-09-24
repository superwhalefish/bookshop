package bookshop.com.yy.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bookshop.com.yy.dao.BookMapper;
import bookshop.com.yy.entity.Book;
import bookshop.com.yy.entity.Fenye;

@Service
public class BookServiceBookService implements BookService {
	private static final int maxLength = 5;

	/** �漴���� */
	private static final int[] code = new int[] { 7, 9, 6, 2, 8, 1, 3, 0, 5, 4 };

	/**
	 * ����id���м���+���������ɹ̶����ȱ���
	 */
	private static String toCode(Long id) {
		String idStr = id.toString();
		StringBuilder idsbs = new StringBuilder();
		for (int i = idStr.length() - 1; i >= 0; i--) {
			idsbs.append(code[idStr.charAt(i) - '0']);
		}
		return idsbs.append(getRandom(maxLength - idStr.length())).toString();
	}

	/**
	 * ����ʱ���
	 */
	private static String getDateTime() {
		DateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		return sdf.format(new Date());
	}

	/**
	 * ���ɹ̶����������
	 * 
	 * @param len ����
	 */
	private static long getRandom(long len) {
		long min = 1, max = 9;
		for (int i = 1; i < len; i++) {
			min *= 10;
			max *= 10;
		}
		long rangeLong = (((long) (new Random().nextDouble() * (max - min)))) + min;
		return rangeLong;
	}

	/**
	 * ���ɲ�������ͷ�ı���
	 * 
	 * @param id
	 */
	private static synchronized String getCode() {
		// id = id == null ? 1000 : id;
		int count = 0;
		String result = "";
		try {
			Random random = new Random();
			for (int i = 0; i < 100; i++) {
				count = random.nextInt(51) + 10;
			}
			result = getDateTime() + toCode(Long.valueOf(count));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Autowired
	private BookMapper bookMapper;

	public Fenye<Book> selectByNameOrBcname(Fenye<Book> fenye) {
		// TODO Auto-generated method stub
		List<Book> selectByNameOrBcname = bookMapper.selectByNameOrBcname(fenye);
		Integer selectTotalByNameOrBcname = bookMapper.selectTotalByNameOrBcname(fenye);
		fenye.setTotal(selectTotalByNameOrBcname);
		fenye.setRows(selectByNameOrBcname);
		return fenye;
	}

	@Override
	public Integer updateBook(Book book) {
		// TODO Auto-generated method stub
		return bookMapper.updateBook(book);
	}

	@Override
	public Integer addBook(Book book) {
		// TODO Auto-generated method stub
		book.setBcommentid(getCode());
		return bookMapper.addBook(book);
	}

	public Integer del(Integer id) {
		return bookMapper.del(id);
	}

	@Override
	public List<Book> selectRandTwoBook() {
		// TODO Auto-generated method stub
		return bookMapper.selectRandTwoBook();
	}

}
