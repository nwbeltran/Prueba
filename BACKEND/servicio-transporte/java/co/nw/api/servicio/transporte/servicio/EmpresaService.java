package co.nw.api.servicio.transporte.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.nw.api.servicio.transporte.modelo.Empresa;
import co.nw.api.servicio.transporte.repositorio.IEmpresaRepo;

@Service
public class EmpresaService implements IEmpresaService{
	
	@Autowired
	private IEmpresaRepo repo;
	
	@Override
	public List<Empresa> listarTodo() {
		return this.repo.findAll();
	}

	@Override
	public Optional<Empresa> getEmpresa(Integer id) {
		return this.repo.findById(id);
	}

	@Override
	public Empresa persistir(Empresa e) {
		return this.repo.save(e);
	}

	@Override
	public void borrar(Integer id) {
		this.repo.deleteById(id);	
	}

}
