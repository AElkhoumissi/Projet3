package amine.elkhoumissi.ecommerce.metier;

import amine.elkhoumissi.ecommerce.entities.Panier;

/*
 * R�alis� par: AMINE EL KHOUMISSI
 */

public interface PanierMetier {

	Panier getPanierParId(Long idPanier);
}
