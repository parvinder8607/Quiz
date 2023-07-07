package com.quiz;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.quiz.User.UserDetail;

@SpringBootApplication
public class QuizApplication {
	UserDetail User1 = new UserDetail();

	public static void main(String[] args) {
		SpringApplication.run(QuizApplication.class, args);
	}

}
