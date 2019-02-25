/*
*  Autor: Elohim Guevara
*
*  esencia.pde
*
*/

// Variables para el nombre de la persona
String nombre = "Julia Patricia";
String apellidoPaterno = "Solís";
String apellidoMaterno = "Santoyo";
String nombreCompleto = nombre+" "+apellidoPaterno+" "+apellidoMaterno;

// Convetir la cadena en un arreglo de caracteres
char[] arrNombre = nombre.toCharArray();
char[] arrApellidoPaterno = apellidoPaterno.toCharArray();
char[] arrApellidoMaterno = apellidoMaterno.toCharArray();

// Variables para la fecha de nacimiento
String dia = "26";
String mes = "05";
String ano = "1990";
String fechaNacimiento = dia+"-"+mes+"-"+ano;
char[] arrDia = dia.toCharArray();
char[] arrMes = mes.toCharArray();
char[] arrAno = ano.toCharArray();  

// Objetos declarados
LectorFechaNacimiento f;
LectorNombre n;

PFont fuente;
PImage img;

void setup() {
  // Tamaño del lienzo
  size(1200, 760); 
  // Carga de fuente
  fuente = loadFont("Raleway-Regular-48.vlw");
  textFont(fuente);
  // Carga de imagen
  img = loadImage("fondo.jpg");
  
  f = new LectorFechaNacimiento(arrDia, arrMes, arrAno);
  n = new LectorNombre();
  
  n.lectorNombre(arrNombre, 1);
  n.lectorNombre(arrApellidoPaterno, 2);
  n.lectorNombre(arrApellidoMaterno, 3);
  n.totalesNombre();
  f.fechaNacimiento();
  f.totalesFecha();
}

// Despliega el lienzo
void draw() { 
  image(img, 0, 0);
  
  // Nombre
  desplegarTexto(nombreCompleto, 100);
  
  // Talento Natural
  desplegarTexto("Talento Natural", 180);
  desplegarDigito(n.tn(), -130, -115);
  
  // Urgencia Interior
  desplegarTexto("Urgencia Interior", 360);
  desplegarDigito(f.tn(), 50, 65);
}

void desplegarTexto(String texto, int h) {
  fill(255);
  float anchuraTexto = textWidth(texto);
  float posXanchuraTexto = (1200 - anchuraTexto)/2;
  text(texto, posXanchuraTexto, h);
}

void desplegarDigito(int digito, int heightEllipse, int heightText) {
  noStroke();
  ellipse(width/2, height/2+heightEllipse, 90, 90);
  fill(0);
  char c = char(digito);
  float d = textWidth(c);
  text(digito, width/2-(d+12), height/2+heightText);
}
