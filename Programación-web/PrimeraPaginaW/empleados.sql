DROP DATABASE IF EXISTS Empleados;
CREATE DATABASE Empleados;
USE Empleados;

create table  Empleado(
CodEmp VARCHAR(15) PRIMARY KEY, 
Nombre  VARCHAR(40) NOT NULL ,
Direccion VARCHAR(100),
Telefono VARCHAR (15),
Fec_Nam DATE ,
Fec_Alta DATE,
Salario DECIMAL (10,2),
hijos INT(2),
CodDep VARCHAR(5),
CodLoc CHAR (3),
foreign key (CodDep) REFERENCES Departamentos (CodDep)
);

create table Departamentos(
CodDep VARCHAR(5) PRIMARY KEY,
Nombre VARCHAR(40),
Director VARCHAR(15),
Presupuesto DECIMAL(15,2),
CodDepSup VARCHAR(5),
CodDg CHAR (5),
foreign key (Director) REFERENCES Empleados(CodEmp),
foreign key (CodDepSup) REFERENCES Departamentos(CodDep),
foreign key (CodDg) REFERENCES Delegaciones(CodDg)
);

Create table Provincia(
CodProv CHAR(2) PRIMARY KEY, 
Nomprov VARCHAR(20) NOT NULL UNIQUE, 
);

create table Localidad(
CodLoc CHAR (3) PRIMARY KEY ,
Nombre VARCHAR(40) NOT NULL ,
Direccion CHAR(5),
CodProv CHAR (2),
foreign key (CodProv) REFERENCES Provincia(CodProv)
); 

CREATE TABLE Delegaciones( 
CodDg CHAR (5) PRIMARY KEY,
Nombre VARCHAR(40) NOT NULL,
Direccion VARCHAR(50),
CodLoc CHAR (3),
foreign key (CodLoc) REFERENCES  Localidad (CodLoc)
); 
