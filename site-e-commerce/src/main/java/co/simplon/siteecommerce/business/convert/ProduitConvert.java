package co.simplon.siteecommerce.business.convert;

import java.util.ArrayList;
import java.util.List;

import co.simplon.siteecommerce.business.dto.ProduitDTO;
import co.simplon.siteecommerce.persistance.entity.Produit;

public class ProduitConvert {

    private static ProduitConvert instance;

    private ProduitConvert() {

    }

    public static ProduitConvert getInstance() {
        if (instance == null)
            instance = new ProduitConvert();
        return instance;
    }

    // TODO - convert Entity en DTO

    public ProduitDTO convertEntityToDto(final Produit entity) {
        final ProduitDTO dto = new ProduitDTO();
        dto.setId(entity.getId());
        dto.setDescription(entity.getDescription());
        dto.setTitre(entity.getTitre());
        dto.setPrix(entity.getPrix());
        dto.setImage(entity.getImage());

        return dto;
    }

    // TODO - Convert DTO en Entity

    public Produit convertDtoToEntity(final ProduitDTO produit1) {
        final Produit entity = new Produit();
        entity.setId(produit1.getId());
        entity.setDescription(produit1.getDescription());
        entity.setTitre(produit1.getTitre());
        entity.setPrix(produit1.getPrix());
        entity.setImage(produit1.getImage());

        return entity;
    }

    // TODO - Convert List Entity en List DTO

    public List<ProduitDTO> convertListEntityToListDto(final List<Produit> listEntities) {
        final List<ProduitDTO> listeDto = new ArrayList<>();
        for (final Produit entity : listEntities) {
            listeDto.add(convertEntityToDto(entity));
        }
        return listeDto;
    }

    // TODO - Convert List DTO en List Entity

}
