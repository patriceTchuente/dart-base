/* Écrire une fonction qui permet de connaître l'indice du premier élément 
minimum d'un tableau. La fonction prend en argument un tableau d'entiers 
et sa longueur, elle renvoie la valeur minimale dans le tableau. */

void main(List<String> args) {
  //test de la fonction
  List<int> tab = [3, 12, 23, 43, 56, 76, 88, 2, 11, 45,  56, 4, 111, 9, 97];

  int val_min = minTab(tab, tab.length);
  print(val_min);
}

int minTab(List tab, int taille) {
  int min = tab[0];
  for (int i = 1; i < taille; i++) {
    if (tab[i] < min) {
      min = tab[i];
    }
  }
  return min;
}
