package amine.elkhoumissi.ecommerce.metier;

import amine.elkhoumissi.ecommerce.entities.Commande;

/*
 * R�alis� par: AMINE EL KHOUMISSI
 */

public interface CommandeMetier {

	void ajouterCommande(Commande commande);
	double getTotalCommande(Long idPanier);
}
