package amine.elkhoumissi.ecommerce.metier;

import java.util.List;

import amine.elkhoumissi.ecommerce.entities.Client;

/*
 * R�alis� par: AMINE EL KHOUMISSI
 */

public interface ClientMetier {

	void ajouterClient(Client client);

	List<Client> getAllClient();

	Client getClientParIdEmail(String idEmail);

}
