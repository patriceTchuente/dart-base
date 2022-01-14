import 'dart:math';

import 'Noeud.dart';

void main(List<String> args) {
  ABR arbre = new ABR(1);

  arbre.noeud!.setFilsgauche = new Noeud(2);
  arbre.noeud!.setFilsdroit = new Noeud(3);

  arbre.noeud!.fils_gauche!.setFilsgauche = new Noeud(4);
  arbre.noeud!.fils_gauche!.fils_gauche!.setFilsgauche = new Noeud(9);
  print(arbre.getNoeud!.fils_gauche!.getCle);
  int s = Noeud.hauteurABR(arbre.noeud);
  print(s);
}

class ABR {
  Noeud? noeud;

  //constructeur
  ABR(int val) {
    this.noeud = new Noeud(val);
  }

  Noeud? get getNoeud => this.noeud;

  set setNoeud(Noeud noeud) => this.noeud = noeud;
}
