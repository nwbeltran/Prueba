use Transporte;

SELECT 
		v.placa as 'Placa del vehículo', 
        tipo.descripcion as 'Tipo de identificación de la empresa', 
        e.numerodoc as 'Número de identificación de la empresa',
        e.nombrecomp as 'Nombre de la empresa', 
        count(vp.idpersona) as personas	
FROM 
empresa e inner join 
Tipodoc tipo on tipo.codigo = e.tipodoc inner join 
vehiculo v on v.idempresa= e.numerodoc inner join
VehiculoPersona vp on vp.idvehiculo = v.placa 
group by v.idempresa
having personas	>=2
;