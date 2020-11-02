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
        <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
            crossorigin="anonymous"
        />
        <style>
            .display {
                display: block;
            }
            .hide {
                display: none;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-6 mt-5">
                    <h4>Påmelding</h4>
                    <form
                        id="form"
                        action="paameldingsskjema"
                        method="post"
                        class="was-validated"
                        onsubmit="handleSubmit()"
                    >
                        <div class="form-group mt-5">
                            <label for="fornavn">Fornavn</label>
                            <input
                                type="text"
                                class="form-control"
                                id="fornavn"
                                placeholder="Fornavn"
                                required
                                minlength="2"
                                maxlength="20"
                                pattern="[A-Z][a-z]*"
                            />
                        </div>
                        <div class="form-group">
                            <label for="etternavn">Etternavn</label>
                            <input
                                type="text"
                                class="form-control"
                                id="etternavn"
                                placeholder="Etternavn"
                                required
                                minlength="2"
                                maxlength="20"
                                pattern="[A-Z][a-z]*"
                                pattern="^\S+$"
                            />
                        </div>
                        <div class="form-group">
                            <label for="mobilnummer">Mobilnummer</label>
                            <input
                                type="tel"
                                class="form-control"
                                id="mobilnummer"
                                placeholder="Mobilnummer"
                                required
                                minlength="8"
                                maxlength="8"
                            />
                        </div>
                        <div class="form-group">
                            <label for="passord">Passord</label>
                            <input
                                type="password"
                                class="form-control"
                                id="passord"
                                placeholder="Passord"
                                required
                                minlength="8"
                            />
                        </div>
                        <div class="form-group">
                            <label for="passord2">Repeter passord</label>
                            <input
                                type="password"
                                class="form-control is-invalid"
                                id="passord2"
                                placeholder="Repeter passord"
                                required
                                minlength="8"
                                onchange="checkpassword()"
                            />
                            <small
                                id="validate-passwords"
                                class="form-text hide"
                                style="color:red"
                                >Passwords do not match.</small
                            >
                        </div>
                        <div class="form-group">
                            <label for="kjonn">Kjønn</label>
                            <br />
                            <input
                                type="radio"
                                name="kjonn"
                                value="mann"
                                required
                            />Mann
                            <input
                                type="radio"
                                name="kjonn"
                                value="kvinne"
                                required
                            />Kvinne
                        </div>
                        <button
                            id="submitBtn"
                            type="button"
                            class="btn btn-primary"
                            data-toggle="modal"
                            data-target="#confirmModal"
                            disabled
                        >
                            Påmeld
                        </button>
                        <!-- Modal -->
                        <div
                            class="modal fade"
                            id="confirmModal"
                            tabindex="-1"
                            role="dialog"
                        >
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title">
                                            Bekreft
                                        </h5>
                                        <button
                                            type="button"
                                            class="close"
                                            data-dismiss="modal"
                                            aria-label="Close"
                                        >
                                            <span aria-hidden="true"
                                                >&times;</span
                                            >
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        Er du sikker på at du vil melde deg på?
                                    </div>
                                    <div class="modal-footer">
                                        <button
                                            type="button"
                                            class="btn btn-secondary"
                                            data-dismiss="modal"
                                        >
                                            Avbryt
                                        </button>
                                        <button
                                            type="submit"
                                            class="btn btn-primary"
                                        >
                                            Påmeld
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script
            src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"
        ></script>
    </body>
</html>

<script>
    const checkpassword = () => {
        let passord = document.getElementById('passord')
        let passord2 = document.getElementById('passord2')
        let validation = document.getElementById('validate-passwords')

        if (!isPasswordsEqual(passord, passord2)) {
            validation.classList.add('display')
            validation.classList.remove('hide')
        } else {
            validation.classList.add('hide')
            validation.classList.remove('display')
        }
    }

    const isPasswordsEqual = () => {
        let passord = document.getElementById('passord')
        let passord2 = document.getElementById('passord2')
        return (
            passord !== '' &&
            passord2 !== '' &&
            passord.value === passord2.value
        )
    }

    const handleSubmit = () => {
        console.log('123')
    }

    var kjonnChecked = document.querySelectorAll('input[type="radio"]:checked')
        .length

    let currForm1 = document.getElementById('form')
    currForm1.querySelectorAll('input').forEach(input => {
        input.addEventListener('input', () => {
            if (input.checkValidity()) {
                input.classList.remove('is-invalid')
                input.classList.add('is-valid')
            } else {
                input.classList.remove('is-valid')
                input.classList.add('is-invalid')
            }

            console.log(kjonnChecked)

            var is_valid =
                $('.form-control').length ===
                    $('.form-control.is-valid').length &&
                isPasswordsEqual() &&
                document.querySelector('input[type="radio"]:checked') != null

            $('#submitBtn').attr('disabled', !is_valid)
        })
    })
</script>
