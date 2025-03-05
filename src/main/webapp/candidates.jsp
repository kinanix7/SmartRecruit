<%--
  Created by IntelliJ IDEA.
  User: youne
  Date: 3/5/2025
  Time: 11:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Candidates</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2>Candidates</h2>
    <a href="CandidateController?action=new" class="btn btn-primary mb-3">Register New Candidate</a>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Registration Date</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="candidate" items="${listCandidates}">
            <tr>
                <td>${candidate.nom}</td>
                <td>${candidate.prenom}</td>
                <td>${candidate.email}</td>
                <td>${candidate.telephone}</td>
                <td>${candidate.dateInscription}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
