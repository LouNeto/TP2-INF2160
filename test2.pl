rue :- [[1, _, _, _, _, _],
       [2, _, _, _, _, _],
       [3, _, _, _, _, _],
       [4, _, _, _, _, _],
       [5, _, _, _, _, _]].

regle([_, rouge, anglais, _, _, _], rue).
regle([_, _, espagnol, chien, _, _], rue).
regle([1, _, norvegien, _, _, _], rue).
regle([_, jaune, _, _, _, kiwi], rue).
regle([_, _, _, _, _, celeri], rue).
regle([_, bleu, _, _, _, _], rue).
% voisin(maison(_, bleu, _, _, _, _), maison(_, _, norvegien, _, _, _), rue),
regle([_, _, _, serpent, _, wasabi], rue).
regle([_, _, _, _, jus_orange, litchi], rue).
regle([_, _, ukrainien, _, the, _], rue).
regle([_, _, canadien, _, _, poire], rue).
regle([_, _, _, cheval, _, _], rue).
% voisin(maison(_, _, _, _, _, kiwi), maison(_, _, _, cheval, _, _), rue),
regle([_, verte, _, _, cafe, _], rue).
regle([_, ivoire, _, _, _, _], rue).
% droite(maison(_, verte, _, _, _, _), (_, ivoire, _, _, _, _), rue),
% voisin(maison(_, verte, _, _, _, _), (_, ivoire, _, _, _, _), rue),
regle([3, _, _, _, lait, _], rue).
regle([_, _, _, zebre, _, _], rue).
