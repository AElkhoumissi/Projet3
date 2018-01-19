package amine.elkhoumissi.ecommerce.metier;

import java.util.List;

import amine.elkhoumissi.ecommerce.entities.Produit;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

public interface ProduitMetier {

	public List<Produit> getAllProduit();

	public Produit getProduitParId(Long idProduit);

	void deleteProduit(Long idProduit);
	
	void ajouterProduit(Produit produit);
	
	void editProduit(Produit produit);
}
