package co.simplon.siteecommerce.persistance.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import co.simplon.siteecommerce.persistance.entity.Produit;

public interface ProduitRepository extends JpaRepository<Produit, Long> {

}
