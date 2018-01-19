package amine.elkhoumissi.ecommerce.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import amine.elkhoumissi.ecommerce.entities.MessageClient;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

@Repository
public class MessageClientDaoImpl implements MessageClientDao  {

	@Autowired
	private SessionFactory sessionFactory;
	


	public void ajouterMessage(MessageClient messageClient) {
		Session session = sessionFactory.openSession();
		session.save(messageClient);
		session.close();
	}

}
