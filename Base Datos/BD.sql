drop database if exists Transporte ;
create database if not exists Transporte;
	use Transporte;
	
	create table Perfil(
		codigo int,
		descripcion varchar(50)
	);
	
	alter table Perfil add constraint pk_perfil_id primary key (codigo);
	
	create table TipoDoc(
		codigo int,
		descripcion varchar(50)
	);
	
	alter table TipoDoc add constraint pk_tipodoc_id primary key (codigo);
	
	create table Empresa(
		tipodoc    int,
		numerodoc  int,
		nombrecomp varchar(100),
		direccion  varchar(100),
		ciudad     varchar(100),
		departamento varchar(100),
		pais       varchar(100),
		telefono   varchar(100)
	);
	
	alter table Empresa add constraint pk_empresa_id primary key (numerodoc);
	alter table Empresa add constraint fk_empresa_tipodoc foreign key (tipodoc) references TipoDoc(codigo);

	create table Persona(
		tipodoc    int,
		numerodoc  int,
		nombrecomp varchar(100),
		direccion  varchar(100),
		ciudad     varchar(100),
		departamento varchar(100),
		pais       varchar(100),
		telefono   varchar(100)
	);
	
	alter table Persona add constraint pk_persona_id primary key (numerodoc);
	alter table Persona add constraint fk_persona_tipodoc foreign key (tipodoc) references TipoDoc(codigo);

	create table PersonaPerfil(
		codigo int,
		idpersona int,
		idperfil int
	);
	alter table PersonaPerfil add constraint pk_personaperfil_id primary key (codigo);
	alter table PersonaPerfil add constraint fk_personaperfil_persona foreign key (idpersona) references Persona(numerodoc);
	alter table PersonaPerfil add constraint fk_personaperfil_perfil foreign key (idperfil) references Perfil(codigo);
	
	create table Vehiculo(
		idempresa int,
		placa    varchar(10) not null,
		motor    varchar(50),  
		chasis   varchar(50),
		modelo   varchar(200),
		fechaMatricula datetime,
		pasajerossent  int,
		pasajeropie    int,
		pesoseco       int, 
		pesobruto      int, 
		puertas        int, 
		marca          varchar(200), 
		linea          varchar(200)
		
	);
	
	alter table Vehiculo add constraint pk_vehiculo_placa primary key (placa);
	alter table Vehiculo add constraint fk_vehiculo_idempresa foreign key (idempresa) references Empresa(numerodoc);
	
	create table VehiculoPersona(
		codigo int,
		idvehiculo varchar(10) not null,
		idpersona int
	);
	
	alter table VehiculoPersona add constraint pk_vehiculopersona_id primary key(codigo);
	alter table VehiculoPersona add constraint fk_vehiculopersona_idveh foreign key (idvehiculo) references Vehiculo(placa);
	alter table VehiculoPersona add constraint fk_vehiculopersona_idpersona foreign key (idpersona) references Persona(numerodoc);
	
	
	-- DATOS INICIALES
	insert into Perfil values(1,'ADMINISTRADOR');
	insert into Perfil values(2,'EMPRESA');
	insert into Perfil values(3,'CONDUCTOR');
	
	
	insert into TipoDoc values(1,'Cedula Ciudadania');
	insert into TipoDoc values(2,'Cedula Extranjeria');
	insert into TipoDoc values(3,'NIT');
	
	-- DATOS DE PRUEBA
	
	INSERT INTO Empresa
( tipodoc    
,numerodoc  
,nombrecomp 
,direccion  
,ciudad     
,departamento 
,pais       
,telefono   )
values(
	1
	,1
	,'Empresa de Transporte'
	,'Calle 0'
	,'Bogota D.C.'
	,'Bogota D.C.'
	,'Colombia'
	,'000000000'
);

INSERT INTO Empresa
( tipodoc    
,numerodoc  
,nombrecomp 
,direccion  
,ciudad     
,departamento 
,pais       
,telefono   )
values(
	3
	,2
	,'Empresa de Privado Hotel Dan'
	,'Calle 12 # 25 - 224'
	,'Bogota D.C.'
	,'Bogota D.C.'
	,'Colombia'
	,'7151655'
);
	

