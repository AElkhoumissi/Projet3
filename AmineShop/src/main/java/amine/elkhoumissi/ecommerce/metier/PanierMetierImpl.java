package amine.elkhoumissi.ecommerce.metier;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import amine.elkhoumissi.ecommerce.dao.PanierDao;
import amine.elkhoumissi.ecommerce.entities.Panier;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

@Service
@Transactional
public class PanierMetierImpl implements PanierMetier {

	@Autowired
	private PanierDao panierDao;



	public Panier getPanierParId(Long idPanier) {

		return panierDao.getPanierParId(idPanier);
	}

}
