package co.simplon.siteecommerce.business.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import co.simplon.siteecommerce.business.convert.ProduitConvert;
import co.simplon.siteecommerce.business.dto.ProduitDTO;
import co.simplon.siteecommerce.persistance.entity.Produit;
import co.simplon.siteecommerce.persistance.repository.ProduitRepository;

public class ProduitServiceImpl implements ProduitService {

    private ProduitRepository produitRepository;

    @Autowired
    public ProduitServiceImpl(ProduitRepository produitRepository) {
        this.produitRepository = produitRepository;
    }

    @Override
    public ProduitDTO creer(Produit produit) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'creer'");
    }

    @Override
    public List<ProduitDTO> lire() {
        final List<Produit> result = produitRepository.findAll();
        return ProduitConvert.getInstance().convertListEntityToListDto(result);
    }

    @Override
    public ProduitDTO modifier(int id, ProduitDTO produitDTO) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'modifier'");
    }

    @Override
    public String supprimer(int id) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'supprimer'");
    }

}
