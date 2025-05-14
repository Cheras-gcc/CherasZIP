# CherasZIP
## Descripción
Compresor de archivos simple basado en el algoritmo de compresión de Huffman.<br>
Permite codificar y descodificar archivos empleando el algoritmo de Huffman, un método<br>
de compresión eficiente y sin pérdidas cuya idea es asignar códigos binarios más cortos a<br>
los caracteres aparecidos con mayor frecuencia.<br>

Proyecto personal con fines puramente académicos.<br>

## Funcionamiento

Obtener el ejecutable CherasZIP.exe del directorio /build.<br>
Actualmente, limitado su uso a plataformas Windows mediante CMD.<br>
<pre>
  Modo de uso (compresión) - Obtención del archivo comprimido file.extension.cheras
  >> .\CherasZIP.exe .\file.extension encode
  
  Modo de uso (descompresión) - específicamente diseñado para archivos .cheras propios del compresor CherasZIP.
  >> .\CherasZIP.exe .\file.extension.cheras decode
</pre>

## Características
- Compresión de archivos mediante algoritmo de Huffman.
- Descompresión precisa y sin pérdida.
- Interfaz por línea de comandos simple.
- Implementado en C.

### Estructura del proyecto
<pre>
  CherasZIP
  |____ build/
  |____ include/
  ||________ cola.h
  ||________ huffman.h
  |____ src/
  ||________ cola.c
  ||________ huffman.c
  ||________ main.c
  |____ Makefile
</pre>
