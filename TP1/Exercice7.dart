/*
Écrire une façon de déclarer une matrice. On s'attend à une déclaration de variable.

Une matrice M de dimension m × n est un tableau de dimension m
dont chaque élément est un tableau de dimension n. 
On peut donc déclarer la matrice sous la forme suivante  */

class Matrice {
  var colone;
  var ligne;
  var tab;
 
  Matrice([this.colone, this.ligne, this.tab]);

  int get getColone => this.colone;
  int get getLigne => this.ligne;
  List get getTab => this.tab;



  set setColone(var colone) => this.colone = colone;
  set setLigne(ligne) => this.ligne = ligne;
  set setTab(var tab) => this.tab = tab;

}
