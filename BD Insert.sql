INSERT INTO Usuario(nombre, email, contrasenna, fotoPerfil) VALUES ('Oscar Mejia', 'oscarmejia@gmail.com', '123abc',NULL);
INSERT INTO Usuario(nombre, email, contrasenna, fotoPerfil) VALUES ( 'Gabriela García', 'gabriela.garcia@gmail.com', '1234abcd', NULL);
INSERT INTO UsuarioAdministrador(Usuarioid, cedula, puesto, verificado, fechaDeRenovacion, Gimnasioid) VALUES (1, 1234567890, 'Instructor de Yoga', 1, '2023-08-11', NULL);
INSERT INTO Gimnasio(nombre, pisos, direccion, barrio, imagenGimnasio) VALUES ('FitnessWorld Gym', 3, 'Calle #123', 'Ciudad Deportiva',NULL);
INSERT INTO Mapa(nivel, ancho, alto, version, Gimnasioid) VALUES (1,10,15,1,1);
INSERT INTO Mapa(nivel, ancho, alto, version, Gimnasioid) VALUES (2,12,20,2,1);
INSERT INTO Mapa(nivel, ancho, alto, version, Gimnasioid) VALUES (3,8,10,3,1);
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
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'mancuernas Hexagonales');
INSERT INTO Item(imagen, nombre) VALUES (NULL, 'Set de Hipthrust');

INSERT INTO Gimnasio_Item(Gimnasioid, Itemid) VALUES (1, 1);
INSERT INTO Gimnasio_Item(Gimnasioid, Itemid) VALUES (1, 2);
INSERT INTO UbicacionxItem(coordenadaX, coordenadaY, Mapaid, Itemid) VALUES (2, 3, 1, 1);
INSERT INTO tipoEquipo(nombre) VALUES ('pesos');
INSERT INTO tipoEquipo(nombre) VALUES ('maquinas de peso');
INSERT INTO tipoEquipo(nombre) VALUES ('maquinas de cardio');
INSERT INTO Equipo(Itemid, referencia, UsuarioClienteUsuarioid, tipoEquipoid, Gimnasioid) VALUES (11,'Rouge Rubber Hex Dumbells',NULL,1,1);
INSERT INTO ObjetivoRutina(nombre) VALUES ('bajarPeso');
INSERT INTO ObjetivoRutina(nombre) VALUES ('aumentarMusculo');
INSERT INTO ObjetivoRutina(nombre) VALUES ('aumentarFuerza');
INSERT INTO NivelActividadFisica(titulo, descripcion) VALUES ('moderado','Si eres una persona que realiza actividades físicas que aumentan tu ritmo cardíaco y respiración, como caminar rápido, andar en bicicleta, bailar, nadar, entre otras, durante al menos 20  minutos al dia, entonces se puede considerar que tienes un nivel de actividad física moderada.');
INSERT INTO NivelActividadFisica(titulo, descripcion) VALUES ('leve','Si eres una persona que se mantiene sentada la mayor parte del día, no realiza actividad física regularmente  y evita las oportunidades de moverse, entonces probablemente se pueda considerar que tienes un estilo de vida sedentario.');
INSERT INTO NivelActividadFisica(titulo, descripcion) VALUES ('energico','Este nivel de actividad física es para personas que realizan ejercicios de alta intensidad como correr, levantar pesas, practicar deportes de equipo intensos, entre otros. Si eres una persona que realiza este tipo de actividades a un ritmo vigoroso y con una frecuencia regular, entonces se puede considerar que tienes un nivel de actividad física energética.');
INSERT INTO UsuarioCliente(Usuarioid, genero, fechaDeNacimiento, Gimnasioid, NivelActividadFisicaid, ObjetivoRutinaid) VALUES (2,'F','2001-12-09',1,1,1);
INSERT INTO Rutina(nombre, horaI, horaF, dia, duracion, cantEjercicios, UsuarioClienteUsuarioid) VALUES ('Rutina Hombros','07:00:00','09:00:00','L','02:00:00',1,2);
INSERT INTO Musculo(nombreMusculo) VALUES ('Tríceps');
INSERT INTO Musculo(nombreMusculo) VALUES ('Trapecio');
INSERT INTO Rutina_Musculo(Rutinaid, Musculoid) VALUES (1, 1);
INSERT INTO Rutina_Musculo(Rutinaid, Musculoid) VALUES (1, 2);

