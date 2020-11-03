package no.hvl.dat108;

import javax.ejb.EJB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import no.hvl.dat108.Utils.PassordUtil;
import no.hvl.dat108.Utils.Validering;
import static no.hvl.dat108.UrlMap.*;

@WebServlet("/paamelding")
public class PaameldingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	private DeltagerListeEAO deltagerListeEAO;
	private DeltagerListe deltagere;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("WEB-INF/paamelding.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Validering val = new Validering(request);

		request.setAttribute("validering", val);
		
		System.out.println(val.erFornavnGyldig());
		System.out.println(val.erEtternavnGyldig());
		System.out.println(val.erMobilGyldig());
		System.out.println(val.erPassordGyldig());
		System.out.println(val.erKjonnGyldig());

		if (val.erGyldig()) {
			String hashetpw = PassordUtil.krypterPassord(request.getParameter("passord"));

			deltagere = deltagerListeEAO.getDeltagere();
			List<Deltager> deltagerListe = deltagere.getDeltagerListe();
			
			Deltager d = deltagerListe.stream().filter(i -> i.getMobil().equals(val.getMobil())).findAny().orElse(null);
			if(d != null) {
				request.setAttribute("feilmelding", "Mobilnummer er allerede registrert.");
				request.getRequestDispatcher("WEB-INF/paamelding.jsp").forward(request, response);
			} else {
				
				Deltager deltager = new Deltager(val.getMobil(), val.getFornavn(), val.getEtternavn(), val.getKjonn(), hashetpw,
						deltagere);

				deltagere.leggTilDeltager(deltager);
				deltagerListeEAO.oppdaterDeltagerListe(deltagere);

				request.getSession().setAttribute("fornavn", request.getParameter("fornavn"));
				request.getSession().setAttribute("etternavn", request.getParameter("etternavn"));
				request.getSession().setAttribute("mobil", request.getParameter("mobil"));
				request.getSession().setAttribute("kjonn", request.getParameter("kjonn"));

				request.getRequestDispatcher("WEB-INF/paameldingsbekreftelse.jsp").forward(request, response);
				
			}


		} else {
			request.getSession().setAttribute("feilmelding", "Ugyldig inntastet data, prøv igjen.");
			response.sendRedirect(PAAMELDING_URL);
		}
			

	}

}
