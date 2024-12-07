mysql -u root

CREATE DATABASE empleados;

USE empleados;

CREATE TABLE provincias(
	cod_prov CHAR(2) PRIMARY KEY,
	nomprov VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE delegaciones(
	cod_del CHAR(5) PRIMARY KEY,
	nombre VARCHAR(40) NOT NULL,
	direccion VARCHAR(50)
);

CREATE TABLE localidades(
	cod_loc CHAR(3) PRIMARY KEY,
	nombre VARCHAR(40) NOT NULL,
	cod_postal VARCHAR(5),
	cod_prov CHAR(2)
);

CREATE TABLE departamentos(
	cod_dep VARCHAR(5) PRIMARY KEY,
	nombre VARCHAR(40),
	cod_del CHAR(5),
	director VARCHAR(15),
	presupuesto DECIMAL(15,2),
	dep_sup VARCHAR(5)
);

CREATE TABLE empleados(
	cod_emp VARCHAR(15) PRIMARY KEY,
	nombre VARCHAR(40) NOT NULL,
	direccion VARCHAR(100),
	localidad CHAR(3),
	tfno VARCHAR(15),
	fec_nac DATE,
	fec_alta DATE,
	salario DECIMAL(10,2),
	hijos INT(2),
	deptno VARCHAR(5)
);

ALTER TABLE localidades
	ADD FOREIGN KEY (cod_prov) REFERENCES provincias(cod_prov)
	ON DELETE SET NULL
    	ON UPDATE CASCADE;

ALTER TABLE empleados
	ADD FOREIGN KEY (localidad) REFERENCES localidades(cod_loc);

ALTER TABLE empleados
	ADD FOREIGN KEY (deptno) REFERENCES departamentos(cod_dep);

ALTER TABLE departamentos
	ADD FOREIGN KEY (cod_del) REFERENCES delegaciones(cod_del);

ALTER TABLE departamentos
	ADD FOREIGN KEY (dep_sup) REFERENCES departamentos(cod_dep);


