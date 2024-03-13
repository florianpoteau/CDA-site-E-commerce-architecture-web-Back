package co.simplon.siteecommerce.presentation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import co.simplon.siteecommerce.business.dto.ProduitDTO;
import co.simplon.siteecommerce.business.service.ProduitService;

@RestController
public class ProduitController {

    private final ProduitService produitService;

    @Autowired
    public ProduitController(ProduitService produitService) {
        this.produitService = produitService;
    }

    @GetMapping("/produit")
    public List<ProduitDTO> listProduits() {
        return produitService.lire();
    }

}
