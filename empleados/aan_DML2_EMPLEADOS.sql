INSERT INTO delegaciones
  VALUES ('08000', 'D.BARCELONA','Rmabla,24'),
	 ('21000','D.HUELVA','Gamba, 4'),
 	 ('23000','D.JAEN','Aceituna, 9'),
	 ('28000','D.MADRID','Mayor, 10'),
	 ('41000','D.SEVILLA','Flamencos, 4');

INSERT INTO departamentos
  VALUES ('D0108','DEP BARCELONA 01','08000','EMP01',81000.00,NULL),
	 ('D0121','DEP HUELVA 01','21000','EMP13',125000.00,NULL),
	 ('D0123','DEP JAEN 01','23000','EMP18',123000.00,NULL),
	 ('D0128','DEP MADRID 01','28000','EMP05',281000.00,NULL),
	 ('D0141','DEP SEVILLA 01','41000','EMP09',185000.00,NULL),
	 ('D0208','DEP BARCELONA 02','08000','EMP02',82000.00,'D0108'),
	 ('D0221','DEP HUELVA 02','21000','EMP14',171000.00,'D0121'),
	 ('D0223','DEP JAEN 02','23000','EMP19',161000.00,'D0123'),
	 ('D0228','DEP MADRID 02','28000','EMP06',282000.00,'D0128'),
	 ('D0241','DEP SEVILLA 02','41000','EMP10',183000.00,'D0141');

INSERT INTO provincias
  VALUES ('08','BARCELONA'),
    	 ('21','HUELVA'),
	 ('23','JAEN'),
	 ('28','MADRID'),
	 ('41','SEVILLA'),
	 ('14', 'CORDOBA');


INSERT INTO localidades
  VALUES('080','Barcelona','08','08000'),
	('081','Tarrasa','08','08225'),
	('082','Badalona','08','08915'),
	('210','Ayamonte','21','21400'),
	('211','Huelva','21','21000'),
	('230','Jaen','23','23000'),
	('231','Zocueca','23','23210'),
	('280','Madrid','28','28000'),
	('281','Galapagar','28','28260'),
	('282','Parla','28','28981'),
	('410','Ecija','41','41400'),
	('411','Tomares','41','41910');

INSERT INTO empleados
  VALUES ('EMP01','LUIS','Calle dir, 1','080','11111111','1980-01-01','2010-01-01','40000.00', '0','D0108'),
	 ('EMP02','MARIA','Calle dir, 2','080','22222222','1983-01-01','2008-02-01','45000.00', '2','D0208'),
	 ('EMP03','TOMAS','Calle dir, 3','081','33333333','1987-04-01','2007-01-01','32000.00', '1','D0208'),
	 ('EMP04','JORGE','Calle dir, 4','082','44444444','1983-05-01','2009-10-01','32000.00', '0','D0108'),
	 ('EMP05','ESTHER','Calle dir, 5','280','55555555','1984-03-01','2010-05-01','47000.00','0','D0128'),
	 ('EMP06','CARLOS','Calle dir, 6','280','66666666','1973-09-01','2018-03-01','49000.00','4','D0228'),
	 ('EMP07','FRANCISCO','Calle dir, 7','281','77777777','1977-10-01','2011-01-01','31000.00','0','D0128'),
	 ('EMP08','PALOMA','Calle dir, 8','282',NULL,'1990-02-01','2019-01-01','30000.00','2','D0228'),
	 ('EMP09','MACARENA','Calle dir, 9','410','99999999','1984-02-01','2010-11-01','45000.00','0','D0141'),
	 ('EMP10','ALFONSO','Calle dir, 10','410','10101010','1973-12-01','2018-04-01','48000.00','4','D0241'),
	 ('EMP11','HUGO','Calle dir, 11','411','01010101','1977-11-01','2011-10-01','39000.00','0','D0141'),
	 ('EMP12','DANIEL','Calle dir, 12','411','12121212','1990-07-01','2019-08-01','37000.00','2','D0241'),
	 ('EMP13','CRISTINA','Calle dir, 13','210','13131313','1981-03-01','2012-12-01','42000.00','0','D0121'),
	 ('EMP14','RAUL','Calle dir, 14','210','14141414','1979-06-01','2017-01-01','46000.00','1','D0221'),
	 ('EMP15','RODRIGO','Calle dir, 15','211',NULL,'1978-08-01','2010-11-01','38000.00','0','D0121'),
	 ('EMP16','SUSANA','Calle dir, 16','211','16161616','1993-06-01','2019-07-01','35000.00','1','D0221'),
	 ('EMP18','MARCOS','Calle dir, 18','230','17171717','1982-06-01','2010-11-01','49000.00','0','D0123'),
	 ('EMP19','LORENZO','Calle dir, 19','230','18181818','1973-09-01','2014-02-01','45000.00','1','D0223'),
	 ('EMP20 ','MARTA', 'Calle dir, 20','231','19191919','1988-12-01','2011-12-01','31000.00','0','D0123'),
	 ('EMP21','JAVIER','Calle dir, 21','231','20202020','1983-05-01','2014-06-01','27000.00','1','D0223'),
	 ('EMP22','NURIA','Calle dir, 28','282','28282828','1993-07-01','2018-01-01','32000.00','3','D0228'),
	 ('EMP23','ANDRES','Calle dir, 26','280','26262626','1975-06-01','2017-05-01','43000.00','2','D0228');

