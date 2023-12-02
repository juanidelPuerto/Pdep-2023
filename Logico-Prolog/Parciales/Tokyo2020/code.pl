

atleta(juan, 23, argentina).
atleta(carlos, 20, argentina).
atleta(maria, 25, chile).
atleta(meolans, 27, argentina).


disciplina(voleyMasculino, enEquipo).
disciplina(natacion400MetrosFemenino, individual).
disciplina(carrera400MetrosConVallasFemenino, individual).
disciplina(cienMetrosEspaldaMasculino, individual).

compiteEn(juan, voleyMasculino).
compiteEn(carlos, voleyMasculino).
compiteEn(maria, natacion400MetrosFemenino).

medalla(oro).
medalla(plata).
medalla(bronce).

entrega(voleyMasculino, oro, argentina).
entrega(carrera400MetrosConVallasFemenino, plata, dalilahMuhammad).

evento(hockeyFemenino, final, argentina).
evento(hockeyFemenino, final, paisesBajos).
evento(cienMetrosEspaldaMasculino, ronda2, meolans).

%%2)

vinoAPasear(Atleta) :-
    atleta(Atleta, _, _),
    not(compiteEn(Atleta,_)).

medallasDelPais()

