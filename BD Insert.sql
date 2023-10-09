-- Insertando datos en la tabla Usuario
INSERT INTO Usuario(nombre, email, contraseña, fotoPerfil, admi) VALUES ('Oscar Mejia', 'oscarmejia@gmail.com', '123abc', NULL, 1);
INSERT INTO Usuario(nombre, email, contraseña, fotoPerfil, admi) VALUES ('Gabriela García', 'gabriela.garcia@gmail.com', '1234abcd', NULL, 0);

-- Insertando datos en la tabla Gimnasio
INSERT INTO Gimnasio(nombre, pisos, direccion, barrio, imagenGimnasio) VALUES ('FitnessWorld Gym', 3, 'Calle #123', 'Ciudad Deportiva', NULL);

-- Insertando datos en la tabla UsuarioAdministrador
INSERT INTO UsuarioAdministrador(Usuarioid, cedula, puesto, verificado, fechaDeRenovacion, Gimnasioid) VALUES (1, 1234567890, 'Instructor de Yoga', 1, '2023-08-11', NULL);

-- Insertando datos en la tabla Mapa
INSERT INTO Mapa(nivel, ancho, alto, version, Gimnasioid) VALUES (1, 10, 15, 1, 1);
INSERT INTO Mapa(nivel, ancho, alto, version, Gimnasioid) VALUES (2, 12, 20, 2, 1);
INSERT INTO Mapa(nivel, ancho, alto, version, Gimnasioid) VALUES (3, 8, 10, 3, 1);

-- Insertando datos en la tabla Item
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'camino');
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'puerta');
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'enfermeria');
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'baño');
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'entrada');
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'cafeteria');
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'lockers');
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'oficina');
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'muro');
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'escaleras');
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'Barra olímpica'); -- Para Sentadillas
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'Banco de pesas'); -- Para Press de banca
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'Barra con pesas'); -- Para Puentes de glúteos
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'Esterilla o colchoneta'); -- Para Crunches abdominales

-- Insertando datos en la tabla Gimnasio_Item
INSERT INTO Gimnasio_Item(Gimnasioid, Itemid, Cantidad) VALUES (1, 1, 2);
INSERT INTO Gimnasio_Item(Gimnasioid, Itemid, Cantidad) VALUES (1, 2, 5);

-- Insertando datos en la tabla UbicacionxItem
INSERT INTO UbicacionxItem(coordenadaX, coordenadaY, Mapaid, Gimnasioid, Itemid) VALUES (2, 3, 1, 1, 1);

-- Insertando datos en la tabla tipoEquipo
INSERT INTO tipoEquipo(nombre) VALUES ('pesos');
INSERT INTO tipoEquipo(nombre) VALUES ('maquinas de peso');
INSERT INTO tipoEquipo(nombre) VALUES ('maquinas de cardio');
INSERT INTO tipoEquipo(nombre) VALUES ('complementos');

-- Insertando datos en la tabla Equipo
INSERT INTO Equipo(Itemid, referencia, UsuarioClienteUsuarioid, tipoEquipoid) VALUES (11, 'MarcaX Barra Olímpica Pro', NULL, 1); 
INSERT INTO Equipo(Itemid, referencia, UsuarioClienteUsuarioid, tipoEquipoid) VALUES (12, 'MarcaY Banco de Pesas Elite', NULL, 2); 
INSERT INTO Equipo(Itemid, referencia, UsuarioClienteUsuarioid, tipoEquipoid) VALUES (13, 'MarcaZ Barra con Pesas Advanced', NULL, 1);
INSERT INTO Equipo(Itemid, referencia, UsuarioClienteUsuarioid, tipoEquipoid) VALUES (14, 'MarcaW Esterilla Comfort', NULL, 4); 

-- Insertando datos en la tabla ObjetivoRutina
INSERT INTO ObjetivoRutina(nombre) VALUES ('Aumentar resistencia');
INSERT INTO ObjetivoRutina(nombre) VALUES ('Aumentar musculo');
INSERT INTO ObjetivoRutina(nombre) VALUES ('Aumentar fuerza');

