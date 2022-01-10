/* Écrire un algorithme de tri par fusion de deux tableaux. 
La fonction prend en entrée deux tableaux non triés, leur longueur respective, 
elle renvoie un tableau trié contenant les éléments des deux tableaux en entrée.

L'algorithme doit avoir la meilleure complexité possible.
 */

void main(List<String> args) {
  //test
  List t1 = [9, 2, 4, 6];
  List t2 = [1, 3, 5, 7];
  List r = triFusion(t1, t2);
  print(r);
}

List triFusion(List tab1, List tab2) {
  // le tri fusion s'applique sur des tableau trier au prealable

  tab1.sort();
  tab2.sort();
  int indice1 = 0;
  int indice2 = 0;
  List tabResult = [];
  while ((indice1 <= tab1.length - 1) && (indice2 <= tab2.length - 1)) {
    if (tab1[indice1] < tab2[indice2]) {
      tabResult.add(tab1[indice1]);
      indice1++;
    } else {
      tabResult.add(tab2[indice2]);
      indice2++;
    }
  }
  while (indice1 < tab1.length) {
    tabResult.add(tab1[indice1]);
    indice1++;
  }
  while (indice2 < tab2.length) {
    tabResult.add(tab2[indice1]);
    indice2++;
  }

  return tabResult;
}
