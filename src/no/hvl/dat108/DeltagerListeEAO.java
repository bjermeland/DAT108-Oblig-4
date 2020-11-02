package no.hvl.dat108;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class DeltagerListeEAO {

	@PersistenceContext(name = "oblig4PU")
	private EntityManager em;
	
	public DeltagerListe getDeltagere() {
		return em.find(DeltagerListe.class, 1);
	}
	
	public void oppdaterDeltagerListe(DeltagerListe dl) {
		em.merge(dl);
	}
	
}