## Etiqueta de video

```html
<video src="./ruta/video.m4v#t=10,60" controls preload="auto" > <!-- en la parte de la ruta del video, 
    al final se agrega #t= para agregar el segundo de inicio y segundo de finalizacion de reproduccion al
    momento de dar play al video.
    cotrols agrega controles de reproduccion multimedia
    preload carga el video en el momento de renderizado de la pagina, no lo reproduce automaticamente
    solo lo carga rápido -->
</video>

<video controls preload="auto">
    <source src="./ruta/video.mp4"> <!-- Le ayuda al navegador a escoger los tipo de video que pueda
    renderizar -->
    <source src="./ruta/video.m4a">
    <source src="./ruta/video.avi">
    <source src="./ruta/video.mkv">
</video>
```