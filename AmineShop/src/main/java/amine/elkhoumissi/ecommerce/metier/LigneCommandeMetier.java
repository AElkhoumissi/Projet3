package amine.elkhoumissi.ecommerce.metier;

import amine.elkhoumissi.ecommerce.entities.Panier;
import amine.elkhoumissi.ecommerce.entities.LingeCommande;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

public interface LigneCommandeMetier {

	void ajouterLigneCommande(LingeCommande lingeCommande);
	void deleteLigneCommande(Long idLigneCommande);
	void deleteAllLigneCommande(Panier panier);
}
