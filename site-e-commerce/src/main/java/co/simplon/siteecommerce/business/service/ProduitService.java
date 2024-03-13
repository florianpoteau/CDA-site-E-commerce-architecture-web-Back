package co.simplon.siteecommerce.business.service;

import java.util.List;

import co.simplon.siteecommerce.business.dto.ProduitDTO;
import co.simplon.siteecommerce.persistance.entity.Produit;

public interface ProduitService {

    ProduitDTO creer(Produit produit);

    List<ProduitDTO> lire();

    ProduitDTO modifier(int id, ProduitDTO produitDTO);

    String supprimer(int id);
}