-- Insertando datos en la tabla NivelActividadFisica
INSERT INTO NivelActividadFisica(titulo) VALUES ('leve');
INSERT INTO NivelActividadFisica(titulo) VALUES ('moderado');
INSERT INTO NivelActividadFisica(titulo) VALUES ('energico');

-- Insertando datos en la tabla Grupo_muscular
INSERT INTO Grupo_Muscular(nombre, ubicacion) VALUES ('cuadriceps', 0); -- Tren inferior
INSERT INTO Grupo_Muscular(nombre, ubicacion) VALUES ('pectoral', 1); -- Tren superior
INSERT INTO Grupo_Muscular(nombre, ubicacion) VALUES ('gluteo', 0); -- Tren inferior
INSERT INTO Grupo_Muscular(nombre, ubicacion) VALUES ('abdomen', 1); -- Tren superior

-- Insertando datos en la tabla UsuarioCliente
INSERT INTO UsuarioCliente(Usuarioid, genero, fechaDeNacimiento, Gimnasioid, NivelActividadFisicaid, ObjetivoRutinaid, Grupo_Muscularid) VALUES (2, 'F', '2001-12-09', 1, 1, 1, 1);

-- Insertando datos en la tabla Rutina
INSERT INTO Rutina(horaI, horaF, dia, duracion, cantEjercicios, UsuarioClienteUsuarioid, Grupo_Muscularid) VALUES ('07:00:00', '09:00:00', 'Lunes', '02:00:00', 1, 2, 1);

-- Insertando datos en la tabla Musculo
INSERT INTO Musculo(nombreMusculo) VALUES ('Vastro intermedio'); -- cuadriceps
INSERT INTO Musculo(nombreMusculo) VALUES ('Vasto medial'); -- cuadriceps
INSERT INTO Musculo(nombreMusculo) VALUES ('Vasto lateral'); -- cuadriceps
INSERT INTO Musculo(nombreMusculo) VALUES ('Recto femoral'); -- cuadriceps
INSERT INTO Musculo(nombreMusculo) VALUES ('Pectoral mayor'); -- pectorales
INSERT INTO Musculo(nombreMusculo) VALUES ('Pectoral menor'); -- pectorales
INSERT INTO Musculo(nombreMusculo) VALUES ('Serrato anterior'); -- pectorales
INSERT INTO Musculo(nombreMusculo) VALUES ('Gluteo mayor'); --gluteo
INSERT INTO Musculo(nombreMusculo) VALUES ('Gluteo medio'); --gluteo
INSERT INTO Musculo(nombreMusculo) VALUES ('Gluteo menor'); --gluteo
INSERT INTO Musculo(nombreMusculo) VALUES ('Recto abdominal'); -- abdomen
INSERT INTO Musculo(nombreMusculo) VALUES ('Oblicuo externo'); -- abdomen
INSERT INTO Musculo(nombreMusculo) VALUES ('Oblicuo interno'); -- abdomen
INSERT INTO Musculo(nombreMusculo) VALUES ('Transverso del abdomen'); -- abdomen

-- Insertando datos en la tabla Musculo_grupomuscular

-- Relaciones para cuadriceps
INSERT INTO Musculo_grupomuscular(Musculoid, Grupo_Muscularid) VALUES (1, 1);
INSERT INTO Musculo_grupomuscular(Musculoid, Grupo_Muscularid) VALUES (2, 1);
INSERT INTO Musculo_grupomuscular(Musculoid, Grupo_Muscularid) VALUES (3, 1);
INSERT INTO Musculo_grupomuscular(Musculoid, Grupo_Muscularid) VALUES (4, 1);

