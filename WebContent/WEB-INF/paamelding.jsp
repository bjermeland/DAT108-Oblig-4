<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Påmelding</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/index.css" />
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 mt-5">
				<h4>Påmelding</h4>
				<p style="color: red">${feilmelding}</p>
				<form id="form" action="paamelding" method="post"
					class="was-validated">
					<div class="form-group mt-5">
						<label for="fornavn">Fornavn</label> <input name="fornavn"
							type="text" class="form-control" id="fornavn"
							placeholder="Fornavn" required minlength="2" maxlength="20"
							pattern="[A-Z][A-z]*" />
					</div>
					<div class="form-group">
						<label for="etternavn">Etternavn</label> <input name="etternavn"
							type="text" class="form-control" id="etternavn"
							placeholder="Etternavn" required minlength="2" maxlength="20"
							pattern="[A-Z][A-z0-9_-]*" />
					</div>
					<div class="form-group">
						<label for="mobilnummer">Mobilnummer</label> <input name="mobil"
							type="tel" class="form-control" id="mobilnummer"
							placeholder="Mobilnummer" required minlength="8" maxlength="8" />
					</div>
					<div class="form-group">
						<label for="passord">Passord</label>
						<button type="button" class="btn btn-link password-tooltip"
							data-toggle="tooltip" data-placement="top"
							title="Passord skal inneholde minst 8 tegn.">?</button>
						<input name="passord" type="password" class="form-control" id="passord"
							placeholder="Passord" required minlength="8" data-passord1
							oninput="checkpasswordstrength()" />
						<small data-passord-strength></small>
					</div>
					<div class="form-group">
						<label for="passord2">Repeter passord</label> <input name="passord2"
							type="password" class="form-control is-invalid" id="passord2"
							placeholder="Repeter passord" required minlength="8"
							onchange="checkpassword()" data-passord2 />
						<small class="hide" style="color: red" data-passord-error>Passord
							stemmer ikke overens.</small>
					</div>
					<div class="form-group">
						<label for="kjonn">Kjønn</label> <br /> <input type="radio"
							name="kjonn" value="mann" required />Mann
						<input type="radio" name="kjonn" value="kvinne" required />Kvinne
					</div>
					<button id="submitBtn" type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#confirmModal" disabled>
						Påmeld</button>
					<!-- Modal -->
					<div class="modal fade" id="confirmModal" tabindex="-1"
						role="dialog">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title">Bekreft</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">Er du sikker på at du vil melde
									deg på?</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">
										Avbryt</button>
									<button type="submit" class="btn btn-primary">
										Påmeld</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script src="js/validation.js" defer></script>
</body>
</html>
