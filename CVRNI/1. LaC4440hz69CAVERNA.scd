/*_________________________________________________________________________GARCIA APARICIO ERIK ALEJANDRO_:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

*/

//-----------------/
/*La4*/
//------------------*/

(
FreqScope.new();
s.scope;
s.meter;
s.plotTree;
)

(~mdi=69;//declaramos una variable con el número 69 que la función midi detectará como el LA4 de frecuencia 440hz*/
(
(~vasig="variable asignada"+~mdi.midicps+"hz equivalente Num midi"+~mdi+"que en la octava musical es equivalente a LA4";
~vasig.postln;
~mdi.midicps.postln
(
      Pseq(
	[
	Pbind( \freq,Pn(~mdi.midicps))],inf).play;
[~mdi].plot(~vasig,discrete:true);
)
  )
))
/*Esta nota de LA4 es importante ya que para algunos instrumentos sirve como parámetro estándar para crear una armonía con otros instrumentos y/o melodías, en midi y en algunas configuraciones de piano se toma como predeterminado de la octava de C4 */
(
Pbind(
	\note,Pn(9//dentro de el código de SC encontramos esta misma frecuencia en el valor 9 de la escala \note en el instrumento que presenta el programa por default
		,inf),
	 \dur, 1/2,
).play
)
//otra forma donde encontramos la frecuencia 440 dentro de el arreglo de SC, Cabe mencionar que este es el arreglo de código empleado por default dentro de el programa SC
(
 Pbind(
    \instrument, \default,
	\degree,	Pn([5], inf),
	\dur,3/4,
	\amp, 1/4
).play

)
//Con el comando \midinote encontramos directamente este valor en el valor representativo 69
(
Pbind(
	\midinote,Pn(69//valor manipulable dependiendo de la octava
		,inf),
	 \dur, 1/4,
).play
)
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 1, Caverna Studio
