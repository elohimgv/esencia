/*
*
*  Autor: Elohim Guevara
*
*  esencia.pde
*
*/

// Variables para el nombre de la persona
String nombre = "Elohim";
String apellidoPaterno = "Guevara";
String apellidoMaterno = "Varela";
String nombreCompleto = nombre+" "+apellidoPaterno+" "+apellidoMaterno;

// Convetir la cadena en un arreglo de caracteres
char[] arrNombre = nombre.toCharArray();
char[] arrApellidoPaterno = apellidoPaterno.toCharArray();
char[] arrApellidoMaterno = apellidoMaterno.toCharArray();

// Variables para la fecha de nacimiento
int dia = 9; 
int mes = 9; 
int ano = 1987;

// Objetos declarados
LectorFechaNacimiento f;
LectorNombre n;
Interfaz i;

PFont fuente;
PImage img;

void setup() {
  // Tamaño del lienzo
  size(displayWidth, displayHeight); 
  background(0);
  // Carga de fuente
  fuente = loadFont("Raleway-Regular-48.vlw");
  textFont(fuente);
  // Carga de imagen
  
  f = new LectorFechaNacimiento(dia, mes, ano);
  n = new LectorNombre();
  i = new Interfaz();
  
  n.lectorNombre(arrNombre, 1);
  n.lectorNombre(arrApellidoPaterno, 2);
  n.lectorNombre(arrApellidoMaterno, 3);
  n.totalesNombre();
  f.totalesFecha(); 
}

// Despliega el lienzo
void draw() { 
  // Nombre
  i.desplegarTexto(nombreCompleto, 100);
  
  // Talento Natural
  i.desplegarTexto("Talento Natural", 180);
  i.desplegarDigito(n.tn(), -130, -115);
  
  // Urgencia Interior
  i.desplegarTexto("Urgencia Interior", 360);
  i.desplegarDigito(f.ui(), 50, 65);
}
