package co.nw.api.servicio.transporte.controlador;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import co.nw.api.servicio.transporte.modelo.Empresa;
import co.nw.api.servicio.transporte.servicio.IEmpresaService;

@RestController
@RequestMapping("/empresa")
@CrossOrigin(origins = "http://localhost:4200")
public class EmpresaController {

	@Autowired
	private IEmpresaService service;

	@GetMapping
	public ResponseEntity<?> todo() {
		return ResponseEntity.ok().body(this.service.listarTodo());
	}

	@PostMapping
	public ResponseEntity<?> adicionar(@RequestBody Empresa e, BindingResult r) {

		if (r.hasErrors()) {
			Map<String, Object> errores = new HashMap<>();

			r.getFieldErrors().forEach(err -> {
				errores.put(err.getField(), err.getField() + " " + err.getDefaultMessage());
			});

			return ResponseEntity.badRequest().body(errores);
		}

		Empresa ebd = this.service.persistir(e);

		if (ebd == null)
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();

		return ResponseEntity.ok().body(ebd);
	}

	@DeleteMapping("/borrar/{id}")
	public ResponseEntity<?> delete(@PathVariable Integer id) {
		System.out.println("borrar");
		System.out.println(id);
		this.service.borrar(id);
		return ResponseEntity.ok().build();
	}
}
