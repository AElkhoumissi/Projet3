package amine.elkhoumissi.ecommerce.metier;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import amine.elkhoumissi.ecommerce.dao.MessageClientDao;
import amine.elkhoumissi.ecommerce.entities.MessageClient;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

@Service
@Transactional
public class MessageClientMetierImpl implements MessageClientMetier {

	@Autowired
	private MessageClientDao messageClientDao;

	public void ajouterMessage(MessageClient messageClient) {

		messageClientDao.ajouterMessage(messageClient);
	}

}
