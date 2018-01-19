package amine.elkhoumissi.ecommerce.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

@Entity
@Table(name = "AdressesLivraion")
public class AdresseLivraison implements Serializable {

	private static final long serialVersionUID = 7551999649936522523L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long idAdresseLivraison;

	private String adresseLivr;
	private String ville;
	private String region;
	private String codePostal;
	private String pays;

	@OneToOne(mappedBy = "adresseLivraison")
	private Client client;

	

	public Long getIdAdresseLivraison() {
		return idAdresseLivraison;
	}

	public void setIdAdresseLivraison(Long idAdresseLivraison) {
		this.idAdresseLivraison = idAdresseLivraison;
	}

	public String getAdresseLivr() {
		return adresseLivr;
	}

	public void setAdresseLivr(String addressLivr) {
		this.adresseLivr = addressLivr;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String région) {
		this.region = région;
	}

	public String getCodePostal() {
		return codePostal;
	}

	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}

	public String getPays() {
		return pays;
	}

	public void setPays(String pays) {
		this.pays = pays;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	

}
