package amine.elkhoumissi.ecommerce.metier;

import amine.elkhoumissi.ecommerce.entities.Panier;
import amine.elkhoumissi.ecommerce.entities.LingeCommande;

/*
 * R�alis� par: AMINE EL KHOUMISSI
 */

public interface LigneCommandeMetier {

	void ajouterLigneCommande(LingeCommande lingeCommande);
	void deleteLigneCommande(Long idLigneCommande);
	void deleteAllLigneCommande(Panier panier);
}
