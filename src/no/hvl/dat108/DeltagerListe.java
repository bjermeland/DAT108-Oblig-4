package no.hvl.dat108;

import javax.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "deltagerliste", schema = "oblig4")
public class DeltagerListe {

	@Id
	private int id;
	
	@OneToMany(mappedBy = "deltagerliste")
	private List<Deltager> list = new ArrayList<>();

	public List<Deltager> getDeltagerListe() {
		return list;
	}

	public void leggTilDeltager(Deltager deltager) {
		list.add(deltager);
	}
}
