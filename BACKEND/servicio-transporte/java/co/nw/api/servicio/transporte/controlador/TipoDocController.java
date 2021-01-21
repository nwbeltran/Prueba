package co.nw.api.servicio.transporte.controlador;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import co.nw.api.servicio.transporte.servicio.ITipoDocService;

@RestController
@RequestMapping("/tipodoc")
@CrossOrigin(origins = "http://localhost:4200")
public class TipoDocController {
	@Autowired
	private ITipoDocService service;
	
	@GetMapping
	public ResponseEntity<?> todo(){
		return ResponseEntity.ok().body(this.service.listar());
	}
}
