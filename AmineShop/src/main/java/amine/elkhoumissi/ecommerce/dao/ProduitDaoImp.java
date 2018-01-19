package amine.elkhoumissi.ecommerce.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import amine.elkhoumissi.ecommerce.entities.Produit;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

@Repository

public class ProduitDaoImp implements ProduitDao {

	

	@Autowired
	private SessionFactory sessionFactory;
	

	

	public List<Produit> getAllProduits() {
		
		Session session = sessionFactory.openSession();
		
		List<Produit> produits = session.createCriteria(Produit.class).list();
		System.out.println("----- Liste des produits-----");
		
		for(Produit p:produits)
			System.out.println(p.getNomProduit());
		
		session.close();
		return produits;
	}

	public Produit getProduitParIdProduit(Long idProduit) {

		
		Session session = sessionFactory.openSession();
		
		Produit produit = (Produit) session.get(Produit.class, idProduit);
		session.close();
		return produit;
	}

	public void deleteProduit(Long idProduit) {
		Session session = sessionFactory.openSession();
		Produit produit = (Produit) session.get(Produit.class, idProduit);
		session.delete(produit);
		session.flush();
		session.close();
	}

	public void ajouterProduit(Produit produit) {
		Session session = sessionFactory.openSession();
		session.save(produit);
		session.close();
	}

	public void editProduit(Produit produit) {
		Session session = sessionFactory.openSession();
		session.update(produit);
		session.flush();
		session.close();
	}

}
