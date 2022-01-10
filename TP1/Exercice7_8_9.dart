/*
Écrire une façon de déclarer une matrice. On s'attend à une déclaration de variable.

Une matrice M de dimension m × n est un tableau de dimension m
dont chaque élément est un tableau de dimension n. 
On peut donc déclarer la matrice sous la forme suivante  */

void main(List<String> args) {
  // declaration de matrice
  Matrice mat = new Matrice(3, 3);
  Matrice mat1 = new Matrice(3, 3);
  Matrice matSol = new Matrice(3, 3);

  // remplissage de de matrice

  mat.remplirMatrice(mat, 3, 3, [1, 1, 1, 1, 1, 1, 1, 1, 1]);
  mat1.remplirMatrice(mat1, 3, 3, [1, 1, 1, 1, 1, 1, 1, 1, 1]);

  // somme matrice
  matSol = matSol.sommeMatrice(mat, mat1);
  print(matSol.getTab);
}

class Matrice {
  var colone;
  var ligne;
  late List tab;

  Matrice(this.colone, this.ligne) {
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

  // Solution exo8
  Object remplirMatrice(Matrice m, int nbre_colone, int nbre_ligne, List tab) {
    /*fonction qui permet de remplir une matrice avec des valeurs */
    m.setColone = nbre_colone;
    m.setLigne = nbre_ligne;
    int k = 0;
    var mtab = List.generate(nbre_colone, (i) => List.filled(nbre_ligne, 0),
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

  // Solution exo9: Somme de deux matrices
  Matrice sommeMatrice(Matrice m1, Matrice m2) {
    Matrice solution = new Matrice(m1.getColone, m1.getLigne);
    List l1 = m1.getTab;
    List l2 = m2.getTab;
    var liste = List.generate(m1.getColone, (i) => List.filled(m1.getLigne, 0),
        growable: false);
    for (int i = 1; i <= l1.length; i++) {
      for (int j = 1; j <= l2.length; j++) {
        liste[i - 1][j - 1] = l1[i - 1][j - 1] + l2[i - 1][j - 1];
        
      }
    }
    solution.setTab = liste;
    return solution;
  }
}
