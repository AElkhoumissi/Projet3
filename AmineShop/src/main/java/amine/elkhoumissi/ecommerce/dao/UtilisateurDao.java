package amine.elkhoumissi.ecommerce.dao;

import java.util.List;

import amine.elkhoumissi.ecommerce.entities.Utilisateur;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

public interface UtilisateurDao {

	List<Utilisateur> getAllUtilisateurs();

	void deleteUtilisateur(Long idUtilisateur);
	
	void ajouterUtilisateur(Utilisateur utilisateur);
	
	Utilisateur getUtilisateurParId(Long idUtilisateur);
}
