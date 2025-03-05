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
    <title>Job Offers</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2>Job Offers</h2>
    <a href="JobOfferController?action=new" class="btn btn-primary mb-3">Create New Job Offer</a>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Company</th>
            <th>Publication Date</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="offer" items="${listJobOffers}">
            <tr>
                <td>${offer.titre}</td>
                <td>${offer.description}</td>
                <td>${offer.entreprise}</td>
                <td>${offer.datePublication}</td>
                <td>${offer.statut}</td>
                <td>
                    <a href="JobApplicationController?action=list&jobOfferId=${offer.id}" class="btn btn-info btn-sm">View Applications</a>
                    <a href="JobOfferController?action=apply&jobOfferId=${offer.id}" class="btn btn-success btn-sm">Apply</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>