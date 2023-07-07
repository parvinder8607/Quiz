<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Quiz</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
    }
    
    #container {
      width: 600px;
      margin: 100px auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    
    h1 {
      text-align: center;
      color: #333;
    }
    
    p {
      font-size: 18px;
      line-height: 1.5;
      margin-bottom: 20px;
    }
    
    #timer {
      text-align: right;
      font-size: 16px;
      color: #555;
    }
    
    #options {
      display: flex;
      flex-direction: column;
      margin-bottom: 20px;
    }
    
    label {
      display: block;
      margin-bottom: 10px;
    }
    
    input[type="radio"] {
      margin-right: 10px;
    }
    
    input[type="submit"] {
      width: 100%;
      background-color: #4CAF50;
      color: white;
      padding: 10px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
    }
    
    input[type="submit"]:hover {
      background-color: #45a049;
    }
  </style>
  <script>
    var secondsLeft = 60; // Change the time limit as per your requirement

    function countdown() {
      var timerElement = document.getElementById("timer");
      timerElement.innerHTML = secondsLeft + "s";
      secondsLeft--;
      
      if (secondsLeft < 0) {
        clearTimeout(timer);
        document.getElementById("quizForm").submit();
      } else {
        var timer = setTimeout(countdown, 1000);
      }
    }
 // Disable browser back button
    history.pushState(null, null, location.href);
    window.onpopstate = function () {
        history.go(1);
    };

  </script>
</head>
<body onload="countdown()">
  <div id="container">
    <h1>Quiz</h1>
    <p>Question 2:What annotation is used to declare a class as a Spring Boot application?</p>
    <form id="quizForm" action="ques_3" method="post">
      <div id="options">
        <label>
          <input type="radio" name="answer" value="a">
          a) @SpringApplication
        </label>
        <label>
          <input type="radio" name="answer" value="b">
 		  b) @SpringBootApp
          
        </label>
        <label>
          <input type="radio" name="answer" value="c">
		  c) @SpringBootConfig
        
        </label>
        <label>
          <input type="radio" name="answer" value="d">
		  d) @SpringBootApplication
          
        </label>
      </div>
      <p id="timer"></p>
      <input type="submit" value="Next">
    </form>
  </div>
</body>
</html>
