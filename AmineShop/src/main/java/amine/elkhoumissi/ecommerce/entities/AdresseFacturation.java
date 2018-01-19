package amine.elkhoumissi.ecommerce.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/*
 * R�alis� par: AMINE EL KHOUMISSI
 */

@Entity
@Table(name = "AdressesFacturation")
public class AdresseFacturation implements Serializable {

	private static final long serialVersionUID = 1028098616457762743L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long idAdresseFacturation;
	private String adresseFact;
	private String villeFacturation;
	private String regionFacturation;
	private String codePostalFacturation;
	private String paysFacturation;

	@OneToOne(mappedBy = "adresseFacturation")
	private Client client;

	

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public Long getIdAdresseFacturation() {
		return idAdresseFacturation;
	}

	public void setIdAdresseFacturation(Long idAdresseFacturation) {
		this.idAdresseFacturation = idAdresseFacturation;
	}

	public String getAdresseFact() {
		return adresseFact;
	}

	public void setAdresseFact(String adresseFact) {
		this.adresseFact = adresseFact;
	}

	public String getVilleFacturation() {
		return villeFacturation;
	}

	public void setVilleFacturation(String villeFacturation) {
		this.villeFacturation = villeFacturation;
	}

	public String getRegionFacturation() {
		return regionFacturation;
	}

	public void setRegionFacturation(String r�gionFacturation) {
		this.regionFacturation = r�gionFacturation;
	}

	public String getCodePostalFacturation() {
		return codePostalFacturation;
	}

	public void setCodePostalFacturation(String codePostalFacturation) {
		this.codePostalFacturation = codePostalFacturation;
	}

	public String getPaysFacturation() {
		return paysFacturation;
	}

	public void setPaysFacturation(String paysFacturation) {
		this.paysFacturation = paysFacturation;
	}

}
