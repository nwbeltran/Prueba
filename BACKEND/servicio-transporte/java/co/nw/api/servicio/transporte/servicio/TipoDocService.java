package co.nw.api.servicio.transporte.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.nw.api.servicio.transporte.modelo.TipoDoc;
import co.nw.api.servicio.transporte.repositorio.ITipodocRepo;

@Service
public class TipoDocService implements ITipoDocService{
	@Autowired
	private ITipodocRepo repo;
	
	public List<TipoDoc> listar(){
		return this.repo.findAll();
	}
}
