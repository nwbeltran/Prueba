package co.nw.api.servicio.transporte.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;

import co.nw.api.servicio.transporte.modelo.TipoDoc;

public interface ITipodocRepo extends JpaRepository<TipoDoc, Integer> {

}
