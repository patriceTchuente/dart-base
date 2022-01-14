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

  /*--------------- Fonction necessaire pour la suite du travail --------------- */

  static bool estVide(Noeud? n) {
    return n == null;
  }

  static bool estUneFeuille(Noeud? n) {
    if (estVide(n)) {
      return false;
    } else if ((estVide(n!.fils_gauche)) && (estVide(n.fils_droit))) {
      return true;
    } else {
      return false;
    }
  }

  static bool estNoeudInterne(Noeud? n) {
    return !estUneFeuille(n);
  }

  /* ------------------------- Exo 1-----------------------------
    Calculer la hauteur d'un arbre en vous basant sur la définition récursive :
      - un arbre vide est de hauteur 0 ;
      - un arbre non vide a pour hauteur 1 + la hauteur maximale entre ses fils.
  */
  static int hauteurArbre(Noeud? abr) {
    if (estVide(abr)) {
      return 0;
    } else {
      int t1 = hauteurArbre(abr!.fils_gauche);
      int t2 = hauteurArbre(abr.fils_droit);
      return 1 + max(t1, t2);
    }
  }

  /* ----------------------- Exo 2 -------------------------------
  
    Calculer le nombre de nœuds en vous basant sur la définition récursive :
      - si l'arbre est vide : renvoyer 0 ;
      - sinon renvoyer 1 plus la somme du nombre de nœuds des sous-arbres.
  */
  static int nombreNoeudArbre(Noeud? abr) {
    if (estVide(abr)) {
      return 0;
    } else {
      int compteur1 = nombreNoeudArbre(abr!.fils_gauche);
      int compteur2 = nombreNoeudArbre(abr.fils_droit);
      return 1 + compteur1 + compteur2;
    }
  }
  /*-------------------------- Exo 3 ---------------------------------
  Calculer le nombre de feuilles en vous basant sur la définition récursive :
    un arbre vide n'a pas de feuille ;

    un arbre non vide a son nombre de feuilles défini de la façon suivante :
    si le nœud est une feuille, alors on renvoie 1,
    si c'est un nœud interne, alors le nombre de feuilles est la somme du nombre de feuilles de chacun de ses fils.
  */

  static int nombreDeFeuille(Noeud? n) {
    //une feuille est un noeud qui n'a pas d'enfant
    if (estVide(n)) {
      return 0;
    } else if (estUneFeuille(n)) {
      return 1;
    } else {
      return nombreDeFeuille(n!.fils_gauche) + nombreDeFeuille(n.fils_droit);
    }
  }

  /*-------------------------- Exo 4 ---------------------------------
  Calculer le nombre de nœuds internes en vous basant sur la définition récursive :
    un arbre vide n'a pas de nœud interne.
    si le nœud en cours n'a pas de fils alors renvoyer 0
    si le nœud a au moins un fils, renvoyer 1 plus la somme des nœuds interne des sous-arbres.

  */

  static int nombreDeNoeudInterne(Noeud? n) {
    //un noeud interne est un noeud qui a au moins un enfant
    if (estVide(n)) {
      return 0;
    } else if (estUneFeuille(n)) {
      return 0;
    } else {
      return 1 +
          nombreDeNoeudInterne(n!.fils_gauche) +
          nombreDeNoeudInterne(n.fils_droit);
    }
  }

  /*------------------------------- Exo 5 ---------------------
    Créer un algorithme permettant de détruire complètement un arbre.
  */
  void supprimerArbre(Noeud? abr) {
    if (!estVide(abr)) {
      supprimerArbre(abr!.fils_gauche);
      supprimerArbre(abr.fils_droit);
      abr.cle = null;
    }
  }
}
