/*
*  Autor: Elohim Guevara
*
*  pieza_1.pde
*
*/

//String palabra = "abcdefgh";
String palabra = "och";
//String palabra = "coh";
char[] arr = palabra.toCharArray();
int pos_c;
int pos_h;

void setup() {
  //println(palabra);
  //println(arr);
  //println("El tamaño del array es: " + arr.length);
  
  pos_c = linearSearch(arr, arr.length, 'c');
  pos_h = linearSearch(arr, arr.length, 'h');
  
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == 'a' || arr[i] == 'A') {
      println("El valor de 'a' minúscula o 'A' mayúscula es 1.");
    } else if (arr[i] == 'b' || arr[i] == 'B') {
      println("El valor de 'b' minúscula o 'B' mayúscula es 2.");
    } else if (arr[i] == 'c' || arr[i] == 'C') {
      //println("El valor de 'c' minúscula o 'C' mayúscula es 3.");
      //pos_c = linearSearch(arr, arr.length, 'c');
      letraC(pos_c);
      //println("La posicioón de c es: " + pos_c);
    } else if (arr[i] == 'd' || arr[i] == 'D') {
      println("El valor de 'd' minúscula o 'D' mayúscula es 5.");
    } else if (arr[i] == 'e' || arr[i] == 'E') {
      println("El valor de 'e' minúscula o 'E' mayúscula es 6.");
    } else if (arr[i] == 'f' || arr[i] == 'F') {
      println("El valor de 'f' minúscula o 'F' mayúscula es 7.");
    } else if (arr[i] == 'g' || arr[i] == 'G') {
      println("El valor de 'g' minúscula o 'G' mayúscula es 8.");
    } else if (arr[i] == 'h' || arr[i] == 'H') {
      //println("El valor de 'h' minúscula o 'H' mayúscula es 9.");
      //pos_h = linearSearch(arr, arr.length, 'h');
      //println("La posicioón de h es: " + pos_h);
      consecutivaDeCesH(pos_h);
    } else {
     println("¡NO HAY VALORES DE ESTA LETRA!"); 
    }
  }
}

// Búsqueda lineal
int linearSearch(char arr[], int n, char x) {
  for (int i = 0; i < n; i++)  { 
    // Retornar la posición (index) del elemento si  
    // el elemento es encontrado 
    if (arr[i] == x) 
      return i; 
    } 
    // Retornar -1 si el elemento no es encontrado 
    return -1; 
}

void letraC(int pos_c) {
  if (pos_c > pos_h) {
    println("El valor de c/C es 3.");
  } else {
    println("c/C pierde su valor de 3.");
    println("Se fucionan la lentra c y la h.");
  }
}

void consecutivaDeCesH(int pos_h) {
  if (pos_c < pos_h && pos_h < pos_c + 2) { 
    println("h/H es consecutiva de c/C."); 
    println("h/H pierde su valor de 9.");
    println("Por lo tanto tenemos la letra ch-CH con un valor de 4.");
  } else {
    println("¡H no es consecutiva de c!, por lo tanto no existe la palabra ch"); 
    println("El valor de h/H es 9.");
  }
}
