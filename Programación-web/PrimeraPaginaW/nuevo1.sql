	SELECT *
	FROM clientes
	WHERE ciudad LIKE '%dr%';
	
	SELECT CodigoCliente,NombreCliente
    -> FROM clientes;
	
	SELECT  DISTINCT  NombreContacto
    -> FROM CLIENTES;
	
	SELECT  NombreContacto
    -> FROM clientes order by NombreContacto;
	
	SELECT NombreContacto AS Ncon FROM clientes order by NombreContacto;
	
	SELECT NombreContacto AS "N con" FROM clientes order by NombreContacto;
	
	SELECT  NombreCliente,LimiteCredito FROM  clientes ;
	
	SELECT  NombreCliente ,LimiteCredito , LimiteCredito *2   FROM  clientes ;
	
	SELECT  NombreCliente ,LimiteCredito LC, LimiteCredito *2  LCdoble FROM  clientes ;
	
	SELECT  NombreCliente ,LimiteCredito LC, LimiteCredito *2  LCdoble,CodigoCliente+CodigoEmpleadoRepVentas,Codigocliente+CodigoEmpleadoRepVentas sumaCodigos FROM  clientes ;
	
	SELECT CodigoCliente
    -> , CONCAT(NombreContacto, ' ',ApellidoContacto) Nombre
    -> FROM clientes;
	SELECT CodigoCliente,
	CONCAT ('Hola, que tal ', CONCAT(NombreContacto,' ',ApellidoContacto,'?')) 
	FROM clientes;
	 SELECT LENGTH  ('Nadie me hace caso');
	 
	SELECT NombreCliente, POSITION(" " IN NombreCliente) FROM clientes;
	 
	SELECT NombreCliente, Substring_index(NombreCliente, ' ', 1 ) PrimerNombre FROM clientes;
	
	
	