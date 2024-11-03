Feature: US18 - Recomendaciones Personalizadas
    Como persona con discapacidad, 
    Quiero recibir recomendaciones personalizadas basadas en mis necesidades específicas, 
    Para tener una experiencia más satisfactoria

Scenario Outline: Recibir recomendaciones basadas en preferencias
Dado que la <persona discapacitada> ha iniciado sesión en la plataforma
Y ha completado su <perfil> con <preferencias de accesibilidad>,
Cuando accede a la <seccion de recomendaciones>,
Entonces el sistema debería mostrar <servicios> que se alineen con sus preferencias

Scenario Outline: Actualizar preferencias de usuario
Dado que la <persona discapacitada> desea cambiar sus <preferencias de accesibilidad>,
Cuando edita su <perfil> y guarda los <cambios>,
Entonces el sistema debería actualizar las <recomendaciones> en función de las nuevas preferencias

Scenario Outline: Evaluar la precisión de las recomendaciones
Dado que la <persona discapacitada> ha recibido varias <recomendaciones>,
Cuando selecciona la opción de evaluar la <precision>,
Entonces el sistema debería permitirle <calificar> cuán útiles fueron las recomendaciones

Scenario Outline: Ver historial de recomendaciones
Dado que la <persona discapacitada> quiere revisar <recomendaciones pasadas>,
Cuando accede a su <historial de recomendaciones>,
Entonces el sistema debería mostrar una <lista de servicios> que le han sido recomendados anteriormente
