<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Welcome to the Quiz</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f3;
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
    
    input[type="text"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
      font-size: 16px;
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
    <h1>Welcome to the Quiz!</h1>
    <form action="instruct" method="post">
      <input type="text" name="username" placeholder="Enter your name" required>
      <input type="submit" value="Start Quiz">
    </form>
  </div>
</body>
</html>
