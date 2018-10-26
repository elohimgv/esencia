/*
*  Autor: Elohim Guevara
*
*  pieza_1.pde
*
*/

//String palabra = "abcdefgh";
String palabra = "coh";
//String palabra = "llopo";
char[] arr = palabra.toCharArray();
int encontrar_c;
int encontrar_h;

void setup() {
  //println(palabra);
  println(arr);
  //println("El tamaño del array es: " + arr.length);
  
  encontrar_c = linearSearch(arr, arr.length, 'c');
  encontrar_h = linearSearch(arr, arr.length, 'h'); 

  
  for (int i = 0; i < arr.length; i++) {
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