-- Relaciones para pectorales
INSERT INTO Musculo_grupomuscular(Musculoid, Grupo_Muscularid) VALUES (5, 2);
INSERT INTO Musculo_grupomuscular(Musculoid, Grupo_Muscularid) VALUES (6, 2);
INSERT INTO Musculo_grupomuscular(Musculoid, Grupo_Muscularid) VALUES (7, 2);

-- Relaciones para gluteo
INSERT INTO Musculo_grupomuscular(Musculoid, Grupo_Muscularid) VALUES (8, 3);
INSERT INTO Musculo_grupomuscular(Musculoid, Grupo_Muscularid) VALUES (9, 3);
INSERT INTO Musculo_grupomuscular(Musculoid, Grupo_Muscularid) VALUES (10, 3);

-- Relaciones para abdomen
INSERT INTO Musculo_grupomuscular(Musculoid, Grupo_Muscularid) VALUES (11, 4);
INSERT INTO Musculo_grupomuscular(Musculoid, Grupo_Muscularid) VALUES (12, 4);
INSERT INTO Musculo_grupomuscular(Musculoid, Grupo_Muscularid) VALUES (13, 4);
INSERT INTO Musculo_grupomuscular(Musculoid, Grupo_Muscularid) VALUES (14, 4);

-- Insertando datos en la tabla Ejercicio
INSERT INTO Ejercicio(nombre, instruccionEjecucion, instruccionRespiracion) VALUES ('Sentadillas', 'Comienza de pie con los pies separados al ancho de los hombros. Mantén la espalda recta y el pecho elevado. Al bajar, empuja las caderas hacia atrás como si te fueras a sentar en una silla. Mantén las rodillas en línea con los pies y no dejes que se desplacen hacia adelante más allá de los dedos de los pies. Baja hasta que tus muslos estén paralelos al suelo o hasta donde te sientas cómodo. Regresa a la posición inicial empujando a través de los talones.', 'Inhala al bajar. Exhala al subir.');
INSERT INTO Ejercicio(nombre, instruccionEjecucion, instruccionRespiracion) VALUES ('Press de banca', 'Acuéstate en una banca con los pies firmemente en el suelo. Agarra la barra con un agarre un poco más ancho que el ancho de los hombros. Levanta la barra del soporte y mantén los brazos extendidos. Baja la barra hacia el pecho de manera controlada. Empuja la barra hacia arriba hasta que los brazos estén completamente extendidos.', 'Inhala al bajar la barra. Exhala al empujar la barra hacia arriba.');
INSERT INTO Ejercicio(nombre, instruccionEjecucion, instruccionRespiracion) VALUES ('Puentes de glúteos', 'Siéntate en el suelo con una banca detrás de ti y una barra cargada sobre tus caderas. Apoya la parte superior de la espalda en la banca y asegúrate de que tus hombros estén en el borde de la misma. Empuja a través de tus talones y levanta tus caderas hacia el techo, apretando los glúteos en la parte superior. Baja las caderas hacia el suelo de manera controlada.', 'Inhala al bajar las caderas. Exhala al levantar las caderas.');
INSERT INTO Ejercicio(nombre, instruccionEjecucion, instruccionRespiracion) VALUES ('Crunches abdominales', 'Acuéstate en el suelo con las rodillas dobladas y los pies planos en el suelo. Coloca tus manos detrás de tu cabeza o cruzadas sobre el pecho. Levanta la parte superior del cuerpo del suelo, contrayendo los músculos abdominales. Baja de nuevo de manera controlada.', 'Exhala al levantar la parte superior del cuerpo. Inhala al bajar.');

-- Insertando datos en la tabla ImagenEjercicio 
INSERT INTO ImagenEjercicio(imagen, Ejercicioid) VALUES (NULL,1);

-- Insertando datos en la tabla VideoEjercicio 
INSERT INTO VideoEjercicio(video, Ejercicioid) VALUES (NULL,1);

