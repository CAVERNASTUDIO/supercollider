/*___________________________________________________GARCIA APARICIO ERIK ALEJANDRO
*/
//NOTA: usa CTrl + (tecla +) para manipular la visualizacion de el texto.

/*FRECUENCIAS*/
//----------------------------------------------------------------------------------------------------------
/*Al manipular frecuencias con los comandos \frec con el comando Pn(referido a nota) dentro de Pbind en este tipo desarrollo de código al reproducir un conjunto de notas, estas se reproducen en conjunto formando lo que se denomina una armonía, un conjunto de frecuencias correctas es conocido como acorde.  */

//____________________________________*/
/*ACORDES CON VALORES DE FRECUENCIA*/
//_____________________________________*/
/*Al hablar de valores midi se debe tomar en cuenta las equivalencias respecto a las frecuencias y el valor de los valores midi, estos se pueden identificar fácilmente con una tabla de equivalencias de valores midi.
puede consultar la siguiente liga:
https://musytech.com/introduccion-a-midi-y-controladores-midi-en-la-produccion-musical/
Para evitar calcular los acordes, existen diferentes dispositivos/instrumentos que identifican los acordes en un cuadernillo o ponen a disposición un archivo en línea para consulta, como puede ser un piano, un arpa, una guitarra etc. en este tipo de casos en específico es de gran ayuda contar con material de este tipo. Puede consultar directamente con la marca de su preferencia directamente en sus publicaciones, apoyarse de material como libros, revistas o publicaciones de estudiosos dentro de la materia o consultar con un experto o maestro dentro de el área.
*/

/*Con el concepto de piano de los acordes de piano podemos elegir valores de frecuencia que operen dentro de el rango necesario para realizar un acorde, con los valores midi debemos tomar los valores necesarios para trabajar en formato estándar con los valores de los acordes */

(
/*C Mayor*/
~cmay=[48,52,55];

(
~vasig="Acorde C Mayor"+~cmay;
~vasig.postln;
~cmay.postln;
~cmay.midicps.postln;
(
      c=Pseq(
	[
	Pbind( \freq,Pn(~cmay.midicps),

		)
],inf).play;
[~cmay].plot(~vasig,discrete:true);
)))
//-------------------------------------------------------*/

(/*E Menor*/
~emen=[52,55,59];

(

~vasig="Acorde E menor"+~emen;
~vasig.postln;
~emen.postln;
~emen.midicps.postln;
(
      e=Pseq(
	[
	Pbind( \freq,Pn(~emen.midicps))
],inf).play;
[~emen].plot(~vasig,discrete:true);
)))
//------------------------------------------------------*/

(/*G Mayor*/
~gmay=[55,59,62];

(
~vasig="Acorde G Mayor"+~gmay;
~vasig.postln;
~gmay.postln;
~gmay.midicps.postln;
(
     g=Pseq(
	[
	Pbind( \freq,Pn(~gmay.midicps))
],inf).play;
[~gmay].plot(~vasig,discrete:true);
)))
//-----------------------------------------------------*/

(/*F Menor*/
~fmay=[53,57,60];

(
~vasig="Acorde F Mayor"+~fmay;
~vasig.postln;
~fmay.postln;
~fmay.midicps.postln;
(
    f=Pseq(
	[
	Pbind( \freq,Pn(~fmay.midicps))
],inf).play;
[~fmay].plot(~vasig,discrete:true);
)))

/*La funcion Routine nos permite generar un codigo que reprodusca melodias respecto a los acordes antes analizados para dentro de el entorno SC */

(
  (r = Routine
	      {


~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;
~f1=f.play;//Fa mayor
	4.wait;
	~f1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;
~f1=f.play;//Fa mayor
	4.wait;
	~f1.stop;

~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;
~f1=f.play;//Fa mayor
	4.wait;
	~f1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;
~f1=f.play;//Fa mayor
	4.wait;
	~f1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;
~f1=f.play;//Fa mayor
	4.wait;
	~f1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;


~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;
~f1=f.play;//Fa mayor
	4.wait;
	~f1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;
~f1=f.play;//Fa mayor
	4.wait;
	~f1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;
~f1=f.play;//Fa mayor
	4.wait;
	~f1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;

~f1=f.play;//Fa mayor
	8.wait;
	~f1.stop;
~e1=e.play;// Mi menor
	4.wait;
	~e1.stop;
~g1=g.play;//Sol Mayor
	6.wait;
	~g1.stop;

~f1=f.play;//Fa mayor
	2.wait;
	~f1.stop;
~g1=g.play;//Sol Mayor
	2.wait;
	~g1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;

~f1=f.play;//Fa mayor
	2.wait;
	~f1.stop;
~g1=g.play;//Sol Mayor
	2.wait;
	~g1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;

~f1=f.play;//Fa mayor
	2.wait;
	~f1.stop;
~g1=g.play;//Sol Mayor
	2.wait;
	~g1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;

~f1=f.play;//Fa mayor
	2.wait;
	~f1.stop;
~g1=g.play;//Sol Mayor
	2.wait;
	~g1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;


~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;
~f1=f.play;//Fa mayor
	4.wait;
	~f1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;
~f1=f.play;//Fa mayor
	4.wait;
	~f1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;
~f1=f.play;//Fa mayor
	4.wait;
	~f1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;

~f1=f.play;//Fa mayor
	8.wait;
	~f1.stop;
~e1=e.play;// Mi menor
	4.wait;
	~e1.stop;
~g1=g.play;//Sol Mayor
	6.wait;
	~g1.stop;

~f1=f.play;//Fa mayor
	2.wait;
	~f1.stop;
~g1=g.play;//Sol Mayor
	2.wait;
	~g1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;

~f1=f.play;//Fa mayor
	2.wait;
	~f1.stop;
~g1=g.play;//Sol Mayor
	2.wait;
	~g1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;

~f1=f.play;//Fa mayor
	2.wait;
	~f1.stop;
~g1=g.play;//Sol Mayor
	2.wait;
	~g1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;

~f1=f.play;//Fa mayor
	2.wait;
	~f1.stop;
~g1=g.play;//Sol Mayor
	2.wait;
	~g1.stop;
~c1=c.play; //Do mayor
	4.wait;
	~c1.stop;

}).play;
)


/*También puede ejecutase de modo que se asigna cada armonía con una variable respecto a su acorde */
c.play;
f.play;
e.play;
g.play;
/*Puede manipular tocando por acordes con los comandos de te3clado
             Ctrl Enter
             Ctrl .
             y usando las flechas de el teclado para seleccionar la linea que desea tocar
intente una progresión: 3(c*4 f*4) c*4 f*8 e*4 g*8 4(f*2 g*2 c*4)
*/
/*
------------------------------------------------------------------------------------------------------------------
