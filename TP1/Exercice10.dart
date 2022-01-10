/* Écrire une fonction qui permet de fusionner deux tableaux triés, 
c'est-à-dire qu'elle retourne le tableau trié contenant les éléments 
des deux tableaux en entrée. 

Elle prend en entrée un tableau, sa longueur, un autre tableau, 
sa longueur ; elle renvoie un tableau.
 */

void main(List<String> args) {
  //test
  List<int> t1 = [2, 4, 6];
  List t2 = [1, 3, 5];
  List r = fusionTab(t1, 3, t2, 3);
  print(r);
}

List fusionTab(List<int> tab1, int taille1, List<int> tab2, int taille2) {
  List<int> tabResult = tab1;
  for (var elt in tab2) {
    tabResult.add(elt);
  }

  return tabResult.sort();
}
