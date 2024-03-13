package co.simplon.siteecommerce.business.service;

import java.util.List;

import co.simplon.siteecommerce.business.dto.ProduitDTO;

public interface ProduitService {

    ProduitDTO creer(ProduitDTO produitDTO);

    List<ProduitDTO> lire();

    ProduitDTO lireParId(long id);

    ProduitDTO modifier(long id, ProduitDTO produitDTO);

    String supprimer(int id);
}
