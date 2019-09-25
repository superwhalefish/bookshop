package bookshop;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.scheduling.annotation.EnableAsync;

@SpringBootApplication
@MapperScan("bookshop.com.yy.dao")
@EnableJpaRepositories("bookshop.com.yy.bookrepository")
@EnableAsync
public class App {
public static void main(String[] args) {
	
	SpringApplication.run(App.class, args);
}
}
