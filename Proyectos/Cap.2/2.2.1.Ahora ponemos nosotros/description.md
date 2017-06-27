#Proyecto 2.2.1. Ahora ponemos nosotros

¡Ahora es tu turno de usar Gobstones! Construí un programa que haga que la máquina al ejecutarlo ponga 4 bolitas, una de cada color, en la celda actual del tablero. O sea, el programa debe indicar que, comenzando con el tablero inicial de la izquierda, la máquina produzca el tablero final de la derecha.

<center>
![Tableros inicial y final: partiendo del primero, tenés que conseguir hacer el segundo][Imagen1]
</center>

Explorá el entorno para descubrir cómo agregar comandos primitivos a un programa y cómo ejecutar ese programa. Son varias cosas a descubrir. ¡Vamos, vos podés! Estos descubrimientos te van a permitir hacer cosas muy interesantes. (Te damos una pista: ¡mirá la “caja de herramientas” que está a la izquierda!)

<center>
![Caja de herramientas][Imagen2]
</center>

<style>
table, th {
    border: 1px solid black;
    text-align: left;
}
</style>
<center>
<table style="width:80%">
  <tr><th>
    <b>Pastilla:</b> Para tener en cuenta
  </th></tr>
  <tr><th>
  Los colores de las bolitas en Gobstones son <code>Azul</code>, <code>Negro</code>, <code>Rojo</code> y <code>Verde</code>. Llamamos tablero  inicial al tablero en el que la máquina empieza a ejecutar el programa. Y al tablero que la máquina deja cuando termina de ejecutar el programa lo llamamos tablero final. La celda actual es la celda que el cabezal tiene justo debajo, y es la única en la que puede realizar acciones en cada momento.
  </th></tr>
</table>
<p>
<table style="width:80%">
  <tr><th>
    <b>Pastilla:</b> Cuestión de argumento 
  </th></tr>
  <tr><th>
  El comando primitivo <code>Poner</code> tiene un agujero. En ese agujero hay que poner un color. Al valor que ponés en el agujero se lo llama argumento. Por ejemplo, <code>Rojo</code> es el argumento en <code>Poner(Rojo)</code>.
  </th></tr>
</table>
</center>

[Enunciado en PDF][PDF]

[Imagen1]: https://raw.githubusercontent.com/gobstones/proyectos-jr/master/Proyectos/Cap.2/2.2.1.Ahora%20ponemos%20nosotros/Imagen1-small.png "Tableros inicial y final: partiendo del primero, tenés que conseguir hacer el segundo"

[Imagen2]: https://raw.githubusercontent.com/gobstones/proyectos-jr/master/Proyectos/Cap.2/2.2.1.Ahora%20ponemos%20nosotros/Imagen2-small.png "Caja de herramientas"

[PDF]: https://raw.githubusercontent.com/gobstones/proyectos-jr/master/Proyectos/Cap.2/2.2.1.Ahora%20ponemos%20nosotros/description.pdf "Enunciado de 'Ahora ponemos nosotros' en PDF"