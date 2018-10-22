/*
*  Autor: Elohim Guevara
*
*  pieza_1.pde
*
*/

//String palabra = "abcdefgh";
String palabra = "ooch";
//String palabra = "coch";
char[] arr = palabra.toCharArray();
int pos_c;
int pos_h;

void setup() {
  //println(palabra);
  //println(arr);
  //println("El tamaño del array es: " + arr.length);
  
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == 'a' || arr[i] == 'A') {
      println("El valor de 'a' minúscula o 'A' mayúscula es 1");
    } else if (arr[i] == 'b' || arr[i] == 'B') {
      println("El valor de 'b' minúscula o 'B' mayúscula es 2");
    } else if (arr[i] == 'c' || arr[i] == 'C') {
      println("El valor de 'c' minúscula o 'C' mayúscula es 3");
      pos_c = linearSearch(arr, arr.length, 'c');
      //println("La posicioón de c es: " + pos_c);
    } else if (arr[i] == 'd' || arr[i] == 'D') {
      println("El valor de 'd' minúscula o 'D' mayúscula es 5");
    } else if (arr[i] == 'e' || arr[i] == 'E') {
      println("El valor de 'e' minúscula o 'E' mayúscula es 6");
    } else if (arr[i] == 'f' || arr[i] == 'F') {
      println("El valor de 'f' minúscula o 'F' mayúscula es 7");
    } else if (arr[i] == 'g' || arr[i] == 'G') {
      println("El valor de 'g' minúscula o 'G' mayúscula es 8");
    } else if (arr[i] == 'h' || arr[i] == 'H') {
      println("El valor de 'h' minúscula o 'H' mayúscula es 9");
      pos_h = linearSearch(arr, arr.length, 'h');
      //println("La posicioón de h es: " + pos_h);
      palabraCh();
    } else {
     println("¡NO HAY VALORES ESTA LETRA!"); 
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

void palabraCh() {
  if (pos_c < pos_h && pos_h < pos_c + 2) { 
    println("¡H ES CONSECUTIVA DE C!, POR LO TANTO EXISTE LA PALABRA CH CON UN VALOR DE 4.");
  } else {
    println("¡H NO ES CONSECUTIVA C!, POR LO TANTO NO EXISTE LA PALABRA CH");  
  }
}
