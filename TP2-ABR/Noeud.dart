import 'dart:math';

class Noeud {
  int? cle;
  Noeud? fils_gauche;
  Noeud? fils_droit;

  Noeud(int val) {
    this.cle = val;
    this.fils_gauche = fils_gauche;
    this.fils_droit = fils_droit;
  }

  int? get getCle => this.cle;
  set setCle(int cle) => this.cle = cle;

  Noeud? get getFilsgauche => this.fils_gauche;
  set setFilsgauche(Noeud value) => this.fils_gauche = value;

  Noeud? get getFilsdroit => this.fils_droit;
  set setFilsdroit(Noeud value) => this.fils_droit = value;


  /* Exo 1
    Calculer la hauteur d'un arbre en vous basant sur la définition récursive :

    - un arbre vide est de hauteur 0 ;
    - un arbre non vide a pour hauteur 1 + la hauteur maximale entre ses fils.
*/
  static int hauteurABR(Noeud? abr) {
    if (abr == null) {
      return 0;
    } else {
      int t1 = hauteurABR(abr.fils_gauche);
      int t2 = hauteurABR((abr.fils_droit));
      int au = 1 + max(t1, t2);
      return au;
    }
  }
}
