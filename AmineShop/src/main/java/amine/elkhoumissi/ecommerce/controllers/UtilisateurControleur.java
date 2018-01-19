package amine.elkhoumissi.ecommerce.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import amine.elkhoumissi.ecommerce.entities.AdresseFacturation;
import amine.elkhoumissi.ecommerce.entities.Client;
import amine.elkhoumissi.ecommerce.entities.Produit;
import amine.elkhoumissi.ecommerce.entities.AdresseLivraison;
import amine.elkhoumissi.ecommerce.entities.Utilisateur;
import amine.elkhoumissi.ecommerce.metier.ClientMetier;
import amine.elkhoumissi.ecommerce.metier.UtilisateurMetier;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

@Controller
public class UtilisateurControleur {

	@Autowired
	private ClientMetier clientMetier;
	
	@Autowired
	private UtilisateurMetier utilisateurMetier;


	@RequestMapping(value = "/client/inscription")
	public ModelAndView inscriptionClient() {
		Client client = new Client();
		Utilisateur utilisateur = new Utilisateur();
		AdresseFacturation af = new AdresseFacturation();
		AdresseLivraison al = new AdresseLivraison();
		client.setAdresseLivraison(al);
		client.setAdresseFacturation(af);
		client.setUtilisateur(utilisateur);

		return new ModelAndView("inscription", "client", client);
	}

	
	@RequestMapping(value = "/client/inscription", method = RequestMethod.POST)
	public String enregistrerClient(@Valid @ModelAttribute(value = "client") Client client, Model model,
			BindingResult result) {
		if (result.hasErrors())
			return "inscrivez-vous!";
		clientMetier.ajouterClient(client);
		model.addAttribute("inscriptionRéussite", "Inscription avec succès. Connecter-vous en utilisant le nom "
				+ "d'utilisateur et le mot de passe");
		return "seConnecter";
	}
	
	@RequestMapping(value = "/admin/getAllUtilisateurs", method = RequestMethod.GET)
	public ModelAndView getAllUtilisateurs(Model model) {
		List<Utilisateur> utilisateurs = utilisateurMetier.getAllUtilisateur();
		return new ModelAndView("ListeUtilisateurs", "utilisateurs", utilisateurs);
	

	}
	
	@RequestMapping("/admin/utilisateur/supprimer/{idUtilisateur}")
	public String deleteUtilisateur(@PathVariable(value = "idUtilisateur") Long idUtilisateur) {

		utilisateurMetier.deleteUtilisateur(idUtilisateur);;
		
		return "redirect:/admin/getAllUtilisateurs";
	}
	
	@RequestMapping("/admin/getUtilisateurtParId/{idUtilisateur}")
	public ModelAndView getUsertById(@PathVariable(value = "idUtilisateur") Long idUtilisateur) {
		Utilisateur utilisateur = utilisateurMetier.getUtilisateurParId(idUtilisateur);
		return new ModelAndView("InfosUtilisateur", "utilisateur", utilisateur);
	}
}
