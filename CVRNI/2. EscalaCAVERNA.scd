/*______________________________________________________________________GARCIA APARICIO ERIK ALEJANDRO_____________________________________________________________________________________________
*/
/*-------------------------------*/
/*\note, \midinote e \instrument de SC*/
/*-----------------------------*/
/*Código para poder manipular instrumento por default de el programa supercollider(SC):*/
//este código lo presenta SC dentro de sus sintaxis para reproducir sonidos y en redacción de arreglos
//Ejemplo1
(

 Pbind(

    \instrument, \default,
	\degree,	Pseq([rand(-26,-18),rand(-17,-10),rand(-9,-2),rand(-1,6),rand(7,14),rand(15,22),rand(23,30),rand(31,38),rand(39,40),rand(41,52)], inf),
	\amp, 0.5

).play
//Ejemplo2
)
(
 Pbind(
    \instrument, \default,
	\degree,	Pseq([0,1,2,3,4,5,6,7]++[0,1,2,3,4,5,6,7].reverse, inf),
	\amp, 0.5



).play
)
/*
El Comando instrumento solo nos indica la escala mayor con la progresión de números de el 0 a 6 de modo que:

C -7 0 7  14
D -6 1 8  15
E -5 2 9  16
F -4 3 10 17
G -3 4 11 18
A -2 5 12 19
B -1 6 13 20

dada esta relación podemos identificar un número limitado de notas para realizar acordes.

*/
//--------------------------------------------------------------------------------------------------------
//ESCALAS
//--------------------------------------------------------------------------------------------------------
/*Dentro de una progresión de notas se maneja lo denominado como escalas, estas al ser ejecutadas dentro de la progresión correcta de armonías generan una melodía de acompañamiento a la armonía*/

/* scale*/
// ------------------------------------------------------
Scale.directory // imprime en post-window un directorio de escalas que se pueden ingresar dentro de la función:
//[ variable ]= [Función].[Comando de la escala identificado por el directorio].[degrees ] 
~scale = Scale. spanish.degrees//degrees indica los valores que se identifican con dicha escala
~scale = Scale. atharKurd.degrees
~scale = Scale. prometheus.degrees
~scale = Scale. mahur.degrees
~scale = Scale. egyptian.degrees
~scale = Scale. marva.degrees
~scale = Scale. major.degrees
/*Identificando los valores de escalas estos necesitan ingresarse nota por nota, es decir, debe reproducirse un conjunto de datos de manera melódica (dentro de una armonía) para ello utilizaremos el comando \note de igual manera para obtener los datos para ingresar en una escala identificable en midi se necesita hacer conversión de los datos para que sean leíbles por el comando \midinote */

//escuchar escala con el comando note (puede escuchar la escala uno, dos, tres, cuatro, cinco etc. seleccionando la variable)
(
Pbind(
	\note,Pseq(~scale,inf),
	 \dur, 1/4,)
.play) //por defecto hace referencia a la octava C4 de el comando midi, Es decir, dentro de esta escala encontramos directamente la frecuencia 440hz correspondiente a la nota A4

/*Para identificar la escala respecto a una tonalidad se puede sumar las cantidades correspondientes para cada nota*/
/*nota: Puedo asignar un número a la escala para subir la tonalidad y de igual manera puedo asignar un numero para elegir la octava, ambos números se sumaran, en el caso de el número de tonalidad dependerá de la tabla de valores anterior y en el caso de la octava dependerá de la nota raíz de la octava en la que queremos trabajar. SC solo reproduce una octava de escala detectada a la hora de iniciar la variable. 
en el caso de los valores negativos para las notas de el instrumento se debe sumar el valor de la nota que estamos asignando a la variable (Tomar en cuenta la tabla de tonalidades para referir una frecuencia.).

----------------------Tabla de valores de suma  para  tonalidades de octava SC*-----

TONO| valor +

# b       -11
re  D     -10
# b       -9
mi  E     -8
fa  F     -7
# b       -6
sol G     -5
# b       -4
la  A     -3
# b       -2
si  B     -1
do  C      0
# b        1
re  D      2
# b        3
mi  E      4
fa  F      5
# b        6
sol G      7
# b        8
la  A      9
# b        10
si  B      11

----------------------Tabla de valores de suma para octava de SC------------

 OCTC    Valor +
 C0         -48
 C1         -36
 C2         -24
 C3         -12
 C4          octava de el instrumento por default encontramos 440hz en el comando de La4 estandar
 C5          12
 C6          24
 C7          36
 C8          48
*/

