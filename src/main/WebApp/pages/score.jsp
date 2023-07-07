<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
  <title>Quiz Score</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
    }
    
    #container {
      width: 400px;
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
      text-align: center;
      margin-bottom: 20px;
    }
    
    #score {
      font-size: 24px;
      font-weight: bold;
      color: #4CAF50;
      text-align: center;
      margin-bottom: 20px;
    }
    
    #congrats {
      font-size: 20px;
      font-weight: bold;
      color: #333;
      text-align: center;
    }
    
    #try-again {
      text-align: center;
    }
    
    a {
      text-decoration: none;
      color: #4CAF50;
    }
    
    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div id="container">
    <h1>Quiz Score</h1>
    <p>User Name: ${username}</p>
    <p id="score">Score: ${score}</p>
   <%-- Congratulatory message based on score --%>
  <% int score = (int) request.getAttribute("score"); %>
    <% if (score >= 4) { %>
      <p id="congrats">Congratulations! You did an excellent job!</p>
    <% } else if (score >= 3) { %>
      <p id="congrats">Good job! You passed the quiz!</p>
    <% } else { %>
      <p id="congrats">Keep practicing! You can do better next time!</p>
    <% } %>
    <div id="try-again">
      <p>Want to try again? <a href="home">Start a new quiz</a></p>
    </div>
  </div>
</body>
</html>
