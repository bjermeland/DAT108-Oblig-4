<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Logg inn</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous" />
<link rel="stylesheet" href="css/index.css" />
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 mt-5">
				<h4>Logg inn</h4>
				<form method="post">
					<p class="mt-4" style="color: red">${feilmelding}</p>
					<div class="form-group mt-5">
						<label for="mobilnummer">Mobilnummer</label> <input type="tel"
							class="form-control" id="mobilnummer" name="mobil"
							placeholder="Mobilnummer" required minlength="8" maxlength="8" />
					</div>
					<div class="form-group">
						<label for="passord">Passord</label> <input type="password"
							class="form-control" id="passord" name="passord"
							placeholder="Passord" required />
					</div>
					<button type="submit" class="btn btn-primary">Logg inn</button>
					<br />
					<br />
					<p>
						Ikke påmeldt? <a href="paamelding">Meld deg på</a>
					</p>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
