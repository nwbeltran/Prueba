package co.nw.api.servicio.transporte.servicio;

import java.util.List;
import java.util.Optional;

import co.nw.api.servicio.transporte.modelo.Empresa;

public interface IEmpresaService {
	public List<Empresa> listarTodo();
	public Optional<Empresa> getEmpresa(Integer id);
	public Empresa persistir(Empresa e);
	public void borrar(Integer id);
}
