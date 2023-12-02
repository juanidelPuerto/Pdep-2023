% Relaciona al dueño con el nombre del juguete
%%y la cantidad de años que lo ha tenido
duenio(andy, woody, 8).
duenio(sam, jessie, 3).
duenio(andy, soldados, 9).

% Relaciona al juguete con su nombre
% los juguetes son de la forma:
% deTrapo(tematica)
% deAccion(tematica, partes)
% miniFiguras(tematica, cantidadDeFiguras)
% caraDePapa(partes)
juguete(woody, deTrapo(vaquero)).
juguete(jessie, deTrapo(vaquero)).
juguete(buzz, deAccion(espacial, [original(casco)])).
juguete(soldados, miniFiguras(soldado, 60)).
juguete(monitosEnBarril, miniFiguras(mono, 50)).
juguete(seniorCaraDePapa,
caraDePapa([ original(pieIzquierdo),
original(pieDerecho),
repuesto(nariz) ])).

% Dice si un juguete es raro
esRaro(deAccion(stacyMalibu, 1, [sombrero])).
esRaro(caraDePapa(senioraCaraDePapa, [sombrero])).

% Dice si una persona es coleccionista
esColeccionista(sam).


%%1)
tematica(senioCaraDePapa, caraDePapa).

tematica(Juguete, Tematica) :-
    juguete(Juguete, Tipo),
    obtenerTematica(Tipo, Tematica).

obtenerTematica(deTrapo(Tematica), Tematica).
obtenerTematica(deAccion(Tematica, _), Tematica).
obtenerTematica(miniFiguras(Tematica, _), Tematica).

esDePlastico(Juguete) :-
    tematica(Juguete, miniFiguras).

esDePlastico(Juguete) :-
    tematica(Juguete, caraDePapa).

esDeColeccion(Juguete) :-
    tematica(Juguete, deTrapo).

esDeColeccion(Juguete) :-
    esRaro(deAccion(Juguete,_,_)).

esDeColeccion(Juguete) :-
    esRaro(caraDePapa(Juguete,_)).

%%2) Amigofiel

amigoFiel(Duenio, Juguete) :-
    duenio(Duenio, Juguete, Antiguedad),
    not(esDePlastico(Juguete)),
    juguete(OtroJuguete,_),
    not((duenio(Duenio, OtroJuguete, OtroTiempo), (OtroTiempo > Antiguedad))).
    %%forall((duenio(Duenio, OtroJuguete, OtraAntiguedad), Antiguedad < OtraAntiguedad, not(esDePlastico(OtroJuguete))), esDePlastico(OtroJuguete)).

superValioso(Juguete):-
    tieneTodasPiezasOriginales(Juguete),
    not(esDeColeccionista(Juguete)).

tieneTodasPiezasOriginales(Juguete) :-
    juguete(Juguete, _),
    