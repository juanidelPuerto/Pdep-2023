

jugador(stuart, [piedra, piedra, piedra, piedra, piedra, piedra, piedra, piedra], 3).
jugador(tim, [madera, madera, madera, madera, madera, pan, carbon, carbon, carbon, pollo, pollo], 8).
jugador(steve, [madera, carbon, carbon, diamante, panceta, panceta, panceta], 2).


lugar(playa, [stuart, tim], 2).
lugar(mina, [steve], 8).
lugar(bosque, [], 6).



comestible(pan).
comestible(panceta).
comestible(pollo).
comestible(pescado).


item(horno, [ itemSimple(piedra, 8) ]).
item(placaDeMadera, [ itemSimple(madera, 1) ]).
item(palo, [ itemCompuesto(placaDeMadera) ]).
item(antorcha, [ itemCompuesto(palo), itemSimple(carbon, 1) ]).



%% Punto 01) ----------------------------------

tieneItem(Jugador, Item) :-
    jugador(Jugador, Items, _),
    member(Item, Items).


sePreocupaPorSuSalud(Jugador) :-
    jugador(Jugador, Items, _),
    comestible(Tipo1),
    comestible(Tipo2),
    Tipo1 \= Tipo2,
    member(Tipo1, Items),
    member(Tipo2, Items).

existe(Item) :-
    tieneItem(_, Item).


cantidadDeItem(Jugador, Item, Cantidad) :-
    existe(Item),
    jugador(Jugador, Items, _),
    findall(ItemA, member(ItemA, Items), ItemsQueTiene),
    ItemA = Item,
    length(ItemsQueTiene, Cantidad).

tieneMasDe(Jugador, Item) :-
    cantidadDeItem(Jugador, Item, UnaCantidad),
    forall((cantidadDeItem(OtroJugador, Item, OtraCantidad),  Jugador \= OtroJugador), UnaCantidad >= OtraCantidad,).

%------------------------------------

%--Punto 02) ----------------------

hayMonstruos(Lugar) :-
    lugar(Lugar, _ ,Oscuridad),
    Oscuridad > 6.


correPeligro(Jugador) :-
    jugador(Jugador, Items, Hambre),
    lugar(Lugar, Jugadores, _),
    member(Jugador, Jugadores),
    hayMonstruos(Lugar).

correPeligro(Jugador) :-
    estaHambriento(Jugador),
    jugador(Jugador, Items, Hambre),
    not(cuentaConComestibles(Jugador)).

estaHambriento(Jugador) :-
    jugador(Jugador, Items, Hambre),
    Hambre < 4.

cuentaConComestibles(Jugador) :-
    comestible(UnComestible),
    tieneItem(Jugador, UnComestible).



nivelPeligrosidad(Lugar, Peligrosidad) :-
    lugar(Lugar, Poblacion, _),
    Poblacion \= [],
    not(hayMonstruos(Lugar)),
    length(Poblacion, PoblacionTotal),
    findall(Jugador, (estaHambriento(Jugador), member(Jugador, Poblacion)) , Hambrientos),
    length(Hambrientos, CantidadHambrientos),
    Peligrosidad is (CantidadHambrientos / PoblacionTotal) * 100.



nivelPeligrosidad(Lugar, 100) :-
    hayMonstruos(Lugar).

nivelPeligrosidad(Lugar, Peligrosidad) :-
    lugar(Lugar, [], Oscuridad),
    Peligrosidad is Oscuridad * 10.


puedeConstruir(Jugador, Item) :-
    item(Item, [itemSimple(Material, CantidadNecesaria)]),
    cantidadDeItem(Jugador, Material, CantidadTiene),
    CantidadTiene >= CantidadNecesaria.

puedeConstruir(Jugador, Item) :-
    item(Item, [itemCompuesto(Material, CantidadNecesaria)]),