package java.formatter.hook;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class JavaFormatterHookApplication {

    public static void main(String[] args) {
        SpringApplication.run(JavaFormatterHookApplication.class, args);
    }

    @Bean
    public CommandLineRunner runner() {
        return (String[] args) -> {
            System.out.println("Hello");

            System.out.println("h");
            // haha
        };
    }

}
