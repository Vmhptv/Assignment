<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

</head>
<body>
		<div class="container">
	<div class="row">
	
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
				</div>
			</div>
		</nav>
	</div>
		<h1 style="text-align: center; color: black;">Quản lý OrderDetail</h1>
		<div class="row">
			<div class="col-9">
				<table class="table table-striped  table-responsive">
					<thead>
						<tr>
							<th >ID</th>
							<th>order_id</th>
							<th >product_id</th>
							<th>price</th>
							<th>quantity</th>
							<th colspan="2">Thao Tác</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ data.content }" var="orderdetail">
							<tr>
								<td>${orderdetail.id }</td>
								<td>${ orderdetail.orderId }</td>
								<td>${ orderdetail.productId}</td>
								<td>${ orderdetail.price }</td>
								<td>${ orderdetail.quantity }</td>
								<td><a
									href="/Assignment_ph17470/admin/orderdetails/update/${orderdetail.id}"><button
											class="btn btn-primary">Sửa</button></a></td>
								<td><a
									href="/Assignment_ph17470/admin/orderdetails/delete/${orderdetail.id}"><button
											class="btn btn-danger">Xóa</button></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a class="page-link"
						href="/Assignment_ph17470/admin/orderdetails/index?page=0&size=10">1</a></li>
					<li class="page-item"><a class="page-link"
						href="/Assignment_ph17470/admin/orderdetails/index?page=1&size=10">2</a></li>
					<li class="page-item"><a class="page-link"
						href="/Assignment_ph17470/admin/orderdetails/index?page=2&size=10">3</a></li>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
		</div>
	</div>

</body>
</html>