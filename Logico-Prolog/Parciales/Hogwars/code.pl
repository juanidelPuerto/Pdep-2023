


mago(harry).
mago(draco).
mago(hermione).

caracteristicas(harry, [coraje, amistad, orgullo, inteligencia]).
caracteristicas(draco, [inteligencia, orgullo]).
caracteristicas(hermione, [inteligencia, orgullo, responsabilidad]).

sangre(harry, mestiza).
sangre(draco, pura).
sangre(hermione, impura).

casa(gryffindor).
casa(slytherin).
casa(ravenclaw).
casa(hufflepuff).

odia(harry, slytherin).
odia(draco, hufflepuff).



importante(gryffindor, coraje).
importante(slytherin, orgullo).
importante(slytherin, inteligencia).
importante(ravenclaw, inteligancia). 
importante(ravenclaw, responsabilidad).
importante(hufflepuff, amistad).



permite(Casa, _) :-
    importante(Casa, _),
    Casa \= slytherin.

permite(slytherin, Mago) :-
    sangre(Mago, TipoSangre),
    TipoSangre \= impura.

caracterApropiado(Mago, Casa):-
    mago(Mago),
    casa(Casa),
    forall(importante(Casa, Requisito), tieneCaracteristica(Mago, Requisito)).


%% Punto 3)

posibleCasa(Casa, Mago) :-
    casa(Casa),
    mago(Mago),
    caracterApropiado(Mago, Casa),
    permite(Casa, Mago),
    odia(Mago, CasaOdiada),
    CasaOdiada \= Casa.


posibleCasa(gryffindor, hermione).


cadenaDeAmistades(Magos) :-
    amistosos(Magos),
    cadenaDePosiblesCasas(Magos).



amistosos(Magos) :-
    forall(member(Mago, Magos), tieneCaracteristica(Mago, amistad)).


cadenaDePosiblesCasas([Mago1, Mago2 | RestoDeMagos]) :-
    posibleCasa(Casa, Mago1),
    posibleCasa(Casa, Mago2),
    cadenaDePosiblesCasas([Mago2 | RestoDeMagos]).

cadenaDePosiblesCasas([_]).
cadenaDePosiblesCasas([]).


tieneCaracteristica(Mago, Caracteristica):-
    caracteristicas(Mago, Caracteristicas),
    member(Caracteristica, Caracteristicas).



%%Punto 02) -----------------------------




lugarProhibido(bosque, -50).
lugarProhibido(biblioteca, -10).
lugarProhibido(tercerPiso, -75).

hizo(harry, fueraDeCama).
hizo(harry, irA(bosque)).
hizo(harry, irA(tercerPiso)).
hizo(hermione, irA(tercerPiso)).
hizo(hermione, irA(biblioteca)).
hizo(draco, irA(mazmorras)).
hizo(harry, buenaAccion(ganarleAVoldemort, 60)).
hizo(ron, buenaAccion(ganarAjedrezMagico, 50)).
hizo(hermione, buenaAccion(salvarAmigosConSuIntelecto, 50)).

esDe(hermione, gryffindor).
esDe(ron, gryffindor).
esDe(harry, gryffindor).
esDe(draco, slytherin).
esDe(luna, ravenclaw).


esBuenAlumno(Mago) :-
    hizoAlgunaAccion(Mago),
    not(hizoAlgoMalo(Mago)).

hizoAlgoMalo(Mago) :-
    hizo(Mago, Accion),
    puntaje(Accion, PuntajeGenera),
    PuntajeGenera < 0.

puntaje(fueraDeCama, -50).

puntaje(irA(Lugar), Puntaje) :-
    lugarProhibido(Lugar, Puntaje).

puntaje(buenaAccion(_, Puntaje), Puntaje).


hizoAlgunaAccion(Mago) :-
    hizo(Mago, _).


accionRecurrente(Accion) :-
    hizo(Mago1, Accion),
    hizo(Mago2, Accion),
    Mago1 \= Mago2.




puntajeTotalCasa(Casa, PuntajeTotalCasa) :-
    casa(Casa),
    findall(Puntaje, 
        (esDe(Mago, Casa),
        puntosQueObtuvo(Mago, _, Puntaje)), PuntajesMagos),
    sumlist(PuntajesMagos, PuntajeTotalCasa).

puntosQueObtuvo(Mago, Accion, Puntos) :-
    hizo(Mago, Accion),
    puntaje(Accion, Puntos).


casaGanadora(Casa):-
    puntajeTotalCasa(Casa, PuntajeTotal),
    not((puntajeTotalCasa(_, OtroPuntaje), OtroPuntaje > PuntajeTotal)).



hizo(hermione, responder("Donde se encuentra un bezoar?", 20, snape)).
hizo(hermione, responder("Como Hacer levitar una pluma?", 25, flitwick)).
 
puntaje(responder(_, Puntaje, Profe), Puntaje) :-
    Profe \= snape.
puntaje(responder(_, Puntaje, snape), PuntajeFinal):-
    PuntajeFinal is Puntaje / 2. 

