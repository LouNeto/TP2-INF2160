position(1). position(2). position(3). position(4). position(5).

couleur(rouge). couleur(jaune). couleur(bleu). couleur(verte). couleur(ivoire).

nationalite(anglais). nationalite(espagnol). nationalite(norvegien).
nationalite(ukrainien). nationalite(canadien).

animaux(chien). animaux(renard). animaux(serpent). animaux(cheval). animaux(zebre).

brevage(jus_orange). brevage(the). brevage(cafe). brevage(lait). brevage(eau).

mets(kiwi). mets(celeri). mets(wasabi). mets(litchi). mets(poire).

% meme(X,Y) :- meme(X,Y); meme(Y,X).
meme( anglais, rouge ).
meme( chien, espagnol ).
meme( norvegien, 1 ).
meme( kiwi, jaune ).
meme( wasabi, serpent ).
meme( litchi, jus_orange ).
meme( ukrainien, the ).
meme( canadien, poire ).
meme( cafe, verte ).
meme( lait, 3 ).

voisin( celeri, renard ).
voisin( norvegien, bleu ).
voisin( kiwi, cheval ).
voisin( verte, ivoire ).

droite( verte, ivoire ).

question(P,C,N,A,B,M) :-
  position(P), couleur(C), nationalite(N), animaux(A), brevage(B), mets(M).

question(P,C,N,A,B,M) :-
  meme(P,C);
  meme(C.N);
  meme(N,A);
  meme(A,B);
  meme(B,M).

  % c1 :- meme(X,Y).
  % question(X,Y,Z,A,B,C) :- C1 meme;
