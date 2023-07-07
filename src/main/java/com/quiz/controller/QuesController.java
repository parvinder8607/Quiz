package com.quiz.controller;

import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.User.UserDetail;

@Controller
public class QuesController {
	QuizController User2 = new QuizController();
	UserDetail User1 = User2.User1;
//	 int score =0;
//	 
//	@PostMapping("ques_1")
//	public String ques_1() {
//		return "ques_1";
//	}
//	
//	@PostMapping("ques_2")
//	public String ques_2(@RequestParam String answer, ModelMap modelMap) {
//		System.out.println(answer);
//		if(answer.equals("b")) {
//			score++;
//			User1.setScore(score);
//			
//			System.out.println("Correct Answer with Score"+ score);
//		}
//		return "ques_2";
//	}
//	
//	@PostMapping("ques_3")
//	public String ques_3(@RequestParam String answer, ModelMap modelMap) {
//		System.out.println(answer);
//		if(answer.equals("a")) {
//			score++;
//			User1.setScore(score);
//			System.out.println("Correct Answer with Score"+ score);
//		}
//		return "ques_3";
//	}
//	
//	@PostMapping("ques_4")
//	public String ques_4(@RequestParam String answer, ModelMap modelMap) {
//		System.out.println(answer);
//		if(answer.equals("a")) {
//			score++;
//			User1.setScore(score);
//			System.out.println("Correct Answer with Score"+ score);
//		}
//		return "ques_4";
//	}
//	
//	@PostMapping("ques_5")
//	public String ques_5(@RequestParam String answer, ModelMap modelMap) {
//		System.out.println(answer);
//		if(answer.equals("a")) {
//			score++;
//			User1.setScore(score);
//			System.out.println("Correct Answer with Score"+ score);
//		}
//		return "ques_5";
//	}
//	

}
