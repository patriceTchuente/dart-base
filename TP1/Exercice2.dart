/* Écrire une fonction qui permet d'initialiser un tableau. 
  Cette fonction prend en entrée un tableau, sa longueur et 
  une valeur à insérer dans chacune des cases du tableau.
*/

void main() {
  // test function
  var lst = [];
  print(initializeTab(lst, 5, 12));
}

List initializeTab(List tab, int size, int val) {
  for (int i = 1; i <= size; i++) {
    tab.add(val);
  }
  return tab;
}
