package co.simplon.siteecommerce.business.service;

import java.util.List;
import java.util.Optional;

import javax.swing.text.html.Option;

import org.springframework.beans.factory.annotation.Autowired;

import co.simplon.siteecommerce.business.convert.ProduitConvert;
import co.simplon.siteecommerce.business.dto.ProduitDTO;
import co.simplon.siteecommerce.persistance.entity.Produit;
import co.simplon.siteecommerce.persistance.repository.ProduitRepository;
import jakarta.persistence.EntityNotFoundException;

import org.springframework.stereotype.Service;

@Service
public class ProduitServiceImpl implements ProduitService {

    private ProduitRepository produitRepository;

    @Autowired
    public ProduitServiceImpl(ProduitRepository produitRepository) {
        this.produitRepository = produitRepository;
    }

    @Override
    public ProduitDTO creer(ProduitDTO produitDTO) {
        Produit produit = ProduitConvert.getInstance().convertDtoToEntity(produitDTO);

        Produit savedProduit = produitRepository.save(produit);

        return ProduitConvert.getInstance().convertEntityToDto(savedProduit);
    }

    @Override
    public List<ProduitDTO> lire() {
        final List<Produit> result = produitRepository.findAll();
        return ProduitConvert.getInstance().convertListEntityToListDto(result);
    }

    @Override
    public ProduitDTO modifier(long id, ProduitDTO produitDTO) {
        Optional<Produit> optionalProduit = produitRepository.findById(id);
        if (optionalProduit.isPresent()) {
            Produit existingProduit = optionalProduit.get();
            existingProduit.setDescription(produitDTO.getDescription());
            existingProduit.setImage(produitDTO.getImage());
            existingProduit.setTitre(produitDTO.getTitre());
            existingProduit.setPrix(produitDTO.getPrix());

            Produit updatedProduit = produitRepository.save(existingProduit);

            return ProduitConvert.getInstance().convertEntityToDto(updatedProduit);
        } else {
            throw new EntityNotFoundException("Le produit n'existe pas " + id);
        }
    }

    @Override
    public void supprimer(long id) {
        Optional<Produit> optionalProduit = produitRepository.findById(id);
        if (optionalProduit.isPresent()) {
            produitRepository.deleteById(id);
        } else {
            throw new EntityNotFoundException("Le produit n'existe pas " + id);
        }
    }

    public ProduitDTO lireParId(long id) {
        Optional<Produit> optionalProduit = produitRepository.findById(id);
        Produit produit = optionalProduit.get();
        return ProduitConvert.getInstance().convertEntityToDto(produit);
    }

}
