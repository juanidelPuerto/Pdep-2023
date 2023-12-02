puestoDeComida(hamburguesas, 2000).
puestoDeComida(panchitosConPapas, 1500).
puestoDeComida(lomitoCompleto, 2500).
puestoDeComida(caramelos, 0).

atraccion(autitosChocadores, tranquila(chicosYAdultos)).
atraccion(casaEmbrujada, tranquila(chicosYAdultos)).
atraccion(laberinto, tranquila(chicosYAdultos)).
atraccion(tobogan, tranquila(chicos)).
atraccion(calesita, tranquila(chicos)).

atraccion(barcoPirata, intensa(14)).
atraccion(tazasChinas, intensa(6)).
atraccion(simulador3D, intensa(2)).

atraccion(abismoMortalRecargada, montaniaRusa(3, 134)). %% Giros, duracion(en segundos)
atraccion(paseoPorElBosque, montaniaRusa(0, 45)).

atraccion(elTorpedoSalchichon, acuatica()). %% acuatica() debe ser un functor,  para que sea polimorfica con las otras atracciones
atraccion(esperoQueHayasTraidoUnaMudaDeRopa, acuatica()).

visitante(eusebio, 80, 3000, 50, 0).
visitante(carmel, 80, 0, 0, 25).  %% edad, dinerom, hambre, aburrimiento

grupo(eusebio, viejitos).
grupo(carmela, viejitos).



%%Punto 02)

estadoDeBienestar(Visitante, Estado) :-
    Visitante(Visitante, _, _, Hambre, Aburrimiento),
    Suma is Hambre + Aburrimiento,
    estadoBienestarSegun(Suma, Visitante, Estado).

estadoBienestarSegun(0, Visitante, felicidadPlena) :-
    estaAcompaniado(Visitante).

estadoBienestarSegun(0, Visitante, podriaEstarMejor) :-
    not(estaAcompaniado(Visitante))

estadoBienestarSegun(Suma, _, podriaEstarMejor) :-
    Suma >= 1,
    Suma =< 50. 

estadoBienestarSegun(Suma, _, necesitaEntretenerse) :-
    Suma >= 51,
    Suma =< 99. 

estadoBienestarSegun(Suma, _, seQuiereIrACasa) :-
    Suma >= 99.
        
estaAcompaniado(Visitante) :-
    grupo(Visitante, _).


 