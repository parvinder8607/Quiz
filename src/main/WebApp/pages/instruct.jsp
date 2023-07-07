<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Quiz Instructions</title>
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
</head>
<body>
  <div id="container">
    <h1>Quiz Instructions</h1>
    <p>Welcome ${username} to the quiz! Please read the following instructions:</p>
    <ol>
      <li>This quiz consists of multiple-choice questions.</li><br>
      <li>Select the most appropriate answer for each question.</li><br>
      <li>You will have a limited amount of time to complete the quiz.</li><br>
      <li>Once you submit your answers, you will not be able to change them.</li><br>
    </ol>
    <form action="ques_1" method="post">
      <input type="submit" value="Next">
    </form>
  </div>
</body>
</html>
