# ¿Cómo funciona enviar un correo electrónico?

> NO EXISTE LA NUBE, LA NUBE ES UNA COMPUTADORA (GENERALMENTE CON MUCHA CAPACIDAD DE PROCESAMIENTO) DE ALGUIEN O DE ALGUNA COMPAÑIA.

Al enviar enter o dar click al boton de enviar:

- El teclado o mouse manda una señal digital eléctrica al microprocesador (evento del periferico de entrada)
- El cpu, mediante codigo binario, manda esa señal a una capa mas alta de software en el sistema operativo que interpreta esa señal, esta capa de software es intermediario entre los diferentes dispositivos de hardware y las capas mas arriba del sistema. (HAL-DRIVERS)
- El sistema operativo detecta en que estado estamos, donde esta ubicado el usuario (en el caso del correo, en un navegador o cliente de correo), por lo cual sube una capa mas arriba, en la que se está ejecutando el navegador o cliente de correo.
- El N o CC entiende esa señal y la ubica en una capa mas arriba de software, mas precisamente en donde funciona internet del lado del usuario (FRONTEND: HTML, CSS, JAVASCRIPT). La señal del evento llega al boton enviar representado por una pieza de codigo html-css, el codigo de js reconoce el evento.
- JS encapsula (formato de archivo)en un archivo JSON (JavaScript Object Notation) lo que escribimos en el navegador mediante un API(Aplication Program Interface) llamado AJAX (Asynchronus JavaScript and XML)
- Ajax envia la informacion a un servidor sin necesidad de recargar la pagina, mediante un protocolo preestablecido de envio de datos (API REST) y HTTP (Hyper Text Transfer Protocol)
- La informacion pasa a la capa de internet o de transporte, para solicitar la direccion ip asociada al nombre de dominio del sitio, a un DNS (Domain Name Server)
- Una vez conocida la ip del servidor de correo 
- La inforamcion pasa por otras capas inferiores de red, para llegar al servidor (TCP/IP, Ethernet, etc)
- Al llegar al servidor, la info pasa a traves del sistema operativo del server (linux)
- llega al software servidor web nginx/apache con lenguajes de programacion que procesan los datos (Java, PHP, Python, Ruby, etc)
- Los lenguajes se comunican con la base de datos (Postgres, Oracle, Mysql, mongodb)
- De la base de datos se obtiene la direccion de correo, mediante protocolos de correo en capa de aplicación se mandan al server final dedicado a correo (platzi.com)
- De ahi pasa al dispositivo que recibira el correo, un server de notificaciones avisa al dispositivo.