-- Insertando datos en la tabla Equipo_Ejercicio
INSERT INTO Equipo_Ejercicio(EquipoItemid, Ejercicioid) VALUES (11, 1); -- Barra Olímpica Pro para Sentadillas
INSERT INTO Equipo_Ejercicio(EquipoItemid, Ejercicioid) VALUES (12, 2); -- Banco de Pesas Elite para Press de banca
INSERT INTO Equipo_Ejercicio(EquipoItemid, Ejercicioid) VALUES (13, 3); -- Barra con Pesas Advanced para Puentes de glúteos
INSERT INTO Equipo_Ejercicio(EquipoItemid, Ejercicioid) VALUES (14, 4); -- Esterilla Comfort para Crunches abdominales

-- Insertando datos en la tabla RestriccionMedica
INSERT INTO RestriccionMedica(nombreLimitacion) VALUES ('Lesiones de rodilla');
INSERT INTO RestriccionMedica(nombreLimitacion) VALUES ('Lesiones en el hombro');
INSERT INTO RestriccionMedica(nombreLimitacion) VALUES ('Lesiones de cadera');
INSERT INTO RestriccionMedica(nombreLimitacion) VALUES ('Hernias abdominales');

-- Insertando datos en la tabla RestriccionMedica_Ejercicio
INSERT INTO RestriccionMedica_Ejercicio(RestriccionMedicaid, Ejercicioid) VALUES (1, 1); -- Lesiones de rodilla para Sentadillas
INSERT INTO RestriccionMedica_Ejercicio(RestriccionMedicaid, Ejercicioid) VALUES (2, 2); -- Lesiones en el hombro para Press de banca
INSERT INTO RestriccionMedica_Ejercicio(RestriccionMedicaid, Ejercicioid) VALUES (3, 3); -- Lesiones de cadera para Puentes de glúteos
INSERT INTO RestriccionMedica_Ejercicio(RestriccionMedicaid, Ejercicioid) VALUES (4, 4); -- Hernias abdominales para Crunches abdominales

-- Insertando datos en la tabla Musculo_Ejercicio

-- Relacionando los músculos del cuádriceps con el ejercicio de Sentadillas
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (1, 1); -- Vastro intermedio
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (2, 1); -- Vasto medial
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (3, 1); -- Vasto lateral
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (4, 1); -- Recto femoral

-- Relacionando los músculos pectorales con el ejercicio de Press de banca
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (5, 2); -- Pectoral mayor
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (6, 2); -- Pectoral menor
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (7, 2); -- Serrato anterior

-- Relacionando los músculos del glúteo con el ejercicio de Puentes de glúteos
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (8, 3); -- Gluteo mayor
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (9, 3); -- Gluteo medio
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (10, 3); -- Gluteo menor

-- Relacionando los músculos del abdomen con el ejercicio de Crunches abdominales
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (11, 4); -- Recto abdominal
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (12, 4); -- Oblicuo externo
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (13, 4); -- Oblicuo interno
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (14, 4); -- Transverso del abdomen

-- Insertando datos en la tabla Rutina_Ejercicio
INSERT INTO Rutina_Ejercicio(Rutinaid, Ejercicioid) VALUES (1, 1);

-- Insertando datos en la tabla ProgresoxEjercicio
INSERT INTO ProgresoxEjercicio(peso, fecha, valoracion, serie, repeticiones, comentarios, descansoEntreSeries, UsuarioClienteUsuarioid) VALUES (50, '2023-10-08', 5, 4, 12, 'Buen progreso', '00:01:30', 2);
INSERT INTO ProgresoxEjercicio(peso, fecha, valoracion, serie, repeticiones, comentarios, descansoEntreSeries, UsuarioClienteUsuarioid) VALUES (40, '2023-10-08', 4, 4, 12, 'Necesito mejorar la técnica', '00:01:30', 2);
INSERT INTO ProgresoxEjercicio(peso, fecha, valoracion, serie, repeticiones, comentarios, descansoEntreSeries, UsuarioClienteUsuarioid) VALUES (30, '2023-10-08', 4, 4, 12, 'Sentí un poco de dolor en la espalda', '00:01:30', 2);
INSERT INTO ProgresoxEjercicio(peso, fecha, valoracion, serie, repeticiones, comentarios, descansoEntreSeries, UsuarioClienteUsuarioid) VALUES (20, '2023-10-08', 5, 4, 12, 'Me sentí bien haciendo este ejercicio', '00:01:30', 2);

