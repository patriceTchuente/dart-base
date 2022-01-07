/*
Écrire une façon de déclarer une matrice. On s'attend à une déclaration de variable.

Une matrice M de dimension m × n est un tableau de dimension m
dont chaque élément est un tableau de dimension n. 
On peut donc déclarer la matrice sous la forme suivante  */

void main(List<String> args) {
  Matrice mat = new Matrice(3, 4);
  mat.remplirMatrice(mat, 3, 4, [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 10, 11]);
  print(mat.getTab);
}

class Matrice {
  var colone;
  var ligne;
  var tab;

  Matrice([nbre_colone, nbre_ligne]) {
    this.colone = nbre_colone;
    this.ligne = nbre_ligne;
    this.tab = List.generate(
        this.getColone, (i) => List.filled(this.getLigne, 0),
        growable: false);
  }

  int get getColone => this.colone;
  int get getLigne => this.ligne;
  List get getTab => this.tab;

  set setColone(var colone) => this.colone = colone;
  set setLigne(ligne) => this.ligne = ligne;
  set setTab(var tab) => this.tab = tab;

  Object remplirMatrice(Matrice m, int nbre_colone, int nbre_ligne, List tab) {
    m.setColone = nbre_colone;
    m.setLigne = nbre_ligne;
    int k = 0;
    var mtab = List.generate(
        this.getColone, (i) => List.filled(this.getLigne, 0),
        growable: false);

    for (int i = 1; i <= m.getColone; i++) {
      for (int j = 1; j <= m.getLigne; j++) {
        mtab[i - 1][j - 1] = tab[k];
        k++;
      }
    }
    m.setTab = mtab;
    return m;
  }
}
