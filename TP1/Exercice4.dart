/*
  Écrire une fonction qui permet d'échanger des éléments dans un tableau. 
  La fonction prend en argument un tableau, sa taille, 
  ainsi que les indices des deux éléments à inverser
*/

void main() {
  //test
  // ici on echangera les position des valeur 23 et bonjour
  var tabl = [23, 34, 'bonjour', 32.5];

  print("Tableau avant echange de position ${tabl}");
  //appel de la fonction
  var tab2 = modifPosition(tabl, 0, 2);
  print("Tableau apres echange de position ${tab2}");
}

List modifPosition(List tab, int indice1, int indice2) {
  /* Cette fonction echange les positions de deux element dans un tableau */
  int val = tab[indice1];
  tab[indice1] = tab[indice2];
  tab[indice2] = val;
  return tab;
}
