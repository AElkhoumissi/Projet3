package amine.elkhoumissi.ecommerce.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import amine.elkhoumissi.ecommerce.dao.UtilisateurDao;
import amine.elkhoumissi.ecommerce.entities.Utilisateur;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

@Service
@Transactional
public class UtilisateurMetierImpl implements UtilisateurMetier {

	@Autowired
	private UtilisateurDao utilisateurDao;
	

	public List<Utilisateur> getAllUtilisateur() {
	return utilisateurDao.getAllUtilisateurs();
	}

	
	public void deleteUtilisateur(Long idUtilisateur) {
		utilisateurDao.deleteUtilisateur(idUtilisateur);
	}

	public void ajouterUtilisateur(Utilisateur utilisateur){
		utilisateurDao.ajouterUtilisateur(utilisateur);
	}
	
	public Utilisateur getUtilisateurParId(Long idUtilisateur) {
		return utilisateurDao.getUtilisateurParId(idUtilisateur);
	}

	
}
