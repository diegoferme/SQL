SELECT * FROM alumno ORDER BY idAlumno DESC LIMIT 2;
INSERT INTO alumno (idAlumno, NIF, nombre, apellido1, apellido2, email, direccion, codigoPostal, municipio, provincia, beca) 
VALUES ('AL200', '50997398G', 'Diego', 'Merino', 'Millan', 'diego.merino@gmail.com', 'Postas, 9', 28350, 'Ciempozuelos', 'Madrid', 'no');
SELECT * FROM alumno ORDER BY idAlumno DESC LIMIT 2;
INSERT INTO alumno (idAlumno, NIF, nombre, apellido1, apellido2, email, direccion, codigoPostal, municipio, provincia, beca) 
VALUES ('AL201', '50997399G', 'Fernando', 'Merino', 'Gutierrez', 'fernando.merino@gmail.com', 'Postas, 9', 28350, 'Ciempozuelos', 'Madrid', 'no'),
('AL202', '50998399G', 'Manuel', 'Merino', 'Gutierrez', 'manuel.merino@gmail.com', 'Cruz Verde, 19', 28350, 'Ciempozuelos', 'Madrid', 'si');
SELECT * FROM alumno ORDER BY idAlumno DESC LIMIT 3;

UPDATE alumno SET direccion = 'Rueda, 9' WHERE idAlumno = 'AL200';
SELECT * FROM alumno ORDER BY idAlumno DESC LIMIT 3;
UPDATE alumno SET direccion = 'Argentina, 10', municipio = 'Valdemoro' WHERE idAlumno = 'AL201';
SELECT * FROM alumno ORDER BY idAlumno DESC LIMIT 3;

DELETE FROM alumno WHERE idAlumno IN ('AL202', 'AL201');
SELECT * FROM alumno ORDER BY idAlumno DESC LIMIT 3;