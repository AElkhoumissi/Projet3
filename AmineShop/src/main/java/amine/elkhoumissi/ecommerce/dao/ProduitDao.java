package amine.elkhoumissi.ecommerce.dao;

import java.util.List;

import amine.elkhoumissi.ecommerce.entities.Produit;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

public interface ProduitDao {

	List<Produit> getAllProduits();

	Produit getProduitParIdProduit(Long idProduit);

	void deleteProduit(Long idProduit);

	void ajouterProduit(Produit produit);
	
	void editProduit(Produit produit);
	
}
