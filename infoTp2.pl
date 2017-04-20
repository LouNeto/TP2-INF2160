% 5 maisons et il faut faire une base de connaissances a partir d"informations
% sur ces maisons.
%
% |1| |2| |3| |4| |5|
% gauche          droite
%
% Couleur: Rouge, Jaune, Bleu, Verte, Ivoire
% Nation: Anglais, Espagnol, Norvegien, Ukrainien, Canadien
% Animal: Chien, Renard, Serpent, Cheval, Zebre
% Boisson: Jus_orange, The, Lait, Eau, Cafe
% Mets: Kiwi, Celeri, Wasabi, Litchi, Poire
%
% meme(anglais, rouge).
% voisin(norvegien, bleu).
% droite(verte, ivoire).
% gauche(.. , ..).
%
% %Dans un autre fichier pl:
% question(P, _, _, Zebre, _, _).
% question(P, C, N, A, B, M).

%faits!
meme(anglais, rouge).
meme(chien, espagnol).
meme(norvegien, 1).
meme(kiwi, jaune).
meme(wasabi, serpent).
meme(litchi, jus_orange).
meme(ukrainien, the).
meme(canadien, poire).
meme(cafe, verte).
meme(lait, 3).

voisin(celeri, renard).
voisin(norvegien, bleu).
voisin(kiwi, cheval).
voisin(verte, ivoire).

droite(verte, ivoire).
