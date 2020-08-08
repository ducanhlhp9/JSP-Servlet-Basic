<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Đăng nhập</title>
   </head>
   <body>
      <div class="container h-100">
         <div class="d-flex justify-content-center h-100">
            <div class="user_card">
          	  <c:if test="${not empty message}">
               		 <div class="alert alert-${alert}">
                  <strong>${message}</strong> 
               </div>
               </c:if>
              
               
               <div class="d-flex justify-content-center form_container" style ="margin-top:20px ">
                  <form action="<c:url value ='/dang-nhap'/>" id="formLogin"
                     method="post">
                     <div class="input-group mb-3">
                        <div class="input-group-append">
                           <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="text" name="userName" id ="userName" class="form-control input_user"
                           value="" placeholder="username" >
                     </div>
                     <div class="input-group mb-2">
                        <div class="input-group-append">
                           <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input type="password" name="password" id = "password" class="form-control input_pass"
                           value="" placeholder="password">
                     </div>
                     <input type="hidden" value="login" name ="action">
                     <div class="d-flex justify-content-center mt-3 login_container">
                        <button type="submit" name="button" class="btn login_btn">Login</button>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </body>
</html>