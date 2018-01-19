package amine.elkhoumissi.ecommerce.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import amine.elkhoumissi.ecommerce.dao.ProduitDao;
import amine.elkhoumissi.ecommerce.entities.Produit;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

@Service
@Transactional
public class ProduitMetierImpl implements ProduitMetier {

	@Autowired
	private ProduitDao produitDao;


	
	public List<Produit> getAllProduit() {
		return produitDao.getAllProduits();
	}

	
	public Produit getProduitParId(Long idProduit) {
		return produitDao.getProduitParIdProduit(idProduit);
	}

	
	public void deleteProduit(Long idProduit) {
		produitDao.deleteProduit(idProduit);
	}
	
	public void ajouterProduit(Produit produit){
		produitDao.ajouterProduit(produit);
	}
	
	public void editProduit(Produit produit){
		produitDao.editProduit(produit);
	}

}
