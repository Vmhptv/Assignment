<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<title>Account</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Huongdx_Menu</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Accounts</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item"
								href="/Assignment_ph17470/admin/accounts/create">Create</a></li>
							<li><a class="dropdown-item"
								href="/Assignment_ph17470/admin/accounts/index">List Accounts</a></li>
						</ul></li>
				</ul>
				<ul class="navbar-nav me-auto mb-2mb-lg-0 ">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Categories</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item"
								href="/Assignment_ph17470/admin/categories/create">Create</a></li>
							<li><a class="dropdown-item"
								href="/Assignment_ph17470/admin/categories/index">List
									Categories</a></li>
						</ul></li>
				</ul>
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Products</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item"
								href="/Assignment_ph17470/admin/products/create">Create</a></li>
							<li><a class="dropdown-item"
								href="/Assignment_ph17470/admin/products/index">List Products</a></li>
						</ul></li>
				</ul>
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Orders</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item"
								href="/Assignment_ph17470/admin/orders/create">Create</a></li>
							<li><a class="dropdown-item"
								href="/Assignment_ph17470/admin/orders/index">List Orders</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<h1 style="text-align: center; color: black;">Quan ly order</h1>
	<div class="col-6 offset-3">
		<div class="row justify-content-center py-5">
			<form:form method="POST" modelAttribute="order"
				action="/Assignment_ph17470/admin/orders/store">
				<div class="mb-3">
					<label>User ID</label>
					<form:select class="form-select" path="userId">
						<form:options items="${accounts}" itemLabel="id"></form:options>
					</form:select>
				</div>
				<div class="  mb-3">
					<label class="mb-2">Create Date</label>
					<form:input name="createDate" path="createDate"
						class="form-control" />
					<form:errors path="createDate" class="text-danger" />
				</div>
				<div class="mb-3">
					<label class="mb-2">Address</label>
					<form:input name="address" path="address" class="form-control" />
					<form:errors path="address" class="text-danger" />
				</div>

				<button type="submit" class="btn btn-success">Create</button>
			</form:form>
		</div>
	</div>
</body>
</html>