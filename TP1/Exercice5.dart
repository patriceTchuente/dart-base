/*Écrire une fonction qui permet de faire la copie d'un tableau. 
Cette fonction prend en entrée deux tableaux de même longueur, 
leur longueur, l'indice à partir duquel les données doivent être copiées, 
le dernier indice qui doit être copié et le premier indice où insérer des données dans le deuxième tableau */

void main(List<String> args) {
  //test
  
}

List copyTab(
    List tab1, List tab2, int l, int indiceI, int indiceF, int indiceD) {
  if ((indiceD + indiceF - indiceI) > l) {
    print('impossible de faire la copie, espace insufusante');
  } else {
    for (int i = indiceI; i <= indiceF; i++) {
      tab2[indiceD] = tab1[i];
      indiceD++;
    }
  }
  return tab2;
}
