package com.quiz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.User.UserDetail;

@Controller
public class QuizController {
	@Autowired
	UserDetail User1 = new UserDetail();
	
	@RequestMapping("/home")
	public String home() {
		
		return "home";
	}
	
	@PostMapping("instruct")
	public String instruct(@RequestParam("username") String username,ModelMap modelMap) {
		modelMap.put("username", username);
		
		User1.setUsername(username);
		return "instruct";
	}
	static int score =0;
	 
		@PostMapping("ques_1")
		public String ques_1() {
			score = 0;
			return "ques_1";
		}
		
		@PostMapping("ques_2")
		public String ques_2(@RequestParam String answer, ModelMap modelMap) {
			System.out.println(answer);
			if(answer.equals("b")) {
				score++;
				User1.setScore(score);
				
				System.out.println("Correct Answer with Score"+ score);
			}
			return "ques_2";
		}
		
		@PostMapping("ques_3")
		public String ques_3(@RequestParam String answer, ModelMap modelMap) {
			System.out.println(answer);
			if(answer.equals("a")) {
				score++;
				User1.setScore(score);
				System.out.println("Correct Answer with Score"+ score);
			}
			return "ques_3";
		}
		
		@PostMapping("ques_4")
		public String ques_4(@RequestParam String answer, ModelMap modelMap) {
			System.out.println(answer);
			if(answer.equals("a")) {
				score++;
				User1.setScore(score);
				System.out.println("Correct Answer with Score"+ score);
			}
			return "ques_4";
		}
		
		@PostMapping("ques_5")
		public String ques_5(@RequestParam String answer, ModelMap modelMap) {
			System.out.println(answer);
			if(answer.equals("a")) {
				score++;
				User1.setScore(score);
				System.out.println("Correct Answer with Score"+ score);
			}
			return "ques_5";
		}
		
	
	@PostMapping("/score")
	public String result(@RequestParam("answer") String answer,ModelMap modelMap,Model model) {
		 if(answer.equals("a")) {
			score++;
			 User1.setScore(score);

		 }
		System.out.println(User1.getUsername());
		System.out.println(User1.getScore());
		model.addAttribute("score",User1.getScore());
		modelMap.put("username",User1.getUsername());
		modelMap.put("score", User1.getScore());
		return "score";
	}
}
