package amine.elkhoumissi.ecommerce.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import amine.elkhoumissi.ecommerce.dao.CommandeDao;
import amine.elkhoumissi.ecommerce.entities.Panier;
import amine.elkhoumissi.ecommerce.entities.LingeCommande;
import amine.elkhoumissi.ecommerce.entities.Commande;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

@Service
@Transactional
public class CommandeMetierImpl implements CommandeMetier {

	@Autowired
	private CommandeDao commandeDao;
	
	@Autowired
	private PanierMetier panierMetier;
	
	public void ajouterCommande(Commande commande) {
		commandeDao.ajouterCommande(commande);
	}

	public double getTotalCommande(Long idPanier) {
		double grandTotal=0;
		Panier panier = panierMetier.getPanierParId(idPanier);
		List<LingeCommande> lingeCommandes = panier.getLingeCommandes();
		
		for(LingeCommande item: lingeCommandes){
			grandTotal += item.getPrix()*item.getQuantité();
		}
		return grandTotal;
	}

}
