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
    <title>Create Job Offer</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2>Create New Job Offer</h2>
    <form action="JobOfferController" method="post">
        <input type="hidden" name="action" value="create">

        <div class="form-group">
            <label for="titre">Job Title</label>
            <input type="text" class="form-control" id="titre" name="titre" required>
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
        </div>

        <div class="form-group">
            <label for="entreprise">Company</label>
            <input type="text" class="form-control" id="entreprise" name="entreprise" required>
        </div>

        <div class="form-group">
            <label for="datePublication">Publication Date</label>
            <input type="date" class="form-control" id="datePublication" name="datePublication" required>
        </div>

        <button type="submit" class="btn btn-primary">Create Job Offer</button>
    </form>
</div>
</body>
</html>