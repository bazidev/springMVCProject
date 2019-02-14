<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="viewport" content="initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>QuickStart</title>
<style type="text/css">
.empty-table {
	color: rgb(127, 127, 127);
	text-align: center;
	margin-top: 50px;
}
</style>
</head>
<body>
<nav class="navbar navbar-dark bg-primary mb-3"> <a
		href="${pageContext.request.contextPath}/"
		class="navbar-brand">QuickStart</a> </nav>
	<div class="container-fluid">
		<br />
		<div class="row">
			<div class="col-sm-7">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Cne</th>
							<th scope="col">FullName</th>
							<th scope="col">Email</th>
							<th scope="col">Phone</th>
							<th scope="col">Op</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${students}" var="student">
						<tr>
							<th scope="row"><c:out value="${student.cne}" /></th>
							<td><c:out value="${student.studentFullName}" /></td>
							<td><c:out value="${student.studentEmail}" /></td>
							<td><c:out value="${student.studentPhone}" /></td>
							<td><a
								href="${pageContext.request.contextPath}/delete/${student.cne}"
								class="btn btn-danger">suppr</a> <a
								href="${pageContext.request.contextPath}/edit/${student.cne}"
								class="btn btn-primary">edit</span></a></td>
								</tr>
						</c:forEach>
					</tbody>
				</table>
				<c:if test="${isEmpty}">
					<h4 class="empty-table">
						<b>Student table is Empty</b>
					</h4>
				</c:if>
			</div>
			<div class="col-sm-5">
				<div class="jumbotron">
					<h4 class="text-center text-primary">New Student</h4>
					<hr>
					<f:form cssClass="form" modelAttribute="student"
						action="${pageContext.request.contextPath}/add">
						<div class="form-group">
							<f:input path="cne" type="text" name="cne"
								cssClass="form-control" placeholder="Your Cne" />
						</div>
						<div class="form-group">
							<f:input path="studentFullName" type="text"
								name="studentFullName" cssClass="form-control"
								placeholder="Full Name" />
						</div>
						<div class="form-group">
							<f:input path="studentEmail" type="text" name="studentEmail"
								cssClass="form-control" placeholder="Email" />
						</div>
						<div class="form-group">
							<f:input path="studentPhone" type="text" name="studentPhone"
								cssClass="form-control" placeholder="Phone Number" />
						</div>
						<input type="submit" value="add" class="btn btn-primary">
						<input type="reset" class="btn btn-danger">
					</f:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
