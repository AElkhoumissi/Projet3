package amine.elkhoumissi.ecommerce.metier;

import amine.elkhoumissi.ecommerce.entities.Panier;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

public interface PanierMetier {

	Panier getPanierParId(Long idPanier);
}
