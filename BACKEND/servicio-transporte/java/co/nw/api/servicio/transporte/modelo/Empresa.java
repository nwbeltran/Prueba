package co.nw.api.servicio.transporte.modelo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "empresa")
public class Empresa implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	private int numerodoc;
	@ManyToOne
	@JoinColumn(name="tipodoc")
	private TipoDoc tipodoc;
	@NotEmpty(message = "El nombre no puede estar vacio")
	private String nombrecomp;
	private String direccion;
	private String ciudad;
	private String departamento;
	private String pais;
	@NotEmpty(message = "El numero de telefono no puede estar vacio")
	private String telefono;

	public int getNumerodoc() {
		return numerodoc;
	}

	public void setNumerodoc(int numerodoc) {
		this.numerodoc = numerodoc;
	}

	public TipoDoc getTipodoc() {
		return tipodoc;
	}

	public void setTipodoc(TipoDoc tipodoc) {
		this.tipodoc = tipodoc;
	}

	public String getNombrecomp() {
		return nombrecomp;
	}

	public void setNombrecomp(String nombrecomp) {
		this.nombrecomp = nombrecomp;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getDepartamento() {
		return departamento;
	}

	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	@Override
	public String toString() {
		return "Empresa [numerodoc=" + numerodoc + ", tipodoc=" + tipodoc + ", nombrecomp=" + nombrecomp
				+ ", direccion=" + direccion + ", ciudad=" + ciudad + ", departamento=" + departamento + ", pais="
				+ pais + ", telefono=" + telefono + "]";
	}

}
