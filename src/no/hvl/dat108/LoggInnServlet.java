package no.hvl.dat108;

import java.io.IOException;
import java.util.Comparator;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import no.hvl.dat108.Utils.PassordUtil;
import static no.hvl.dat108.UrlMap.*;

@WebServlet("/logginn")
public class LoggInnServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	private DeltagerListeEAO deltagerListeEAO;
	private DeltagerListe deltagere;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("WEB-INF/logginn.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		deltagere = deltagerListeEAO.getDeltagere();
		List<Deltager> deltagerListe = deltagere.getDeltagerListe();

		String mobil = request.getParameter("mobil");
		String passord = request.getParameter("passord");

		Deltager deltager = deltagerListe.stream().filter(i -> i.getMobil().equals(mobil)).findAny().orElse(null);

		if (deltager != null && PassordUtil.sjekkPassord(passord, deltager.getHashpassord())) {
			request.getSession().setAttribute("mobil", mobil);
			response.sendRedirect(LISTE_URL);
		} else {
			request.getSession().setAttribute("feilmelding", "Ugyldig brukernavn og/eller passord");
			response.sendRedirect(LOGGINN_URL);
		}

	}

}