//Modificar la dirección de la Delegación de Huelva a ‘La
ngostino, 12’.

UPDATE delegaciones
	SET direccion='Langostino,12' WHERE nombre='D.Huelva';

//Actualizar el nuevo responsable del departamento DEP SEVILLA 01 a EMP10. Si no puedes, modifica lo
que sea necesario (sin borrar las tablas para poder cambiar de responsable)

UPDATE departamentos
	SET director='EMP10' WHERE nombre='DEP SEVILLA 01';

// Reducir en un 10% el presupuesto de los departamentos que actualmente tengan un presupuesto
superior a 180.000€

UPDATE departamentos
	SET presupuesto=presupuesto-(presupuesto*10/100) WHERE presupuesto>180000 ;

//Reducir 5.000€ el presupuesto de los departamentos restantes.

UPDATE departamentos
	SET presupuesto=presupuesto-5000 WHERE presupuesto<=180000 ;

//Subir el sueldo un 5% a los empleados que hayan nacido antes de 1980. 

UPDATE empleados
SET salario=(salario*5/100)+salario WHERE fec_nac < '1980-01-01';

// A los restantes empleados, aumentarle el sueldo en 1.000€.

UPDATE empleados
SET salario=1000+salario WHERE fec_nac > '1980-01-01';

//Borrar el departamento 'DEP JAEN 01'
ALTER TABLE departamentos
DROP FOREIGN KEY departamentos_ibfk_2;

ALTER TABLE departamentos
	ADD FOREIGN KEY (dep_sup) REFERENCES departamentos(cod_dep) ON UPDATE CASCADE;

ALTER TABLE departamentos
DROP FOREIGN KEY departamentos_ibfk_3;

ALTER TABLE empleados
	ADD FOREIGN KEY (deptno) REFERENCES departamentos(cod_dep) ON DELETE CASCADE;

DELETE FROM departamentos WHERE nombre='DEP JAEN 01';

SELECT * FROM EMPLEADOS;
SELECT * FROM DEPARTAMENTOS;
DELETE FROM empleados WHERE deptno='D0123';
DELETE FROM departamentos WHERE nombre='DEP JAEN 01';

//Dar de baja el empleado Alfonso.

DELETE FROM empleados WHERE nombre='ALFONSO';

// Eliminar la delegación de Huelva

DELETE FROM delegaciones WHERE nombre='D.HUELVA';
SHOW CREATE TABLE departamentos;
ALTER TABLE departamentos
DROP FOREIGN KEY departamentos_ibfk_1;

ALTER TABLE departamentos
ADD FOREIGN KEY (dep_sup) REFERENCES departamentos(cod_dep) ON UPDATE CASCADE;
DELETE FROM departamentos WHERE cod_dep='D0121';
DELETE FROM delegaciones WHERE nombre='D.HUELVA';
