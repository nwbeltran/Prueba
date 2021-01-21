package co.nw.api.servicio.transporte.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;

import co.nw.api.servicio.transporte.modelo.Empresa;

public interface IEmpresaRepo extends JpaRepository<Empresa, Integer>{

}
