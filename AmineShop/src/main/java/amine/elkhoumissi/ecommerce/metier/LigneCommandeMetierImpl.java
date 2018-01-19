package amine.elkhoumissi.ecommerce.metier;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import amine.elkhoumissi.ecommerce.dao.LingeCommandeDao;
import amine.elkhoumissi.ecommerce.entities.Panier;
import amine.elkhoumissi.ecommerce.entities.LingeCommande;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

@Service
@Transactional
public class LigneCommandeMetierImpl implements LigneCommandeMetier {

	@Autowired
	private LingeCommandeDao lingeCommandeDao;

	

	public void ajouterLigneCommande(LingeCommande lingeCommande) {
		lingeCommandeDao.ajouterLigneCommande(lingeCommande);

	}

	public void deleteLigneCommande(Long idLigneCommande) {
		lingeCommandeDao.supprimerLigneCommande(idLigneCommande);
	}

	public void deleteAllLigneCommande(Panier panier) {
		lingeCommandeDao.supprimerTous(panier);
	}

}
