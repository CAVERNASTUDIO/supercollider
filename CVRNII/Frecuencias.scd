/*________________________________________________García Aparicio Erik Alejandro
*/
s.boot;//iniciar el server boot, para escuchar los programas ctrl+enter


(//Para visualisar las frecuencias que vamos a manejar se puede ayudar de las siguientes lineas de codigo que muestran en pantalla las ventanas para visualizar graficamente los valores manejados.
FreqScope.new();
s.scope;
s.meter;
s.plotTree;
)
/*
FRECUENCIAS

El rango de frecuencias audibles por el ser humano es de 20 a 20,000 hz. Sin embargo, la audicion es mas sencible entre 2000 y 5000 hz.
Los sonidos debajo de 20hz se denominan infrasonidos y por arriba de los 20000hz se denominan ultrasonidos.
*/

(~vd="Variable sencible minima audible 2000Hz "++2000.cpsmidi++"midi";
      Pseq(
	[
	Pbind( \freq,Pn(2000))],inf).play;
2000.cpsmidi.postln;
~vd.postln;
)

(~vc="Variable sencible máxima audible 5000Hz "++5000.cpsmidi++"midi";
      Pseq(
	[
	Pbind( \freq,Pn(5000))],inf).play;
5000.cpsmidi.postln;
~vc.postln;
)

(~vm="Variable máxima audible 20000Hz "++20000.cpsmidi++"midi";
      Pseq(
	[
	Pbind( \freq,Pn(20000))],inf).play;
20000.cpsmidi.postln;
~vm.postln;
)

(~v="Variable minima audible 20Hz "++20.cpsmidi++"midi";
      Pseq(
	[
	Pbind( \freq,Pn(20))],inf).play;
20.cpsmidi.postln;
~v.postln;
)

/*
Apartado de analizis de frecuencias de una octava midi llamada afinacion estandar nombrado así en londres de el siglo XIX.
Definiremos si existe una proporcion entre las notas, y manipulares para encontrar nuevas octavas y nuevas formas de como manejar una AFINACION dentro de un instrumento.

   n  mdi  frecEst  Beethoven    XIX
  Do  60   261.63    277.03     245.13
  #b  61   277.18    293.58     292.58
  Re  62   293.665   309.065    277.165
  #b  63   311.137   326.537    294.637
  Mi  64   329.63    345.03     313.13
  Fa  65   349.23    364.63     332.73
  #b  66   370       385.4      353.5
  Sol 67   392       407.4      375.5
  #b  68   415.305   430.705    398.805
  La  69   440       455.4      423.5
  #b  70   466.16    481.56     449.66
  Si  71   493.883   549.283    477.383
  Do  72   523.251   538.651    506.751

Con una equivalencia de notas respecto a la proporcion de el LA440hz con las demas notas se realiza el arreglo para dar valores a la nueva escala
*/

//Escala de afinacion de el siglo XIX
(~v="Escala usada en el siglo XIX en C4 "++423.5++" Afinacion Estandar Siglo XIX";
      Pseq(
	[
		Pbind( \freq,Pseq([247.13,277.165,313.13,332.73,375.5,423.5,477.38,506.751]))],inf).play;
~v.postln;
)
//Escala de frecuencia afinacion estandar
(~v="Escala estandar de C4 "++440++" Afinacion Estandar";
      Pseq(
	[
		Pbind( \freq,Pseq([261.63,293.665,329.63,349.23,392,440,493.883,523.251]))],inf).play;
~v.postln;
)
//afinacion entre Reb y Do
(~v="Nueva Escala de C4 "++455.4++" Afinacion usada por Beethoven";
      Pseq(
	[
		Pbind( \freq,Pseq([277,309,345,365,409,455.4,511,540]))],inf).play;
~v.postln;
)
//afinacion oido segun el programador
(~v="Nueva Escala de C4 "++455.4++"MI PROPIA AFINACIÓN";
      Pseq(
	[
		Pbind( \freq,Pseq([276,309,345,365,409,455.9,511,540]))],inf).play;
//                          Do   Re Mi  Fa  Sol  La  Si   Do
/* como ejercicio se puede seleccionar un valalor de la nota que se ajuste para trabajar en un rango recomendamble de: +17>nota afinacion estandar<+17, donde a partir de una nota puedas seleccionar diferentes valores e intentar afinar TU PROPIA ESCALA DE NOTAS MAYOR*/
~v.postln;
)
// con estos datos puedes generar tu afinacion estandar para un instrumentoS de cuerdas (piano, arpa, guitarra, etc.)