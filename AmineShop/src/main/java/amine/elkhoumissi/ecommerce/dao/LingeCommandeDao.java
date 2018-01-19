package amine.elkhoumissi.ecommerce.dao;

import amine.elkhoumissi.ecommerce.entities.Panier;
import amine.elkhoumissi.ecommerce.entities.LingeCommande;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

public interface LingeCommandeDao {

	void ajouterLigneCommande(LingeCommande lingeCommande);
	void supprimerLigneCommande(Long idLigneCommande);
	void supprimerTous(Panier panier);

}
