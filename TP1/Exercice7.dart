/*
Écrire une façon de déclarer une matrice. On s'attend à une déclaration de variable.

Une matrice M de dimension m × n est un tableau de dimension m
dont chaque élément est un tableau de dimension n. 
On peut donc déclarer la matrice sous la forme suivante  */

void main(List<String> args) {
  //var tList = List.generate(4, (i) => List.filled(3,0), growable: false);
  
  print(matrice(3, 4));
}

List matrice(int nbre_colone, int nbre_ligne) {
  var tab_matrice =
      List.generate(nbre_colone, (i) => List.filled(nbre_ligne,0), growable: false);

  for (int i = 1; i <= nbre_colone; i++) {
    for (int j = 1; j <= nbre_ligne; j++) {
      tab_matrice[i - 1][j - 1] = j;
    }
  }
  return tab_matrice;
}
