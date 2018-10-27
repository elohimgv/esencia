/*
*  Autor: Elohim Guevara
*
*  pieza_1.pde
*
*/

//String palabra = "coh";
//String palabra = "llopo";
String palabra = "abcdefghijklmnñopqrstuvxyz";
char[] arr = palabra.toCharArray();
int encontrar_c;
int encontrar_h;
// Letras
int a,b,c,d,e,f,g,h,i,j,k,l,m,n,nn,o,p,q,r,s,t,u,v,x,y,z;
String caracterNulo = "¡NO HAY VALORES DE ESTA LETRA!";

void setup() {
  //println(palabra);
  println(arr);
  //println("El tamaño del arreglo es: " + arr.length);
  
  encontrar_c = linearSearch(arr, arr.length, 'c');
  encontrar_h = linearSearch(arr, arr.length, 'h'); 
  
  for (int ciclo = 0; ciclo < arr.length; ciclo++) {
     // 1ra escala
    if (arr[ciclo] == 'a' || arr[ciclo] == 'A') {
      println("El valor de a/A es 1.");
      a = 1;
    } else if (arr[ciclo] == 'b' || arr[ciclo] == 'B') {
      println("El valor de b/B es 2.");
      b = 2;
    } else if (arr[ciclo] == 'c' || arr[ciclo] == 'C') {
      letraC(encontrar_c);
      c = 3;
    } else if (arr[ciclo] == 'd' || arr[ciclo] == 'D') {
      println("El valor de d/D es 5.");
      d = 5;
    } else if (arr[ciclo] == 'e' || arr[ciclo] == 'E') {
      println("El valor de e/E es 6.");
      e = 6;
    } else if (arr[ciclo] == 'f' || arr[ciclo] == 'F') {
      println("El valor de f/F es 7.");
      f = 7;
    } else if (arr[ciclo] == 'g' || arr[ciclo] == 'G') {
      println("El valor de g/G es 8.");
      g = 8;
    } else if (arr[ciclo] == 'h' || arr[ciclo] == 'H') {
      consecutivaDeCesH(encontrar_h);
      h = 9;
      // 2da escala
    } else if (arr[ciclo] == 'i' || arr[ciclo] == 'I') {
      println("El valor de i/I es 1.");
      i = 1;
    } else if (arr[ciclo] == 'j' || arr[ciclo] == 'J') {
      println("El valor de j/J es 2.");
      j = 2;
    } else if (arr[ciclo] == 'k' || arr[ciclo] == 'K') {
      println("El valor de k/K es 3.");
      k = 3;
    } else if (arr[ciclo] == 'l' || arr[ciclo] == 'L') {
      println("El valor de l/L es 4.");
      l = 4;
      // Falta ll
    } else if (arr[ciclo] == 'm'|| arr[ciclo] == 'M') {
      println("El valor de m/M es 6.");
      m = 6;
    } else if (arr[ciclo] == 'n' || arr[ciclo] == 'N') {
      println("El valor de n/N es 7.");
      n = 7;
    } else if (arr[ciclo] == 'ñ' || arr[ciclo] == 'Ñ') {
      println("El valor de ñ/Ñ es 8.");
      nn = 8;
    } else if (arr[ciclo] == 'o' || arr[ciclo] == 'O') {
      println("El valor de o/O es 9.");
      o = 9;
      // 3ra escala
    } else if (arr[ciclo] == 'p' || arr[ciclo] == 'P') {
      println("El valor de p/P es 1.");
      p = 1;
    } else if (arr[ciclo] == 'q' || arr[ciclo] == 'Q') {
      println("El valor de q/Q es 2.");
      q = 2;
    } else if (arr[ciclo] == 'r' || arr[ciclo] == 'R') {
      println("El valor de r/R es 3.");
      r = 3;
    } else if (arr[ciclo] == 's' || arr[ciclo] == 'S') {
      println("El valor de s/S es 4.");
      s = 4;
    } else if (arr[ciclo] == 't' || arr[ciclo] == 'T') {
      println("El valor de t/T es 5.");
      t = 5;
    } else if (arr[ciclo] == 'u' || arr[ciclo] == 'U') {
      println("El valor de u/U es 6.");
      u = 6;
    } else if (arr[ciclo] == 'v' || arr[ciclo] == 'V') {
      println("El valor de v/V es 7.");
      v = 7;
    } else if (arr[ciclo] == 'x' || arr[ciclo] == 'X') {
      println("El valor de x/X es 8.");
      x = 8;
    } else if (arr[ciclo] == 'y' || arr[ciclo] == 'Y') {
      println("El valor de y/Y es 9.");
      y = 9;
      // 4ta escala
    } else if (arr[ciclo] == 'z' || arr[ciclo] == 'Z') {
      println("El valor de z/Z es 1.");
      z = 1;
    } else {
     println(caracterNulo); 
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

void ll() {
  
}

// Función principal
void darw() {
  
}
