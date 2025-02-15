<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/8/17
  Time: 1:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<fieldset>
    <form id="newUser" class="new-user-form forms" method="post" action="addUser" enctype="multipart/form-data">
        <h2 class="form-signin-heading">Hey There ${userName}! Create an Account</h2>

        <div class="row">
            <!-- User First Name-->
            <div class="col-6">
                <label for="userFirstName" class="sr-only">Enter First Name</label>
                <input type="text" class="form-control" id="userFirstName" name="firstname"
                       placeholder="Enter First Name">
            </div>
            <!--User Last Name-->
            <div class="col-6">
                <label for="userLastName" class="sr-only">Enter Last Name</label>
                <input type="text" class="form-control" id="userLastName" name="lastname" placeholder="Enter Last Name">
            </div>
        </div>


        <!--User Street Address-->
        <div class="row">
            <label for="userStreetAddress" class="sr-only">Street Addres</label>
            <input type="address" class="form-control" id="userStreetAddress" name="address"
                   placeholder="Street Address">
        </div>

        <!--User City-->
        <div class="row">
            <div class="col-6">
                <label for="userCity" class="sr-only">Enter City</label>
                <input type="text" class="form-control" id="userCity" name="city" placeholder="Enter City">
            </div>

            <!--User State-->
            <div class="col-3">
                <label for="userState" class="sr-only">State</label>
                <select class="custom-select" id="userState" name="state">
                    <option value="" selected="selected">State</option>
                    <option value="AL">Alabama</option>
                    <option value="AK">Alaska</option>
                    <option value="AZ">Arizona</option>
                    <option value="AR">Arkansas</option>
                    <option value="CA">California</option>
                    <option value="CO">Colorado</option>
                    <option value="CT">Connecticut</option>
                    <option value="DE">Delaware</option>
                    <option value="DC">District Of Columbia</option>
                    <option value="FL">Florida</option>
                    <option value="GA">Georgia</option>
                    <option value="HI">Hawaii</option>
                    <option value="ID">Idaho</option>
                    <option value="IL">Illinois</option>
                    <option value="IN">Indiana</option>
                    <option value="IA">Iowa</option>
                    <option value="KS">Kansas</option>
                    <option value="KY">Kentucky</option>
                    <option value="LA">Louisiana</option>
                    <option value="ME">Maine</option>
                    <option value="MD">Maryland</option>
                    <option value="MA">Massachusetts</option>
                    <option value="MI">Michigan</option>
                    <option value="MN">Minnesota</option>
                    <option value="MS">Mississippi</option>
                    <option value="MO">Missouri</option>
                    <option value="MT">Montana</option>
                    <option value="NE">Nebraska</option>
                    <option value="NV">Nevada</option>
                    <option value="NH">New Hampshire</option>
                    <option value="NJ">New Jersey</option>
                    <option value="NM">New Mexico</option>
                    <option value="NY">New York</option>
                    <option value="NC">North Carolina</option>
                    <option value="ND">North Dakota</option>
                    <option value="OH">Ohio</option>
                    <option value="OK">Oklahoma</option>
                    <option value="OR">Oregon</option>
                    <option value="PA">Pennsylvania</option>
                    <option value="RI">Rhode Island</option>
                    <option value="SC">South Carolina</option>
                    <option value="SD">South Dakota</option>
                    <option value="TN">Tennessee</option>
                    <option value="TX">Texas</option>
                    <option value="UT">Utah</option>
                    <option value="VT">Vermont</option>
                    <option value="VA">Virginia</option>
                    <option value="WA">Washington</option>
                    <option value="WV">West Virginia</option>
                    <option value="WI">Wisconsin</option>
                    <option value="WY">Wyoming</option>
                </select>
            </div>

            <div class="col-3">
                <label for="zipCode" class="sr-only">Enter Zip Code</label>
                <input type="text" id="zipCode" class="form-control" name="zipCode" placeholder="Zip Code">
            </div>
        </div>

        <div class="row"><!--User Email-->
            <label for="userEmail" class="sr-only">Enter Email</label>
            <input type="email" class="form-control" id="userEmail" name="email" placeholder="Enter Email Address">
        </div>

        <div class="row>">
            <div id="sandbox-container">
                <input type="text" class="form-control" placeholder="Enter Birthday"/>
            </div>
        </div>


        <!--Submit Button-->
        <div class="row">
            <div class="col-12">
                <input type="submit" class="btn btn-success" value="Sign Up Now"/>
            </div>
        </div>
    </form>
</fieldset>
<div class="row">
    <h3>${errorMessage}</h3>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.js"
        integrity="sha256-7Ls/OujunW6k7kudzvNDAt82EKc/TPTfyKxIE5YkBzg=" crossorigin="anonymous"></script>
<script src="javascript/datepicker.js"></script>
<script src="javascript/validation.js"></script>