<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/5/17
  Time: 1:30 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<fieldset>
    <form class="form-signin" method="post" action="/login.jsp">
        <h2 class="form-signin-heading">Create an Account</h2>

        <!-- User Email-->
        <label for="userEmail" class="sr-only">Password</label>
        <input type="email" class="form-control" id="userEmail" placeholder="Email address" required autofocus>

        <!--User password-->
        <label for="userpassword" class="sr-only">Create Password:</label>
        <input type="password" class="form-control" id="userPassword" placeholder="Password" required>

        <!--User password-->
        <label for="userPasswordVerify" class="sr-only">Verify Password:</label>
        <input type="password" class="form-control" id="userPasswordVerify" placeholder="Verify Password" required>

        <div class="checkbox">
            <label>
                <input type="checkbox" value="Remember Me">
                <span>Remember Me</span>
            </label>
        </div>

        <!--Submit Button-->
        <input type="submit" class="btn btn-success" value="Sign Up Now">

    </form>
</fieldset>


