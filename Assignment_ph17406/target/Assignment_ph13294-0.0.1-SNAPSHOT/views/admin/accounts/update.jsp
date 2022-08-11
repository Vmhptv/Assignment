<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
		<header>
			<img
				src="https://scontent.fhan2-1.fna.fbcdn.net/v/t1.15752-9/270852008_1108598046560184_4437319082647663908_n.png?stp=dst-png_s552x414&_nc_cat=101&ccb=1-7&_nc_sid=aee45a&_nc_ohc=CQMN79pmBm4AX9wG3bE&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fhan2-1.fna&oh=03_AVLSXxu-Cfw1W1hehIE3DaXVS1BIr7cq_UH1Mn-sc8PbRw&oe=62BE2CAE"
				class="card-img-top" style="height: 300px;">
		</header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Home</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page"
							href="/Assignment_ph17470/admin/accounts/index">All Accounts</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/Assignment_ph17470/admin/accounts/create">Add New
								Account</a></li>
					</ul>
				</div>
			</div>
		</nav>


		<div class="row justify-content-center py-5">
			<form:form method="POST" modelAttribute="account"
				action="/Assignment_ph17470/admin/accounts/store">
				<form:hidden path="id" />

				<div class="mb-3">
					<label>Username</label>
					<form:input name="username" path="username" class="form-control" />
					<form:errors path="username" class="text-danger" />
				</div>
				<div class="mb-3">
					<label>Password</label>
					<form:input name="password" path="password" class="form-control" />
					<form:errors path="password" class="text-danger" />
				</div>
				<div class="mb-3">
					<label>Fullname</label>
					<form:input name="fullname" path="fullname" class="form-control" />
					<form:errors path="fullname" class="text-danger" />
				</div>
				<div class="mb-3">
					<label>Email</label>
					<form:input name="email" path="email" class="form-control" />
					<form:errors path="email" class="text-danger" />
				</div>
				<div class="mb-3">
					<label>Photo</label>
					<form:input name="photo" path="photo" class="form-control" />
					<form:errors path="photo" class="text-danger" />
				</div>
				<div>
					<label>Admin</label>
					<form:select path="admin">
						<form:option value="0">Member</form:option>
						<form:option value="1">Admin</form:option>
					</form:select>
				</div>

				<button type="submit" class="btn btn-primary">Submit</button>
			</form:form>
		</div>
		<footer class="bg-secondary text-white row ">
			<div class="col-4">
				<h4 class="eyebrow mb-1">Company</h4>
				<ul class="menu-list-item ">
					<li class="menu-list-item ">Our story</li>
					<li class="menu-list-item">Careers</li>
					<li class="menu-list-item">Press</li>
					<li class="menu-list-item">Contact</li>
				</ul>
			</div>
			<div class="col-4">
				<h4 class="eyebrow mb-1">Help Center</h4>
				<ul class="menu-list-item ">
					<li class="menu-list-item ">Our story</li>
					<li class="menu-list-item">Careers</li>
					<li class="menu-list-item">Press</li>
					<li class="menu-list-item">Contact</li>
				</ul>
			</div>
			<div class="col-4">
				<h4 class="eyebrow mb-1">Return</h4>
				<ul class="menu-list-item ">
					<li class="menu-list-item ">Return Address: Chuu En,</li>
					<li class="menu-list-item">3F, 55 Solmae-ro 50-gil,</li>
					<li class="menu-list-item">Gangbuk-gu, Seoul, Korea 01158</li>
					<li class="menu-list-item">> View Delivery Details</li>
				</ul>
			</div>
		</footer>
	</div>
</body>
</html>