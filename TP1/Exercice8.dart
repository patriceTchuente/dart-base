/* Écrire une fonction qui permet d'initialiser une matrice. 
La fonction prend en argument une matrice (définie comme à 
l'exercice précédent), ses dimensions et la valeur initiale 
à insérer dans chaque case de la matrice. */

import 'Exercice7.dart'; // on importe la classe Matrice

void main(List<String> args) {
  //test
  Matrice mat = new Matrice();

  print(tabMatrice(mat, 3, 4, 1));
}

List tabMatrice(Matrice m, int nbre_colone, int nbre_ligne, int val) {
  m.setColone = nbre_colone;
  m.setLigne = nbre_ligne;
  var matrice = List.generate(m.getColone, (i) => List.filled(m.getLigne, 0),
      growable: false);
  
  for (int i = 1; i <= nbre_colone; i++) {
    for (int j = 1; j <= nbre_ligne; j++) {
      matrice[i - 1][j - 1] = val;
    }
  }
  return matrice;
}
