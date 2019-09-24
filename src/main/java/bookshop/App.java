package bookshop;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@MapperScan("bookshop.com.yy.dao")
@EnableJpaRepositories("bookshop.com.yy.bookrepository")
public class App {
public static void main(String[] args) {
	
	SpringApplication.run(App.class, args);
}
}
