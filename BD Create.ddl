CREATE TABLE Ejercicio (id SERIAL NOT NULL, nombre varchar(255) NOT NULL, instruccionEjecucion varchar(500), instruccionRespiracion varchar(500), PRIMARY KEY (id));
CREATE TABLE Ejercicio_ProgresoxEjercicio (Ejercicioid int4 NOT NULL, ProgresoxEjercicioid int4 NOT NULL, PRIMARY KEY (Ejercicioid, ProgresoxEjercicioid));
CREATE TABLE Equipo (Itemid int4 NOT NULL, referencia varchar(255), descripcion varchar(255), Usuarioid int4, tipoEquipoid int4 NOT NULL, PRIMARY KEY (Itemid));
CREATE TABLE Equipo_Ejercicio (EquipoItemid int4 NOT NULL, Ejercicioid int4 NOT NULL, PRIMARY KEY (EquipoItemid, Ejercicioid));
CREATE TABLE Gimnasio (id SERIAL NOT NULL, nombre varchar(255) NOT NULL, pisos int4 NOT NULL, direccion varchar(255) NOT NULL, barrio varchar(255) NOT NULL, imagenGimnasio TEXT, PRIMARY KEY (id));
CREATE TABLE Gimnasio_Item (Gimnasioid int4 NOT NULL, Itemid int4 NOT NULL, Cantidad int4 NOT NULL, PRIMARY KEY (Gimnasioid, Itemid));
CREATE TABLE Grupo_Muscular (id SERIAL NOT NULL, nombre varchar(255) NOT NULL, ubicacion int4 NOT NULL, PRIMARY KEY (id));
CREATE TABLE ImagenEjercicio (id SERIAL NOT NULL, imagen TEXT, Ejercicioid int4 NOT NULL, PRIMARY KEY (id));
CREATE TABLE Item (id SERIAL NOT NULL, imagen TEXT, nombre varchar(255), PRIMARY KEY (id));
CREATE TABLE Mapa (id SERIAL NOT NULL, nivel int4 NOT NULL, ancho int4 NOT NULL, alto int4 NOT NULL, version int4 NOT NULL, Gimnasioid int4 NOT NULL, PRIMARY KEY (id));
CREATE TABLE Musculo (id SERIAL NOT NULL, nombreMusculo varchar(255) NOT NULL UNIQUE, PRIMARY KEY (id));
CREATE TABLE Musculo_Ejercicio (Musculoid int4 NOT NULL, Ejercicioid int4 NOT NULL, PRIMARY KEY (Musculoid, Ejercicioid));
CREATE TABLE Musculo_grupomuscular (Musculoid int4 NOT NULL, Grupo_Muscularid int4 NOT NULL, PRIMARY KEY (Musculoid, Grupo_Muscularid));
CREATE TABLE NivelActividadFisica (id SERIAL NOT NULL, titulo varchar(255) UNIQUE NOT NULL, PRIMARY KEY (id));
CREATE TABLE Objetivo (id SERIAL NOT NULL, titulo varchar(255) NOT NULL, fechaInicio date NOT NULL, fechaFinal date NOT NULL, estado int4 NOT NULL, descripcionObjetivo varchar(255), UsuarioClienteUsuarioid int4 NOT NULL, PRIMARY KEY (id));
CREATE TABLE ObjetivoRutina (id SERIAL NOT NULL, nombre varchar(255) NOT NULL UNIQUE, PRIMARY KEY (id));
CREATE TABLE PerfilMedico (id SERIAL NOT NULL, fecha date NOT NULL, UsuarioClienteUsuarioid int4, PRIMARY KEY (id));
CREATE TABLE ProgresoxEjercicio (id SERIAL NOT NULL, peso int4 NOT NULL, fecha date NOT NULL, valoracion int4, serie int4 NOT NULL, repeticiones int4 NOT NULL, comentarios varchar(255), descansoEntreSeries time NOT NULL, UsuarioClienteUsuarioid int4 NOT NULL, PRIMARY KEY (id));
CREATE TABLE RestriccionMedica (id SERIAL NOT NULL, nombreLimitacion varchar(255) NOT NULL UNIQUE, PRIMARY KEY (id));
CREATE TABLE RestriccionMedica_Ejercicio (RestriccionMedicaid int4 NOT NULL, Ejercicioid int4 NOT NULL, PRIMARY KEY (RestriccionMedicaid, Ejercicioid));
CREATE TABLE Rutina (id SERIAL NOT NULL, horaI time(7), horaF time(7), dia varchar(255) NOT NULL, duracion time(7) NOT NULL, cantEjercicios int4 NOT NULL, UsuarioClienteUsuarioid int4, Grupo_Muscularid int4 NOT NULL, PRIMARY KEY (id));
CREATE TABLE Rutina_Ejercicio (Rutinaid int4 NOT NULL, Ejercicioid int4 NOT NULL, PRIMARY KEY (Rutinaid, Ejercicioid));
CREATE TABLE tipoEquipo (id SERIAL NOT NULL, nombre varchar(255) NOT NULL UNIQUE, PRIMARY KEY (id));
CREATE TABLE UbicacionxItem (id SERIAL NOT NULL,coordenadaX int4 NOT NULL, coordenadaY int4 NOT NULL, Mapaid int4 NOT NULL, Gimnasioid int4 NOT NULL, Itemid int4 NOT NULL, PRIMARY KEY(id));
CREATE TABLE UnidadMetrica (id SERIAL NOT NULL, metrica varchar(255) NOT NULL UNIQUE, PRIMARY KEY (id));
CREATE TABLE Usuario (id SERIAL NOT NULL, nombre varchar(255) NOT NULL, email varchar(255) NOT NULL UNIQUE, contraseña varchar(255) NOT NULL, fotoPerfil TEXT, admi int4 NOT NULL,token varchar(255), PRIMARY KEY (id));
CREATE TABLE UsuarioAdministrador (Usuarioid int4 NOT NULL, cedula float4 NOT NULL UNIQUE, puesto varchar(255) NOT NULL, verificado int4 NOT NULL, fechaDeRenovacion date NOT NULL, Gimnasioid int4, PRIMARY KEY (Usuarioid));
CREATE TABLE UsuarioCliente (Usuarioid int4 NOT NULL, genero varchar(255) NOT NULL, fechaDeNacimiento date NOT NULL, Gimnasioid int4, NivelActividadFisicaid int4, ObjetivoRutinaid int4 NOT NULL, Grupo_Muscularid int4 NOT NULL, PRIMARY KEY (Usuarioid));
CREATE TABLE UsuarioCliente_RestriccionMedica (UsuarioClienteid int4 NOT NULL, RestriccionMedicaid int4 NOT NULL, PRIMARY KEY (UsuarioClienteid, RestriccionMedicaid));
CREATE TABLE Valor (id SERIAL NOT NULL, valor float8, PerfilMedicoid int4, ValorEvaluacionFisicaid int4 NOT NULL, PRIMARY KEY (id));
CREATE TABLE ValorEvaluacionFisica (id SERIAL NOT NULL, nombre varchar(255) NOT NULL UNIQUE, descripcion varchar(255) NOT NULL, UnidadMetricaid int4, PRIMARY KEY (id));
CREATE TABLE VideoEjercicio (id SERIAL NOT NULL, video bytea, Ejercicioid int4, PRIMARY KEY (id));
ALTER TABLE Rutina ADD CONSTRAINT FKRutina624241 FOREIGN KEY (UsuarioClienteUsuarioid) REFERENCES UsuarioCliente (Usuarioid);
ALTER TABLE ProgresoxEjercicio ADD CONSTRAINT FKProgresoxE847796 FOREIGN KEY (UsuarioClienteUsuarioid) REFERENCES UsuarioCliente (Usuarioid);
ALTER TABLE UsuarioCliente ADD CONSTRAINT FKUsuarioCli14039 FOREIGN KEY (NivelActividadFisicaid) REFERENCES NivelActividadFisica (id);
ALTER TABLE ValorEvaluacionFisica ADD CONSTRAINT FKValorEvalu390301 FOREIGN KEY (UnidadMetricaid) REFERENCES UnidadMetrica (id);
ALTER TABLE UsuarioCliente ADD CONSTRAINT FKUsuarioCli371623 FOREIGN KEY (ObjetivoRutinaid) REFERENCES ObjetivoRutina (id);
ALTER TABLE UsuarioCliente ADD CONSTRAINT FKUsuarioCli462126 FOREIGN KEY (Gimnasioid) REFERENCES Gimnasio (id);
ALTER TABLE Equipo ADD CONSTRAINT FKEquipo467797 FOREIGN KEY (Usuarioid) REFERENCES UsuarioCliente (Usuarioid);
ALTER TABLE PerfilMedico ADD CONSTRAINT FKPerfilMedi657776 FOREIGN KEY (UsuarioClienteUsuarioid) REFERENCES UsuarioCliente (Usuarioid);
ALTER TABLE Valor ADD CONSTRAINT FKValor70700 FOREIGN KEY (PerfilMedicoid) REFERENCES PerfilMedico (id);
ALTER TABLE UsuarioAdministrador ADD CONSTRAINT FKUsuarioAdm388201 FOREIGN KEY (Gimnasioid) REFERENCES Gimnasio (id);
ALTER TABLE UsuarioAdministrador ADD CONSTRAINT FKUsuarioAdm474264 FOREIGN KEY (Usuarioid) REFERENCES Usuario (id);
ALTER TABLE UsuarioCliente ADD CONSTRAINT FKUsuarioCli595527 FOREIGN KEY (Usuarioid) REFERENCES Usuario (id);
ALTER TABLE Equipo ADD CONSTRAINT FKEquipo141710 FOREIGN KEY (Itemid) REFERENCES Item (id);
ALTER TABLE Equipo_Ejercicio ADD CONSTRAINT FKEquipo_Eje583416 FOREIGN KEY (EquipoItemid) REFERENCES Equipo (Itemid);
ALTER TABLE Equipo_Ejercicio ADD CONSTRAINT FKEquipo_Eje876701 FOREIGN KEY (Ejercicioid) REFERENCES Ejercicio (id);
ALTER TABLE Musculo_Ejercicio ADD CONSTRAINT FKMusculo_Ej214134 FOREIGN KEY (Musculoid) REFERENCES Musculo (id);
ALTER TABLE Musculo_Ejercicio ADD CONSTRAINT FKMusculo_Ej977336 FOREIGN KEY (Ejercicioid) REFERENCES Ejercicio (id);
ALTER TABLE RestriccionMedica_Ejercicio ADD CONSTRAINT FKRestriccio540963 FOREIGN KEY (RestriccionMedicaid) REFERENCES RestriccionMedica (id);
ALTER TABLE RestriccionMedica_Ejercicio ADD CONSTRAINT FKRestriccio46696 FOREIGN KEY (Ejercicioid) REFERENCES Ejercicio (id);
ALTER TABLE Rutina_Ejercicio ADD CONSTRAINT FKRutina_Eje435416 FOREIGN KEY (Rutinaid) REFERENCES Rutina (id);
ALTER TABLE Rutina_Ejercicio ADD CONSTRAINT FKRutina_Eje265289 FOREIGN KEY (Ejercicioid) REFERENCES Ejercicio (id);
ALTER TABLE Musculo_grupomuscular ADD CONSTRAINT FKmusculo_gr156442 FOREIGN KEY (Musculoid) REFERENCES Musculo (id);
ALTER TABLE Ejercicio_ProgresoxEjercicio ADD CONSTRAINT FKEjercicio_89028 FOREIGN KEY (Ejercicioid) REFERENCES Ejercicio (id);
ALTER TABLE Ejercicio_ProgresoxEjercicio ADD CONSTRAINT FKEjercicio_562307 FOREIGN KEY (ProgresoxEjercicioid) REFERENCES ProgresoxEjercicio (id);
ALTER TABLE Objetivo ADD CONSTRAINT FKObjetivo779110 FOREIGN KEY (UsuarioClienteUsuarioid) REFERENCES UsuarioCliente (Usuarioid);
ALTER TABLE ImagenEjercicio ADD CONSTRAINT FKImagenEjer607109 FOREIGN KEY (Ejercicioid) REFERENCES Ejercicio (id);
ALTER TABLE VideoEjercicio ADD CONSTRAINT FKVideoEjerc567052 FOREIGN KEY (Ejercicioid) REFERENCES Ejercicio (id);
ALTER TABLE Equipo ADD CONSTRAINT FKEquipo951496 FOREIGN KEY (tipoEquipoid) REFERENCES tipoEquipo (id);
ALTER TABLE Mapa ADD CONSTRAINT FKMapa331252 FOREIGN KEY (Gimnasioid) REFERENCES Gimnasio (id);
ALTER TABLE UbicacionxItem ADD CONSTRAINT FKUbicacionx225855 FOREIGN KEY (Mapaid) REFERENCES Mapa (id);
ALTER TABLE Valor ADD CONSTRAINT FKValor374246 FOREIGN KEY (ValorEvaluacionFisicaid) REFERENCES ValorEvaluacionFisica (id);
ALTER TABLE Gimnasio_Item ADD CONSTRAINT FKGimnasio_I895684 FOREIGN KEY (Gimnasioid) REFERENCES Gimnasio (id);
ALTER TABLE Gimnasio_Item ADD CONSTRAINT FKGimnasio_I423598 FOREIGN KEY (Itemid) REFERENCES Item (id);
ALTER TABLE UsuarioCliente_RestriccionMedica ADD CONSTRAINT FKUsuarioCli729667 FOREIGN KEY (UsuarioClienteid) REFERENCES UsuarioCliente (Usuarioid);
ALTER TABLE UsuarioCliente_RestriccionMedica ADD CONSTRAINT FKUsuarioCli638662 FOREIGN KEY (RestriccionMedicaid) REFERENCES RestriccionMedica (id);
ALTER TABLE UbicacionxItem ADD CONSTRAINT FKUbicacionx387642 FOREIGN KEY (Gimnasioid, Itemid) REFERENCES Gimnasio_Item (Gimnasioid, Itemid);
ALTER TABLE Rutina ADD CONSTRAINT FKRutina305431 FOREIGN KEY (Grupo_Muscularid) REFERENCES Grupo_Muscular (id);
ALTER TABLE UsuarioCliente ADD CONSTRAINT FKUsuarioCli330627 FOREIGN KEY (Grupo_Muscularid) REFERENCES Grupo_Muscular (id);
ALTER TABLE Musculo_grupomuscular ADD CONSTRAINT FKmusculo_gr647336 FOREIGN KEY (Grupo_Muscularid) REFERENCES Grupo_Muscular (id);

