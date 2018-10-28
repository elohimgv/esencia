/*
*  Autor: Elohim Guevara
*
*  pieza_1.pde
*
*/

String nombre = "Antonio Diaz Pérez";
char[] arr = nombre.toCharArray();
int encontrar_c;
int encontrar_h;
// Letras
int a,b,c,d,e,f,g,h,i,j,k,l,m,n,nn,o,p,q,r,s,t,u,v,x,y,z;
int contadorA,contadorB,contadorC,contadorD,contadorE,contadorF,
    contadorG,contadorH,contadorI,contadorJ,contadorK,contadorL,
    contadorM,contadorN,contadorNN,contadorO,contadorP,contadorQ,
    contadorR,contadorS,contadorT,contadorU,contadorV,contadorX,
    contadorY,contadorZ = 0;
int totalA,totalB,totalC,totalD,totalE,totalF,totalG,totalH,totalI,
    totalJ,totalK,totalL,totalM,totalN,totalNN,totalO,totalP,totalQ,
    totalR,totalS,totalT,totalU,totalV,totalX,totalY,totalZ= 0;
String caracterNulo = "¡NO HAY VALORES DE ESTA LETRA!";
PFont fuente;
PImage img;

void setup() {
  size(1200, 760); 
  fuente = loadFont("Raleway-Regular-48.vlw");
  textFont(fuente);
  img = loadImage("fondo.jpg");
  //println(palabra);
  //println(arr);
  //println("El tamaño del arreglo es: " + arr.length);
  
  encontrar_c = linearSearch(arr, arr.length, 'c');
  encontrar_h = linearSearch(arr, arr.length, 'h'); 
  for (int ciclo = 0; ciclo < arr.length; ciclo++) {
     // 1ra escala
    if (arr[ciclo] == 'a' || arr[ciclo] == 'A' || arr[ciclo] == 'á' || arr[ciclo] == 'Á') {
      println("El valor de a/A es 1.");
      a = 1;
      contadorA++;
      totalA = contadorA;
    } else if (arr[ciclo] == 'b' || arr[ciclo] == 'B') {
      println("El valor de b/B es 2.");
      b = 2;
      contadorB++;
      totalB = contadorB;
    } else if (arr[ciclo] == 'c' || arr[ciclo] == 'C') {
      letraC(encontrar_c);
      c = 3;
      contadorC++;
      totalC = contadorC;
    } else if (arr[ciclo] == 'd' || arr[ciclo] == 'D') {
      println("El valor de d/D es 5.");
      d = 5;
      contadorD++;
      totalD = contadorD;
    } else if (arr[ciclo] == 'e' || arr[ciclo] == 'E' || arr[ciclo] == 'é' || arr[ciclo] == 'É') {
      println("El valor de e/E es 6.");
      e = 6;
      contadorE++;
      totalE = contadorE;
    } else if (arr[ciclo] == 'f' || arr[ciclo] == 'F') {
      println("El valor de f/F es 7.");
      f = 7;
      contadorF++;
      totalF = contadorF;
    } else if (arr[ciclo] == 'g' || arr[ciclo] == 'G') {
      println("El valor de g/G es 8.");
      g = 8;
      contadorG++;
      totalG = contadorG;
    } else if (arr[ciclo] == 'h' || arr[ciclo] == 'H') {
      consecutivaDeCesH(encontrar_h);
      h = 9;
      contadorH++;
      totalH = contadorH;
      // 2da escala
    } else if (arr[ciclo] == 'i' || arr[ciclo] == 'I' || arr[ciclo] == 'í' || arr[ciclo] == 'Í') {
      println("El valor de i/I es 1.");
      i = 1;
      contadorI++;
      totalI = contadorI;
    } else if (arr[ciclo] == 'j' || arr[ciclo] == 'J') {
      println("El valor de j/J es 2.");
      j = 2;
      contadorJ++;
      totalJ = contadorJ;
    } else if (arr[ciclo] == 'k' || arr[ciclo] == 'K') {
      println("El valor de k/K es 3.");
      k = 3;
      contadorK++;
      totalK = contadorK;
    } else if (arr[ciclo] == 'l' || arr[ciclo] == 'L') {
      println("El valor de l/L es 4.");
      l = 4;
      contadorL++;
      totalL = contadorL;
      // Falta ll
    } else if (arr[ciclo] == 'm'|| arr[ciclo] == 'M') {
      println("El valor de m/M es 6.");
      m = 6;
      contadorM++;
      totalM = contadorM;
    } else if (arr[ciclo] == 'n' || arr[ciclo] == 'N') {
      println("El valor de n/N es 7.");
      n = 7;
      contadorN++;
      totalN = contadorN;
    } else if (arr[ciclo] == 'ñ' || arr[ciclo] == 'Ñ') {
      println("El valor de ñ/Ñ es 8.");
      nn = 8;
      contadorNN++;
      totalNN = contadorNN;
    } else if (arr[ciclo] == 'o' || arr[ciclo] == 'O' || arr[ciclo] == 'ó' || arr[ciclo] == 'Ó') {
      println("El valor de o/O es 9.");
      o = 9;
      contadorO++;
      totalO = contadorO;
      // 3ra escala
    } else if (arr[ciclo] == 'p' || arr[ciclo] == 'P') {
      println("El valor de p/P es 1.");
      p = 1;
      contadorP++;
      totalP = contadorP;
    } else if (arr[ciclo] == 'q' || arr[ciclo] == 'Q') {
      println("El valor de q/Q es 2.");
      q = 2;
      contadorQ++;
      totalQ = contadorQ;
    } else if (arr[ciclo] == 'r' || arr[ciclo] == 'R') {
      println("El valor de r/R es 3.");
      r = 3;
      contadorR++;
      totalR = contadorR;
    } else if (arr[ciclo] == 's' || arr[ciclo] == 'S') {
      println("El valor de s/S es 4.");
      s = 4;
      contadorS++;
      totalS = contadorS;
    } else if (arr[ciclo] == 't' || arr[ciclo] == 'T') {
      println("El valor de t/T es 5.");
      t = 5;
      contadorT++;
      totalT = contadorT;
    } else if (arr[ciclo] == 'u' || arr[ciclo] == 'U' || arr[ciclo] == 'ú' || arr[ciclo] == 'Ú') {
      println("El valor de u/U es 6.");
      u = 6;
      contadorU++;
      totalU = contadorU;
    } else if (arr[ciclo] == 'v' || arr[ciclo] == 'V') {
      println("El valor de v/V es 7.");
      v = 7;
      contadorV++;
      totalV = contadorV;
    } else if (arr[ciclo] == 'x' || arr[ciclo] == 'X') {
      println("El valor de x/X es 8.");
      x = 8;
      contadorX++;
      totalX = contadorX;
    } else if (arr[ciclo] == 'y' || arr[ciclo] == 'Y') {
      println("El valor de y/Y es 9.");
      y = 9;
      contadorY++;
      totalY = contadorY;
      // 4ta escala
    } else if (arr[ciclo] == 'z' || arr[ciclo] == 'Z') {
      println("El valor de z/Z es 1.");
      z = 1;
      contadorZ++;
      totalZ = contadorZ;
    } else {
      // Indica que es un espacio o es tulizado 
      // algun otro caracter que no está
      // dento de los parámetros 
     println(caracterNulo); 
    } 
  }
  println("El total de apariciones de la letra A es : "+totalA);
  println("El total de apariciones de la letra B es : "+totalB);
  println("El total de apariciones de la letra C es : "+totalC);
  println("El total de apariciones de la letra D es : "+totalD);
  println("El total de apariciones de la letra E es : "+totalE);
  println("El total de apariciones de la letra F es : "+totalF);
  println("El total de apariciones de la letra G es : "+totalG);
  println("El total de apariciones de la letra H es : "+totalH);
  println("El total de apariciones de la letra I es : "+totalI);
  println("El total de apariciones de la letra J es : "+totalJ);
  println("El total de apariciones de la letra K es : "+totalK);
  println("El total de apariciones de la letra L es : "+totalL);
  println("El total de apariciones de la letra M es : "+totalM);
  println("El total de apariciones de la letra N es : "+totalN);
  println("El total de apariciones de la letra Ñ es : "+totalNN);
  println("El total de apariciones de la letra O es : "+totalO);
  println("El total de apariciones de la letra P es : "+totalP);
  println("El total de apariciones de la letra Q es : "+totalQ);
  println("El total de apariciones de la letra R es : "+totalR);
  println("El total de apariciones de la letra S es : "+totalS);
  println("El total de apariciones de la letra T es : "+totalT);
  println("El total de apariciones de la letra U es : "+totalU);
  println("El total de apariciones de la letra V es : "+totalV);
  println("El total de apariciones de la letra X es : "+totalX);
  println("El total de apariciones de la letra Y es : "+totalY);
  println("El total de apariciones de la letra Z es : "+totalZ);
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
void draw() {
  image(img, 0, 0);
  float anchuraNombre = textWidth(nombre);
  float posX = (1200 - anchuraNombre)/2;
  fill(255);
  text(nombre, posX, 100);
}
