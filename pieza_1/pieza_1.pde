/*
*  Autor: Elohim Guevara
*
*  pieza_1.pde
*
*/

String palabra = "Elohim";
char[] a = palabra.toCharArray();

void setup() {
  println(palabra);
  println(a);
  println("El tamaño del array es: " + a.length);
  for (int i = 0; i < a.length; i++) {
    if (a[i] == 'e' || a[i] == 'E') {
      println("El valor de 'e' minúscula o 'E' mayúscula es 6");
    } else if (a[i] == 'h' || a[i] == 'H') {
      println("El valor 'h' minúscula o 'H' mayúscula es 9 ");
    } else {
     println("No hay valores"); 
    }
  }
}
