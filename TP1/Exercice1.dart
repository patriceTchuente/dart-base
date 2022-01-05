/* Écrire un algorithme permettant de faire la somme des N premiers entiers. 
  La fonction demandée prend en entrée un nombre entier, N, 
  et renvoie un autre nombre entier, la somme demandée
*/

void main() {
  // test function
  print(nFirstNumber(5));
}

int nFirstNumber(int number){
  if(number <= 0){
    return 0;
  }else{
    return number + nFirstNumber(number - 1);
  }
} 
