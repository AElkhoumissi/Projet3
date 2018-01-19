package amine.elkhoumissi.ecommerce.metier;

import java.util.List;

import amine.elkhoumissi.ecommerce.entities.Utilisateur;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

public interface UtilisateurMetier {

	List<Utilisateur> getAllUtilisateur();
	
	void deleteUtilisateur(Long idUtilisateur);
	
	void ajouterUtilisateur(Utilisateur utilisateur);
	
	Utilisateur getUtilisateurParId(Long idUtilisateur);
}
