Feature: US26 - Información sobre estacionamientos accesibles
    Como familiar, 
    Quiero acceder a información sobre la ubicación de estacionamientos accesibles cerca de mi destino,
    Para facilitar el transporte y reducir las complicaciones al llegar

Scenario Outline: Información sobre estacionamientos accesibles
Dado que el <familiar> ha iniciado sesión en la plataforma
Cuando introduce un <destino> en la búsqueda
Entonces el sistema mostrará la <ubicacion de estacionamientos accesibles cercanos al destino>,
con detalles sobre el <numero de espacios disponibles> y <restricciones>

Scenario Outline: Recepción de alertas sobre disponibilidad de estacionamientos
Dado que el <familiar> ha seleccionado un <estacionamiento> accesible cercano a su destino
Cuando se detectan cambios en la disponibilidad de los espacios
Entonces el sistema enviará una <notificacion actualizada> al familiar para que pueda ajustar su planificación

Scenario Outline: Navegación hacia el estacionamiento accesible
Dado que el <familiar> ha elegido un <estacionamiento> accesible desde la plataforma
Cuando selecciona la opción de navegación
Entonces el sistema proporcionará <instrucciones> paso a paso para llegar al estacionamiento de manera eficiente