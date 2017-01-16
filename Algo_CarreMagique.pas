program Algo_CarreMagique;

uses crt, sysutils;

(*PROGRAMME rat
//BUT Affiche un carré magique d'une dimension impaire défini en constantes
//ENTREE rien
//SORTIE carré magique

CONST

	MAX : 10

TYPE
	T1 : Tableau[1..MAX,1..MAX] de ENTIER	

PROCEDURE InitialisationT1(var Tableau : T1)
VAR
	x,y : ENTIER
DEBUT
	POUR x <- 1 A MAX FAIRE
	DEBUT
		POUR y <- 1 A MAX FAIRE
		DEBUT
			Tableau[i, j] <- 0;
		FINPOUR
	FINPOUR
FIN

PROCEDURE Premierplacement(var Tableau : T1)
VAR
	x, y, position : ENTIER;
DEBUT
	x <- (MAX div 2)
	y <- (MAX div 2) + 1
	T1[x, y] <- 1
FIN

PROCEDURE Placement(var Tableau : T1)
VAR
	x, y, compteur : integer;
DEBUT
	x <- (tailleMatrice div 2)
	y <- (tailleMatrice div 2) + 1
	POUR compteur <- 2 A (MAX * MAX) FAIRE
	DEBUT
		SI (y + 1 > tailleMatrice) ALORS
			DEBUT
				y <- 0;
			FINSI
		SI (x - 1 = 0) ALORS
			DEBUT
				x <- tailleMatrice + 1;
			FINSI
			x := i - 1;
			y := j + 1;
			SI (Tableau[x, y] <> 0) ALORS // si la "case" n'est pas vide
				DEBUT
					TANT QUE (Tableau[X, Y] <> 0) FAIRE // on fera les actions suivantes jusqu'à ce que la "case" soit vide
						DEBUT
							SI (y - 1 = 0) ALORS
								DEBUT
									y <- MAX + 1
								FINSI
							SI (x - 1 = 0) ALORS
								DEBUT
									x <- MAX + 1
								FINSI
							x := x - 1;
							y := y - 1;
						FINTANTQUE
				FINSI
			Tableau[x,y] := compteur;
	FINPOUR
FIN

//Partie principale du programme

var
	x, y, verif : ENTIER;
	Alakarré : MATRICE;

DEBUT
	ECRIRE ('Programme d''affichage d''un carre magique !');
	// debut du programme
	InitMatrice(CarreMagique); // utilise la procedure d'initiation de la matrice
	PremierEntier(CarreMagique); // utilise la procedure pour placer le premier entier
	Placement(CarreMagique); // utilise la procedure pour placer les nombres de 2 à MAX au carre
	POUR i := 1 A MAX FAIRE // boucle pour afficher les nombres de la Matrice (le carre Magique)
		DEBUT
			POUR j := 1 A MAX FAIRE
				DEBUT
					SI (CarreMagique[x, y] < 10) ALORS // pour que le tableau soit correctement aligne, on ajoute un
						ECRIRE ('0', CarreMagique[x, y], ' ') // 0 devant les chiffres
					SINON
						ECRIRE (CarreMagique[x,y], ' ');
					FINSI
				FINPOUR
		FINPOUR
FIN. *)
const
	MAX = 7;

type
	T1 = array [1..MAX,1..MAX] of integer;


// Initialisation du tableau
Procedure InitialisationT1(var Tableau : T1);
	var x, y : integer;
begin
	for x := 1 to MAX do
		begin
			for y := 1 to MAX do
				begin
					Tableau[x, y] := 0;
				end;
		end;
end;

// Place le premier entier au milieu du nord de la matrice
Procedure PremierPlacement(var Tableau : T1);
	var x, y, position : integer;
begin
	x := (MAX div 2);
	y := (MAX div 2) + 1;
	Tableau[x, y] := 1;
end;

// Place les nombres
Procedure Placement(var Tableau : T1);
	var x, y, compteur : integer;
begin
	x := (MAX div 2);
	y := (MAX div 2) + 1;
	for compteur := 2 to (MAX * MAX) do
	begin
		if (y + 1 > MAX) then
			begin
				y := 0;
			end;
		if (x - 1 = 0) then
			begin
				x := MAX + 1;
			end;
			x := x - 1;
			y := y + 1;
			if (Tableau[x, y] <> 0) then // si la "case" n'est pas vide
				begin
					while (Tableau[x, y] <> 0) do // on fera les actions suivantes jusqu'à ce que la "case" soit vide
						begin
							if (y - 1 = 0) then		
								begin
									y := MAX + 1;
								end;
							if (x - 1 = 0 )then
								begin
								x := MAX + 1;
								end;
							x := x - 1;
							y := y - 1;
						end;
				end;
		Tableau[x,y] := compteur;
	end;
end;

{ Partie main du programme }

var
	x, y : integer;
	CarreMagique : T1;

begin
	clrscr;
	writeln('Programme d''affichage d''un carre magique !');
	writeln;
	// debut du programme
	InitialisationT1(CarreMagique); // utilise la procedure d'initiation de la matrice
	PremierPlacement(CarreMagique); // utilise la procedure pour placer le premier entier
	Placement(CarreMagique); // utilise la procedure pour placer les nombres de 2 à MAX au carre
	for x := 1 to MAX do // boucle pour afficher les nombres de la Matrice (le carre Magique)
		begin
			for y := 1 to MAX do
				begin
					if (CarreMagique[x, y] < 10) then // pour que le tableau soit correctement aligne, on ajoute un
						write('0', CarreMagique[x, y], ' ') // 0 devant les chiffres
					else
						write(CarreMagique[x,y], ' ');
				
				end;
			writeln;
		end;

	readln;
end.
