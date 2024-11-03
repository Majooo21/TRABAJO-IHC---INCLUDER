Feature: US17 - Reseñas sobre Accesibilidad de Servicios
    Como persona con discapacidad, 
    Quiero ver reseñas sobre la accesibilidad de diferentes servicios,
    Para tomar decisiones informadas sobre dónde ir

Scenario Outline: Escribir una reseña sobre un servicio
Dado que la <persona discapacitada> ha visitado un <servicio accesible>
Y ha iniciado sesión en la plataforma,
Cuando completa un <formulario de resenia>
Y hace clic en "Enviar",
Entonces el sistema debería agregar su <resenia> a la página del servicio
Y actualizar el <contador de resenias>

Scenario Outline: Leer reseñas de otros usuarios
Dado que la <persona discapacitada> está en la <pagina de un servicio>,
Cuando desplaza hacia abajo,
Entonces el sistema debería mostrar todas las <resenias> escritas por otros usuarios

Scenario Outline: Calificar un servicio
Dado que la <persona discapacitada> ha tenido una experiencia con un <servicio>,
Cuando selecciona una <calificacion>
Y hace clic en "Enviar",
Entonces el sistema debería actualizar la <puntuacion del servicio> en base a la calificación recibida

Scenario Outline: Filtrar reseñas por utilidad
Dado que la <persona discapacitada> está en la <pagina de resenias>,
Cuando elige filtrar las <reseñas> por "más útiles",
Entonces el sistema debería mostrar primero las <resenias> que han sido marcadas como útiles por otros usuarios