INSERT INTO Empresa
( tipodoc    
,numerodoc  
,nombrecomp 
,direccion  
,ciudad     
,departamento 
,pais       
,telefono   )
values(
	3
	,3
	,'Empresa de Privado Hotel Cosmo'
	,'Calle 19 # 100 - 15'
	,'Bogota D.C.'
	,'Bogota D.C.'
	,'Colombia'
	,'2566888'
);


	
INSERT INTO Persona
( tipodoc    
,numerodoc  
,nombrecomp 
,direccion  
,ciudad     
,departamento 
,pais       
,telefono   )
values(
	 1
	,1
	,'Administrador'
	,''
	,'Bogota D.C.'
	,'Bogota D.C.'
	,'Colombia'
	,'1111111111'
);



INSERT INTO Persona
( tipodoc    
,numerodoc  
,nombrecomp 
,direccion  
,ciudad     
,departamento 
,pais       
,telefono   )
values(
	 1
	,2
	,'Hotel Dan'
	,'Calle 12 # 25 - 224'
	,'Bogota D.C.'
	,'Bogota D.C.'
	,'Colombia'
	,'7151655'
);


INSERT INTO Persona
( tipodoc    
,numerodoc  
,nombrecomp 
,direccion  
,ciudad     
,departamento 
,pais       
,telefono   )
values(
	 1
	,3
	,'Hotel Cosmo'
	,'Calle 19 # 100 - 15'
	,'Bogota D.C.'
	,'Bogota D.C.'
	,'Colombia'
	,'2566888'
);



INSERT INTO Persona
( tipodoc    
,numerodoc  
,nombrecomp 
,direccion  
,ciudad     
,departamento 
,pais       
,telefono   )
values(
	 1
	,6525554
	,'Juan Caicedo'
	,'Calle 254 # 156 - 25'
	,'Bogota D.C.'
	,'Bogota D.C.'
	,'Colombia'
	,'318525885'
);

INSERT INTO Persona
( tipodoc    
,numerodoc  
,nombrecomp 
,direccion  
,ciudad     
,departamento 
,pais       
,telefono   )
values(
	 1
	,2564565
	,'Perdo Gomez'
	,'Calle 15 # 30 - 65'
	,'Bogota D.C.'
	,'Bogota D.C.'
	,'Colombia'
	,'3518887555'
);


INSERT INTO Persona
( tipodoc    
,numerodoc  
,nombrecomp 
,direccion  
,ciudad     
,departamento 
,pais       
,telefono   )
values(
	 1
	,15665446
	,'Pablo Lopez'
	,'Calle 31 # 75 - 65 Sur'
	,'Bogota D.C.'
	,'Bogota D.C.'
	,'Colombia'
	,'2454'
);

insert into PersonaPerfil(		codigo,		idpersona,		idperfil
	)values(	1,1,1);
	

insert into PersonaPerfil(		codigo,		idpersona,		idperfil
	)values(	2,2,2);
	
insert into PersonaPerfil(		codigo,		idpersona,		idperfil
	)values(	3,3,2);
	
		
insert into PersonaPerfil(		codigo,		idpersona,		idperfil
	)values(	4,6525554,3);

insert into PersonaPerfil(		codigo,		idpersona,		idperfil
	)values(	5,2564565,3);
	

insert into PersonaPerfil(		codigo,		idpersona,		idperfil
	)values(	6,15665446,3);


insert into Vehiculo(
		idempresa 	   ,
		placa    	   ,
		motor    	   ,
		chasis   	   ,
		modelo   	   ,
		fechaMatricula ,
		pasajerossent  ,
		pasajeropie    ,
		pesoseco       ,
		pesobruto      ,
		puertas        ,
		marca          ,
		linea          
	)values(
		2
		,'OLX568'
		,'B345651A252115KC1'
        ,'MR444588 S25554 46558058'
        ,'2018'
		,now()
		,4
		,0
		,1255
		,1755
		,5
		,'Renault'
		,'Duster'
	);
	

insert into Vehiculo(
		idempresa 	   ,
		placa    	   ,
		motor    	   ,
		chasis   	   ,
		modelo   	   ,
		fechaMatricula ,
		pasajerossent  ,
		pasajeropie    ,
		pesoseco       ,
		pesobruto      ,
		puertas        ,
		marca          ,
		linea          
	)values(
		3
		,'KPB324'
		,'B4545651A252115KC2'
		,'MR44248 L15451 13158'
        ,'2020'
		,now()
		,4
		,0
		,1255
		,1755
		,5
		,'Renault'
		,'Duster'
	);

	insert into VehiculoPersona values(1,'OLX568',6525554	);
	insert into VehiculoPersona values(2,'OLX568',2564565	);
	insert into VehiculoPersona values(3,'KPB324',15665446);
	
	