INSERT INTO ProgresoxEjercicio(peso, fecha, valoracion, serie, repeticiones, comentarios, UsuarioClienteUsuarioid) VALUES (15,'2023-05-07',4,4,8,'primera vez haciendo el ejercicio',2);
INSERT INTO Objetivo(titulo, fechaInicio, fechaFinal, estado, descripcionObjetivo, UsuarioClienteUsuarioid) VALUES ('Desafío de Pérdida de Peso','2023-06-01','2023-10-30',0,'Bajare 4kg',2);
INSERT INTO Objetivo(titulo, fechaInicio, fechaFinal, estado, descripcionObjetivo, UsuarioClienteUsuarioid) VALUES ('Desafío de Fuerza y Resistencia','2023-09-15','2023-12-15',1,'Mi Peso maximo en cualquier ejercicio sera de 100lbs',2);
INSERT INTO RestriccionMedica(nombreLimitacion) VALUES ('Escoliosis');
INSERT INTO RestriccionMedica(nombreLimitacion) VALUES ('Lesión en el Manguito Rotador');
INSERT INTO RestriccionMedica(nombreLimitacion) VALUES ('Tendinitis Rotuliana');
INSERT INTO RestriccionMedica(nombreLimitacion) VALUES ('Dolor Lumbar');
INSERT INTO RestriccionMedica(nombreLimitacion) VALUES ('Coxartrosis');

INSERT INTO UsuarioCliente_RestriccionMedica(UsuarioClienteUsuarioid, RestriccionMedicaid) VALUES (2, 1);
INSERT INTO UnidadMetrica(metrica) VALUES ('kg');
INSERT INTO UnidadMetrica(metrica) VALUES ('cm');
INSERT INTO UnidadMetrica(metrica) VALUES ('%');

INSERT INTO ValorEvaluacionFisica(nombre, descripcion, UnidadMetricaid) VALUES ('Masa Muscular','Es la cantidad total de tejido múscular blando de su cuerpo.', 3);
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

INSERT INTO PerfilMedico(fecha, UsuarioClienteUsuarioid) VALUES ('2023-06-07',2);

INSERT INTO Valor(valor, PerfilMedicoid, ValorEvaluacionFisicaid) VALUES (8.80,1,1);
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

INSERT INTO Ejercicio(nombre, serieReferencia, repeticionReferencia, instruccionEjecucion, instruccionRespiracion, descansoEntreSeries) VALUES ('Press de Hombro',4,12,'De pie, sostén las mancuernas a la altura de los hombros con las palmas hacia adelante, luego levanta las mancuernas hacia arriba extendiendo los brazos completamente. Baja las mancuernas lentamente hacia los hombros y repite el movimiento. Mantén la espalda recta y el núcleo activo para un mejor rendimiento.','Inspiración: Antes de comenzar el movimiento, inhala profundamente por la nariz mientras sostienes las mancuernas a la altura de los hombros.  Exhalación: A medida que levantas las mancuernas hacia arriba y extiendes los brazos, exhala lentamente por la boca.  Inspiración: Al bajar las mancuernas hacia los hombros, inhala nuevamente por la nariz para prepararte para la siguiente repetición.','00:01:00');
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (1,1);
INSERT INTO Musculo_Ejercicio(Musculoid, Ejercicioid) VALUES (2,1);
INSERT INTO Rutina_Ejercicio(Rutinaid, Ejercicioid) VALUES (1, 1);
INSERT INTO Ejercicio_ProgresoxEjercicio(Ejercicioid, ProgresoxEjercicioid) VALUES (1,1);
INSERT INTO RestriccionMedica_Ejercicio(RestriccionMedicaid, Ejercicioid) VALUES (1,1);
INSERT INTO Equipo_Ejercicio(EquipoItemid, Ejercicioid) VALUES (11, 1);
INSERT INTO ImagenEjercicio(imagen, Ejercicioid) VALUES (NULL,1);
INSERT INTO VideoEjercicio(video, Ejercicioid) VALUES (NULL,1);

