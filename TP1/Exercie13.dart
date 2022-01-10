/* Écrire une fonction qui permet de connaître le minimum d'un tableau d'entiers. 
La fonction prend en entrée un tableau d'entiers, 
sa longueur et renvoie un élément du tableau.*/

void main(List<String> args) {
  //test
  List t1 = [9, 2, 4, 6];
  print(minTab(t1, t1.length - 1));
}

int minTab(List tab, int taille) {
  int min = tab[0];
  for (int i = 1; i <= taille; i++) {
    if (tab[i] < min) {
      min = tab[i];
    }
  }
  return min;
}
