/* Écrire une fonction qui permet de connaître la taille d'un tableau à partir de la plage d'indices valides*/

void main() {
  //test
  var tableau = [12, 43, 'juce', 12.4];
  print(tailleTab(tableau));
}

int tailleTab(List tab) {
  // Remarque: en Dart on a la deja une fonction qui nous permet de connaitre la taille d'un tableau: length
  int compteur = 0;
  for (var elmt in tab) {
    compteur++;
  }
  return compteur;
}
