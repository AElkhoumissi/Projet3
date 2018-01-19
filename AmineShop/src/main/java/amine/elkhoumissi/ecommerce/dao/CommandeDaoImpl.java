package amine.elkhoumissi.ecommerce.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import amine.elkhoumissi.ecommerce.entities.Commande;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

@Repository
public class CommandeDaoImpl implements CommandeDao {

	@Autowired
	private SessionFactory sessionFactory;
	



	public void ajouterCommande(Commande commande) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(commande);
		session.flush();
		session.close();
	}

}
