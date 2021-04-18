<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <script>
    window.onload = function(){
      var btn = document.querySelector('#btn');
      var check = false;

      btn.onclick = function(){
        if(!check){
          this.style.backgroundColor = 'gold';
          check = true;
        }else{
          this.style.backgroundColor ='blue';
          check = false;
        }
      }
    }
  </script>
  <style>
    div{padding: 20px; border: 1px solid;}
  </style>
</head>
<body>
  <div id="btn">계속 클릭</div>
 
</html> 