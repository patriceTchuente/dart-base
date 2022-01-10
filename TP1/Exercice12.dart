/* Écrire une fonction qui permet la recherche d'un élément dans un tableau d'entiers. 
La fonction prend en argument un tableau, sa longueur, ainsi que l'élément à chercher ;
 elle renvoie un indice. */

void main(List<String> args) {
  //test
  List t1 = [9, 2, 4, 6];
  print(rechercheTab(t1, t1.length-1, 3));
}

String rechercheTab(List tab, int taille, int val) {
  String resultat = "Element intuvable";
  for (int i = 0; i <= taille; i++) {
    if (tab[i] == val) {
      resultat = "L'element recherche se trouve a l'indice ${i}";
      return resultat;
    }
  }
  return resultat;
}
