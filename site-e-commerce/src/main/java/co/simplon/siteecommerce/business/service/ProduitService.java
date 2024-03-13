package co.simplon.siteecommerce.business.service;

import java.util.List;

import co.simplon.siteecommerce.business.dto.ProduitDTO;
import co.simplon.siteecommerce.persistance.entity.Produit;

public interface ProduitService {

    ProduitDTO creer(ProduitDTO produitDTO);

    List<ProduitDTO> lire();

    ProduitDTO lireParId(long id);

    ProduitDTO modifier(int id, ProduitDTO produitDTO);

    String supprimer(int id);
}