-- Insertando datos en la tabla Ejercicio_ProgresoxEjercicio
INSERT INTO Ejercicio_ProgresoxEjercicio(Ejercicioid, ProgresoxEjercicioid) VALUES (1, 1); -- Sentadillas
INSERT INTO Ejercicio_ProgresoxEjercicio(Ejercicioid, ProgresoxEjercicioid) VALUES (2, 2); -- Press de banca
INSERT INTO Ejercicio_ProgresoxEjercicio(Ejercicioid, ProgresoxEjercicioid) VALUES (3, 3); -- Puentes de glúteos
INSERT INTO Ejercicio_ProgresoxEjercicio(Ejercicioid, ProgresoxEjercicioid) VALUES (4, 4); -- Crunches abdominales

-- Insertando datos en la tabla Objetivo
INSERT INTO Objetivo(titulo, fechaInicio, fechaFinal, estado, descripcionObjetivo, UsuarioClienteUsuarioid) VALUES ('Desafío de Pérdida de Peso', '2023-06-01', '2023-10-30', 0, 'Bajare 4kg', 2);
INSERT INTO Objetivo(titulo, fechaInicio, fechaFinal, estado, descripcionObjetivo, UsuarioClienteUsuarioid) VALUES ('Desafío de Fuerza y Resistencia','2023-09-15','2023-12-15',1,'Mi Peso maximo en cualquier ejercicio sera de 100lbs',2);

-- Insertando datos en la tabla UsuarioCliente_RestriccionMedica
INSERT INTO UsuarioCliente_RestriccionMedica(UsuarioClienteUsuarioid, RestriccionMedicaid) VALUES (2, 1);

-- Insertando datos en la tabla UnidadMetrica
INSERT INTO UnidadMetrica(metrica) VALUES ('kg');
INSERT INTO UnidadMetrica(metrica) VALUES ('cm');
INSERT INTO UnidadMetrica(metrica) VALUES ('%');

