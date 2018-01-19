package amine.elkhoumissi.ecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import amine.elkhoumissi.ecommerce.entities.Panier;
import amine.elkhoumissi.ecommerce.entities.LingeCommande;
import amine.elkhoumissi.ecommerce.entities.Client;
import amine.elkhoumissi.ecommerce.metier.PanierMetier;
import amine.elkhoumissi.ecommerce.metier.ClientMetier;

/*
 * Réalisé par: AMINE EL KHOUMISSI
 */

@Controller
public class PanierControleur {

	@Autowired
	private ClientMetier clientMetier;
	
	@Autowired
	private PanierMetier panierMetier;
	


	
	
	/*public ClientMetier getClientMetier() {
		return clientMetier;
	}

	public void setClientMetier(ClientMetier clientMetier) {
		this.clientMetier = clientMetier;
	}

	public PanierMetier getPanierMetier() {
		return panierMetier;
	}

	public void setPanierMetier(PanierMetier panierMetier) {
		this.panierMetier = panierMetier;
	}*/

	@RequestMapping("/panier/getPanierParId")
	public String getCartId(Model model){
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String emailId = user.getUsername();
		Client client = clientMetier.getClientParIdEmail(emailId);
		Panier panier=client.getPanier();
		model.addAttribute("panier", panier);
		double total=0;
		for(LingeCommande lc: panier.getLingeCommandes())
			total+=lc.getPrix();
		model.addAttribute("total", total);
		return "panier";
	}
	
	@RequestMapping("/panier/getPanier/{idPanier}")
	public @ResponseBody Panier getCartItems(@PathVariable(value="idPanier")Long idPanier){
		return panierMetier.getPanierParId(idPanier);
	}
	

	
}
