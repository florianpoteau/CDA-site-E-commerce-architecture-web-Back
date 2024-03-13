package co.simplon.siteecommerce.presentation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
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

    @GetMapping("/produit/{id}")
    public ProduitDTO getProductById(@PathVariable long id) {
        return produitService.lireParId(id);
    }

    @PostMapping("/produit")
    public ProduitDTO postProduit(@RequestBody ProduitDTO produitDTO) {
        return produitService.creer(produitDTO);
    }

    @PutMapping("/produit/{id}")
    public ProduitDTO putProduit(@PathVariable long id, @RequestBody ProduitDTO produitDTO) {
        return produitService.modifier(id, produitDTO);
    }

    @DeleteMapping("/produit/{id}")
    public void deleteProduit(@PathVariable long id) {
        produitService.supprimer(id);
    }

}
