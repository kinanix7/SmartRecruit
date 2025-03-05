<%--
  Created by IntelliJ IDEA.
  User: youne
  Date: 3/5/2025
  Time: 11:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register New Candidate</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2>Register New Candidate</h2>
    <form action="CandidateController" method="post">
        <input type="hidden" name="action" value="create">

        <div class="form-group">
            <label for="nom">Last Name</label>
            <input type="text" class="form-control" id="nom" name="nom" required>
        </div>

        <div class="form-group">
            <label for="prenom">First Name</label>
            <input type="text" class="form-control" id="prenom" name="prenom" required>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>

        <div class="form-group">
            <label for="telephone">Phone</label>
            <input type="tel" class="form-control" id="telephone" name="telephone">
        </div>

        <button type="submit" class="btn btn-primary">Register Candidate</button>
    </form>
</div>
</body>
</html>