-- Insertando datos en la tabla ValorEvaluacionFisica
INSERT INTO ValorEvaluacionFisica(nombre, descripcion, UnidadMetricaid) VALUES ('Masa Muscular', 'Es la cantidad total de tejido múscular blando de su cuerpo.', 3);
INSERT INTO ValorEvaluacionFisica(nombre, descripcion, UnidadMetricaid) VALUES ('Masa Ósea','Mide la cantidad de minerales que hay en sus huesos.',1);
INSERT INTO ValorEvaluacionFisica(nombre, descripcion, UnidadMetricaid) VALUES ('Masa Magra Corporal kg','La masa magra corporal hace referencia al peso total de todos los componentes de su cuerpo, menos la grasa. Se relaciona positivamente con el ejercicio fiisco y los atletas suelen tener un alto porcentaje de masa magra corporal.',1);
INSERT INTO ValorEvaluacionFisica(nombre, descripcion, UnidadMetricaid) VALUES ('Grasa Visceral','La grasa visceral es un tipo de grasa corporal presente principalmente en la cavidad abdominal, que rodea los órganos para sostenerlos, estabilizarlos y protegerlos.',NULL);
INSERT INTO ValorEvaluacionFisica(nombre, descripcion, UnidadMetricaid) VALUES ('Peso','El peso hace referencia al peso total del cuerpo.',1);
INSERT INTO ValorEvaluacionFisica(nombre, descripcion, UnidadMetricaid) VALUES ('Masa Muscular %','El porcentaje de masa múscular es similar al porcentaje de grasa corporal, y la masa múscular total corresponde a un porcentaje de su peso total.',3);
INSERT INTO ValorEvaluacionFisica(nombre, descripcion, UnidadMetricaid) VALUES ('Agua %','El porcentaje de agua (%)  indica la cantidad de agua presente en el cuerpo en relación con su peso total. Es una medida relevante para la hidratación y seguimiento de la salud general.',3);
INSERT INTO ValorEvaluacionFisica(nombre, descripcion, UnidadMetricaid) VALUES ('MB kcal','La tasa metabólica basal (TMB) mide la energía necesaria para que su cuerpo siga funcionando en un estado de reposo.',NULL);
INSERT INTO ValorEvaluacionFisica(nombre, descripcion, UnidadMetricaid) VALUES ('Altura','La altura es la medida vertical de un objeto o persona desde su base o nivel inferior hasta su punto más alto.',2);
INSERT INTO ValorEvaluacionFisica(nombre, descripcion, UnidadMetricaid) VALUES ('Masa Grasa Corporal','Este es el peso total de toda la grasa de su cuerpo, incluida la grasa visceral. La grasa es importante para almacenar energía, oxígeno y calor. También ayuda a aislar y proteger los organos, además de regular los niveles de hormonas.',1);
INSERT INTO ValorEvaluacionFisica(nombre, descripcion, UnidadMetricaid) VALUES ('Grasa Corporal %','El porcentaje de grasa corporal hace referencia a la proporción de grasa en el cuerpo',3);
INSERT INTO ValorEvaluacionFisica(nombre, descripcion, UnidadMetricaid) VALUES ('Masa Ósea %','Es el porcentaje de hueso en relación con el peso. El contenido óseo promedio de los adultos esta entre el 3% y el 5%',3);
INSERT INTO ValorEvaluacionFisica(nombre, descripcion, UnidadMetricaid) VALUES ('IMC','El IMC (índice de masa corporal) mide su peso en comparación con su altura.',NULL);

-- Insertando datos en la tabla PerfilMedico
INSERT INTO PerfilMedico(fecha, UsuarioClienteUsuarioid) VALUES ('2023-06-07', 2);

-- Insertando datos en la tabla Valor
INSERT INTO Valor(valor, PerfilMedicoid, ValorEvaluacionFisicaid) VALUES (8.80, 1, 1);
INSERT INTO Valor(valor, PerfilMedicoid, ValorEvaluacionFisicaid) VALUES (2.40,1,2);
INSERT INTO Valor(valor, PerfilMedicoid, ValorEvaluacionFisicaid) VALUES (41.20,1,3);
INSERT INTO Valor(valor, PerfilMedicoid, ValorEvaluacionFisicaid) VALUES (3.0,1,4);
INSERT INTO Valor(valor, PerfilMedicoid, ValorEvaluacionFisicaid) VALUES (57.50,1,5);
INSERT INTO Valor(valor, PerfilMedicoid, ValorEvaluacionFisicaid) VALUES (67.5,1,6);
INSERT INTO Valor(valor, PerfilMedicoid, ValorEvaluacionFisicaid) VALUES (49.2,1,7);
INSERT INTO Valor(valor, PerfilMedicoid, ValorEvaluacionFisicaid) VALUES (1255.0,1,8);
INSERT INTO Valor(valor, PerfilMedicoid, ValorEvaluacionFisicaid) VALUES (161,1,9);
INSERT INTO Valor(valor, PerfilMedicoid, ValorEvaluacionFisicaid) VALUES (16.20,1,10);
INSERT INTO Valor(valor, PerfilMedicoid, ValorEvaluacionFisicaid) VALUES (28.3,1,11);
INSERT INTO Valor(valor, PerfilMedicoid, ValorEvaluacionFisicaid) VALUES (4.2,1,12);
INSERT INTO Valor(valor, PerfilMedicoid, ValorEvaluacionFisicaid) VALUES (21.6,1,13);









