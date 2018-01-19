package amine.elkhoumissi.ecommerce.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/*
 * R�alis� par: AMINE EL KHOUMISSI
 */

@Entity
@Table(name = "Roles")
public class Role implements Serializable {

	private static final long serialVersionUID = 8734140534986494039L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long idRole;
	private String idEmail;
	private String nomRole;

	public Long getIdRole() {
		return idRole;
	}

	public void setIdRole(Long idRole) {
		this.idRole = idRole;
	}

	public String getNomRole() {
		return nomRole;
	}

	public void setNomRole(String nomRole) {
		this.nomRole = nomRole;
	}

	public String getIdEmail() {
		return idEmail;
	}

	public void setIdEmail(String idEmail) {
		this.idEmail = idEmail;
	}

}
