<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="title" scope="session" value="title"/>
<c:set var="heading" scope="session" value="header"/>
<c:set var="author" scope="session" value="JS Caughlin"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 11/21/17
  Time: 11:40 AM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/partials/head.jsp"/>

<jsp:include page="/partials/header.jsp"/>

<jsp:include page="admin_reports.jsp"/>

<jsp:include page="/partials/footer.jsp"/>

