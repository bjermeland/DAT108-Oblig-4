<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Påmeldingsbekreftelse</title>
        <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
            crossorigin="anonymous"
        />
        <link rel="stylesheet" href="css/index.css" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-12 mt-5">
                    <h4>Påmeldingsbekreftelse</h4>
                    <br />
                    <p>Påmeldingen er mottatt for:</p>
                    <span><c:out value="${fornavn}"/> <c:out value="${etternavn}"/></span>
                    <span><c:out value="${mobil}"/></span>
                    <span style="text-transform: capitalize"><c:out value="${kjonn}"/></span>
                    <br />
                    <br />
                    <a class="mt-3" href="deltagerliste">Gå til deltagerlisten</a>
                </div>
            </div>
        </div>
    </body>
</html>

