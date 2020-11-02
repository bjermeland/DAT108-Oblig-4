package no.hvl.dat108;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class DeltagerEAO {

	@PersistenceContext(name = "oblig4PU")
	private EntityManager em;
	
	public void addDeltager(Deltager d) {
		em.persist(d);
	}
	
	public Deltager getDeltager(String mobil) {
		return em.find(Deltager.class, mobil);
	}
	
}