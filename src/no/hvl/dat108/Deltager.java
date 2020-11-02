package no.hvl.dat108;

import javax.persistence.*;

@Entity
@Table(name = "deltager", schema = "oblig4")
public class Deltager {
	
	@Id
	@Column(name = "mobil")
	private String mobil;
	@Column(name = "fornavn")
	private String fornavn;
	@Column(name = "etternavn")
	private String etternavn;
	@Column(name = "kjonn")
	private String kjonn;
	@Column(name = "hashpassord")
	private String hashpassord;
	
	@ManyToOne
    @JoinColumn(name="deltagerliste_id" , referencedColumnName = "id")
    private DeltagerListe deltagerliste;
	
	// needs to have empty constructor, else error
	public Deltager() {
		
	}
	
	public Deltager(String mobil, String fornavn, String etternavn, String kjonn, String hashpassord, DeltagerListe deltagerliste) {
		super();
		this.mobil = mobil;
		this.fornavn = fornavn;
		this.etternavn = etternavn;
		this.kjonn = kjonn;
		this.hashpassord = hashpassord;
		this.deltagerliste = deltagerliste;
	}
	

	public String getMobil() {
		return mobil;
	}

	public void setMobil(String mobil) {
		this.mobil = mobil;
	}
	
	public String getFornavn() {
		return fornavn;
	}

	public void setFornavn(String fornavn) {
		this.fornavn = fornavn;
	}
	
	public String getEtternavn() {
		return etternavn;
	}

	public void setEtternavn(String etternavn) {
		this.etternavn = etternavn;
	}

	public String getKjonn() {
		return kjonn;
	}

	public void setKjonn(String kjonn) {
		this.kjonn = kjonn;
	}

	public String getHashpassord() {
		return hashpassord;
	}

	public void setHashpassord(String hashpassord) {
		this.hashpassord = hashpassord;
	}
}
