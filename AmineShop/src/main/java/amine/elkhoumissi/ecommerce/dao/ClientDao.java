package amine.elkhoumissi.ecommerce.dao;

import java.util.List;
import amine.elkhoumissi.ecommerce.entities.Client;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

public interface ClientDao {

	void ajouterClient(Client client);

	List<Client> getAllClient();

	Client getClientParIdEmail(String idEmail);

}
