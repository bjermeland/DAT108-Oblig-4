<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Deltagerliste</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous" />
<link rel="stylesheet" href="css/index.css" />
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12 mt-5 mb-5">
				<h4>Deltagerliste</h4>
				<br />
				<table class="table col-md-6">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Kjønn</th>
							<th scope="col">Navn</th>
							<th scope="col">Mobil</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${deltagerliste}" var="deltager">
							<tr
								bgcolor="${deltager.mobil eq mobil ? '#8adf57' : '#fff'}">
								<td><c:choose>
										<c:when test="${deltager.kjonn eq 'mann'}">
											<span class="align-icon-center">&#9894;</span>
										</c:when>
										<c:when test="${deltager.kjonn eq 'kvinne'}">
											<span class="align-icon-center">&#9792;</span>
										</c:when>
									</c:choose></td>
								<td><c:out value="${deltager.fornavn}" /> <c:out
										value="${deltager.etternavn}" /></td>
								<td><c:out value="${deltager.mobil}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<br /> <a class="mt-5" href="loggut">Ferdig</a>
			</div>
		</div>
	</div>
</body>
</html>