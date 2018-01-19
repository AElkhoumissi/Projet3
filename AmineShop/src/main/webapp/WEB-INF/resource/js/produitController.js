var app = angular.module("monApp", []).controller(
		"monController",
		function($scope, $http) {
			$scope.getListeProduits = function() {
				$http.get("http://localhost:8080/ecommerce/getListeProduits")
						.success(function(data) {
							$scope.produits = data;
						});
			}

			$scope.ajouterAuPanier = function(idProduit) {
				$http.put("http://localhost:8080/ecommerce/panier/ajouter/" + idProduit)
						.success(function() {
							alert("Added successfully");
						})
			}

			$scope.rafraichirPanier = function() {
				$http.get(
						"http://localhost:8080/ecommerce/panier/getPanier/"
								+ $scope.idPanier).success(function(data) {

					$scope.panier = data;
				})
			}

			$scope.getPanier = function(idPanier) {
				$scope.idPanier = idPanier;
				$scope.rafraichirPanier(idPanier);
			}
			$scope.supprimerDuPanier = function(idLigneCommande) {
				$http.put(
						"http://localhost:8080/ecommerce/panier/supprimerLigneCommande/"
								+ idLigneCommande).success(function() {
					$scope.rafraichirPanier();
				});
			}

			$scope.supprimerPanier = function() {
				$http.put(
						"http://localhost:8080/ecommerce/panier/supprimerAllLignesCommande/"
								+ $scope.idPanier).success(function() {
					$scope.rafraichirPanier();
				});
			}

			$scope.calculerGrandTotal = function() {
				var grandTotal = 0.0;
				for (var i = 0; i < $scope.panier.ligneCommandes.length; i++)
					grandTotal = grandTotal + $scope.panier.ligneCommandes[i].prix;
				return grandTotal;

			}
		});
