package amine.elkhoumissi.ecommerce.dao;

import java.io.IOException;

import amine.elkhoumissi.ecommerce.entities.Panier;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

public interface PanierDao {

	Panier getPanierParId(Long idPanier);
	
	Panier valider(Long idPanier) throws IOException;
	
	void update(Panier panier);
}