/*Este arreglo se utiliza para definir la tonalidad y la octava de manera mas directa ya que manipulamos la variable escala directamente y solo elejimos los datos que vamos a manipular, el concepto se basa en la suma a las escalas para que nuestro resultado sea una escala en la tonalidad ELEGIDA. (La sintaxis de SC no nos permite ingresar un valor negativo directamente por eso lo manipularemos con una line de comando que nos sume los valores sabiendo que representa a la variable de tonalidad y octava negativos.).
*/

~vt=0;//variable tonalidad
~escn=~scale+~vt.postln;//valores positivos
~escn=~scale-~vt.postln;//valores negativos

~vo=36 //variable octava
~scaleto=~escn+~vo.postln;//valores positivos
~scaleto=~escn-~vo.postln;//valores negativos

(//Reproduce la variable scaleto
Pbind(
	\note,Pseq(~scaleto++~scaleto.reverse,inf),
	 \dur, 1/4,)
.play)

/*
-----------------Tabla Para identificar escalas -------------------
----------------------------Formato SC-----------------------------
      I   II III  IV  V   VI  VII VIII IX   X    XI  XII
      C   C#  D   D#  E   F   F#   G   G#   A    A#   B
     -48 -47 -46 -45 -44 -43 -42  -41 -40  -39  -38  -37 C0
     -36 -35 -34 -33 -32 -31 -30  -29 -28  -27  -26  -25 C1
     -24 -23 -22 -21 -20 -19 -18  -17 -16  -15  -14  -13 C2
     -12 -11 -10 -9  -8  -7  -6   -5  -4   -3   -2   -1  C3
\note 0   1   2   3   4   5   6    7   8    9    10   11 C4 Octava donde encontramos A440hz SC
      12  13  14  15  16  17  18   19  20   21   22   23 C5
      24  25  26  27  28  29  30   31  32   33   34   35 C6
      36  37  38  39  40  41  42   43  44   45   46   47 C7
      48  49  50  51  52  53  54   55  56   57   58   59 C8
      60  61  62  63  64  65  66   67  68   69   70   71 C9
      72  73  74  75  76  77  78   79  80   81   82   83 C10
      84  85  86  87  88                                 C11
__________________________Formato MIDI______________________________

      I  II III  IV  V   VI VII VIII IX  X   XI  XII
      C  C#  D   D#  E   F   F#  G   G#  A   A#  B
                                         21  22  23  octavaC0
      24 25  26  27  28  29  30  31  32  33  34  35  octavaC1
      36 37  38  39  40  41  42  43  44  45  46  47  octavaC2
\Midi 48 49  50  51  52  53  54  55  56  57  58  59  octavaC3
note  60 61  62  63  64  65  66  67  68  69  70  71  octavaC4
      72 73  74  75  76  77  78  79  80  81  82  83  octavaC5
      84 85  86  87  88  89  90  91  92  93  94  95  octavaC6
      96 97  98  99  100 101 102 103 104 105 106 107 cctavaC7
      108                                            octavaC8

para llamar midi dependiendo de la octava valiéndonos de la sintaxis de SC podemos llamar una octava midi sumando el primer valor de la octava que deseamos manejar a el valor de la nota de la escala que estamos manejando por defecto,
(en el caso de C0 este sería sumando a partir de el número 12 y debe cumplir con el concepto de midi desde el valor correspondiente de LA21 hasta el valor correspondiente de Do108) y si se pretende elegir tonalidad se debe elegir el número de la tonalidad y octava que deseamos escuchar
*/

/*Escuchar escalas midi*/

(
Pbind(
	\midinote,Pseq(~scale+60//valor manipulable dependiendo de la octava
		,inf),
	 \dur, 1/4,
).play
)
(
Pbind(
	\midinote,Pseq(~scale+88//valor manipulable dependiendo de la octava
		,inf),
	 \dur, 1/4,
).play
)
(
Pbind(
	\midinote,Pseq(~scale+43//valor manipulable dependiendo de la octava
		,inf),
	 \dur, 1/4,
).play
)
//_________________________________________________________________________________________________________________________________________ 2, Caverna Studio
