Feature: US02 - Sugerencias de rutas accesibles
    Como persona con discapacidad, 
    Quiero recibir sugerencias de rutas accesibles, 
    Para moverme por la ciudad de manera más segura y eficiente

Scenario Outline: Acceso a sugerencias de rutas accesibles

Dado que el <usuario> ha iniciado sesión en la plataforma,
Y el <usuario> ha ingresado su <ubicacion actual>,
Cuando el <usuario> selecciona la opción <Buscar rutas accesibles>,
Entonces el sistema muestra una <lista de rutas accesibles> disponibles
en la zona, optimizadas para movilidad reducida

Examples: Datos de entrada
    | usuario | ubicacion actual |
    | jsmp0502@gmail.com  | Av. Javier Prado Este 2010, San Borja - Centro Comercial La Rambla |

Examples: Datos de salida
    | lista de rutas accesibles |
    | Línea 1 Metro de Lima, Bus OM24, Bus OM24, Bus 1703, Bus CR38 | 

Scenario Outline: Selección de una ruta accesible
Dado que el <usuario> está viendo la <lista de rutas accesibles> sugeridas,
Y la plataforma ha mostrado varias opciones basadas en su <ubicacion>,
Cuando el <usuario> selecciona una <ruta especifica>,
Entonces el sistema muestra los <detalles de la ruta>, incluyendo
<accesos>, <rampas> y <condiciones de las aceras>,
Y ofrece la opción de <guardar la ruta como favorita>

Examples: Datos de entrada
    | usuario | ruta especifica |
    | jsmp0502@gmail.com | Línea 1 Metro de Lima |
    
Examples: Datos de salida
    | accesos | rampas | condiciones de las aceras |
    | Ascensores, asiento reservado baño para discapacitados | rampas metálicas | Aptas para el paso de personas con silla de ruedas | 

Scenario Outline: Notificación sobre una nueva ruta accesible
Dado que el <usuario> tiene activadas las <notificaciones> para rutas accesibles,
Y el sistema ha detectado una <nueva ruta accesible> cercana a su <ubicacion>,
Cuando se publica la nueva ruta en la plataforma,
Entonces el sistema envía una <notificacion> al <usuario> informándole sobre la nueva opción,
Y el <usuario> puede acceder directamente a los <detalles de la ruta> desde la notificación

Examples: Datos de entrada
    | usuario | notificaciones | ubicacion
    | jsmp0502@gmail.com | activadas | Av. Javier Prado Este 2010, San Borja - Centro Comercial La Rambla |

Examples: Datos de salida
    | notificacion | detalles de la ruta |
    | Nueva ruta accesible detectada cerca de tu ubicación | Ruta: Bus 1703 - Paradero La Cultura, Bus CR02 - Paradero Caminos del Inca, UPC Monterrico |

Scenario Outline: Actualización de rutas accesibles
Dado que el <usuario> utiliza una <ruta accesible> sugerida por la plataforma,
Y la ruta ha sido actualizada por las autoridades o por usuarios de la plataforma,
Cuando la actualización incluye mejoras o cambios importantes, como obras o nuevas rampas,
Entonces el sistema notifica al <usuario> sobre las actualizaciones,
Y permite al <usuario> ver los <cambios en el mapa interactivo> para planificar su viaje

Examples: Datos de entrada
    | usuario |
    | jsmp0502@gmail.com |
Examples: Datos de salida
    | ruta accesible | cambios en el mapa interactivo |
    | Línea 1 Metro de Lima | Vías del tren en reparación, es recomendable usar una ruta alterna |