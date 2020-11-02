package no.hvl.dat108;

import java.io.IOException;
import java.util.List;
import java.util.Collections;
import java.util.Comparator;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import static no.hvl.dat108.UrlMap.LOGGINN_URL;

@WebServlet("/deltagerliste")
public class DeltagerListeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	private DeltagerListeEAO deltagerListeEAO;
	private DeltagerListe deltagere;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String sessionMobil = (String) request.getSession().getAttribute("mobil");
		request.getSession().setAttribute("feilmelding", "");
		
		if (sessionMobil != null) {

			deltagere = deltagerListeEAO.getDeltagere();
			List<Deltager> deltagerListe = deltagere.getDeltagerListe();

			deltagerListe.sort(Comparator.comparing(Deltager::getFornavn).thenComparing(Deltager::getEtternavn));

			request.getSession().setAttribute("deltagerliste", deltagerListe);
			request.getRequestDispatcher("WEB-INF/deltagerliste.jsp").forward(request, response);

		} else {
			request.getSession().setAttribute("feilmelding", "Det er kun registrerte deltagere som får se deltagerlisten, vennligst logg inn.");
			response.sendRedirect(LOGGINN_URL);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
