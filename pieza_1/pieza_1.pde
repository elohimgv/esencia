/*
*  Autor: Elohim Guevara
*
*  pieza_1.pde
*
*/

//String palabra = "abcdefgh";
String palabra = "abcdefghijklmnñopqrstuvxyz";
//String palabra = "coh";
//String palabra = "llopo";
char[] arr = palabra.toCharArray();
int encontrar_c;
int encontrar_h;

void setup() {
  //println(palabra);
  println(arr);
  //println("El tamaño del arreglo es: " + arr.length);
  
  encontrar_c = linearSearch(arr, arr.length, 'c');
  encontrar_h = linearSearch(arr, arr.length, 'h'); 

  
  for (int i = 0; i < arr.length; i++) {
     // 1ra escala
    if (arr[i] == 'a' || arr[i] == 'A') {
      println("El valor de a/A es 1.");
    } else if (arr[i] == 'b' || arr[i] == 'B') {
      println("El valor de b/B es 2.");
    } else if (arr[i] == 'c' || arr[i] == 'C') {
      letraC(encontrar_c);
    } else if (arr[i] == 'd' || arr[i] == 'D') {
      println("El valor de d/D es 5.");
    } else if (arr[i] == 'e' || arr[i] == 'E') {
      println("El valor de e/E es 6.");
    } else if (arr[i] == 'f' || arr[i] == 'F') {
      println("El valor de f/F es 7.");
    } else if (arr[i] == 'g' || arr[i] == 'G') {
      println("El valor de g/G es 8.");
    } else if (arr[i] == 'h' || arr[i] == 'H') {
      consecutivaDeCesH(encontrar_h);
      // 2da escala
    } else if (arr[i] == 'i' || arr[i] == 'I') {
      println("El valor de i/I es 1.");
    } else if (arr[i] == 'j' || arr[i] == 'J') {
      println("El valor de j/J es 2.");
    } else if (arr[i] == 'k' || arr[i] == 'K') {
      println("El valor de k/K es 3.");
    } else if (arr[i] == 'l' || arr[i] == 'L') {
      println("El valor de l/L es 4.");
    } else if (arr[i] == 'm'|| arr[i] == 'M') {
      println("El valor de m/M es 6.");
    } else if (arr[i] == 'n' || arr[i] == 'N') {
      println("El valor de n/N es 7.");
    } else if (arr[i] == 'ñ' || arr[i] == 'Ñ') {
      println("El valor de ñ/Ñ es 8.");
    } else if (arr[i] == 'o' || arr[i] == 'O') {
      println("El valor de o/O es 9.");
      // 3ra escala
    } else if (arr[i] == 'p' || arr[i] == 'P') {
      println("El valor de p/P es 1.");
    } else if (arr[i] == 'q' || arr[i] == 'Q') {
      println("El valor de q/Q es 2.");
    } else if (arr[i] == 'r' || arr[i] == 'R') {
      println("El valor de r/R es 3.");
    } else if (arr[i] == 's' || arr[i] == 'S') {
      println("El valor de s/S es 4.");
    } else if (arr[i] == 't' || arr[i] == 'T') {
      println("El valor de t/T es 5.");
    } else if (arr[i] == 'u' || arr[i] == 'U') {
      println("El valor de u/U es 6.");
    } else if (arr[i] == 'v' || arr[i] == 'V') {
      println("El valor de v/V es 7.");
    } else if (arr[i] == 'x' || arr[i] == 'X') {
      println("El valor de x/X es 8.");
    } else if (arr[i] == 'y' || arr[i] == 'Y') {
      println("El valor de y/Y es 9.");
      // 4ta escala
    } else if (arr[i] == 'z' || arr[i] == 'Z') {
      println("El valor de z/Z es 1.");
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

// La finalidad de las funciones letraC() y consecutivaDeCesH() es encontrar la 
// letra c, y que después de esa letra c, exista un letra h para formar la letra
// 'ch' que es parte del alfabeto Español. Estás funciones tienen el desempeño
// esperado, solamente cuando exite un c y una h en el arreglo. Cuando hay dos 
// o más letras de cada una, el funcionamiento no es el optimo.
int lista = 0;
void letraC(int encontrar_c) { 
  if (encontrar_c < encontrar_h && encontrar_h < encontrar_c + 2) {
    println("c/C pierde su valor de 3.");
    println("Se fucionan la lentra c y la h.");
  } else {
    lista++;
    println(lista + " El valor de c/C es 3.");
  }
}

void consecutivaDeCesH(int encontrar_h) {
  if (encontrar_c < encontrar_h && encontrar_h < encontrar_c + 2) { 
    println("h/H es consecutiva de c/C."); 
    println("h/H pierde su valor de 9.");
    println("Por lo tanto tenemos la letra ch-CH con un valor de 4.");
  } else {
    println("¡H no es consecutiva de c!, por lo tanto no existe la palabra ch"); 
    println("El valor de h/H es 9.");
  }
}
