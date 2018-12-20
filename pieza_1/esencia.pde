/*
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
String dia = "09";
String mes = "09";
String ano = "1987";
String fechaNacimiento = dia+"-"+mes+"-"+ano;
char[] arrDia = dia.toCharArray();
char[] arrMes = mes.toCharArray();
char[] arrAno = ano.toCharArray();  

// Objeto declarado
LectorFechaNacimiento lectorFN;
LectorNombre lectorN;

PFont fuente;
PImage img;

void setup() {
  // Tamaño del lienzo
  size(1200, 760); 
  // Carga la fuente
  fuente = loadFont("Raleway-Regular-48.vlw");
  textFont(fuente);
  // Carga la imagen
  img = loadImage("fondo.jpg");
  
  lectorFN = new LectorFechaNacimiento(arrDia, arrMes, arrAno);
  lectorN = new LectorNombre();
  
  lectorN.lectorNombre(arrNombre, 1);
  lectorN.lectorNombre(arrApellidoPaterno, 2);
  lectorN.lectorNombre(arrApellidoMaterno, 3);
  lectorN.totalesNombre();
  lectorFN.fechaNacimiento();
  lectorFN.totalesFecha();
}

// Función principal
void draw() { // Despliega el lienzo
  image(img, 0, 0);
  float anchuraNombre = textWidth(nombreCompleto);
  float posXanchuraNombre = (1200 - anchuraNombre)/2;
  float anchuraTotal = textWidth("Nota Fundamental");
  float posXanchuraTotal = (1200 - anchuraTotal)/2;
  fill(255);
  text(nombreCompleto, posXanchuraNombre, 100);
  text("Talento Natural", posXanchuraTotal, 180);
  // HACER RESPONSIVA ESTÁ PARTE DEL CÓDIGO
  noStroke();
  ellipse(width/2, height/2-130, 90, 90);
  fill(0);
  text(lectorN.tn(), width/2-27, height/2-115);
}
