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
  
  // CREAR UNA FUNCIÓN PAR NO REPETIR CÓDIGO
  fill(255);
  float anchuraNombre = textWidth(nombreCompleto);
  float posXanchuraNombre = (1200 - anchuraNombre)/2;
  text(nombreCompleto, posXanchuraNombre, 100);
  
  float anchuraTalentoNatural = textWidth("Talento Natural");
  float posXanchuraTalentoNatural = (1200 - anchuraTalentoNatural)/2;
  text("Talento Natural", posXanchuraTalentoNatural, 180);
  
  noStroke();
  ellipse(width/2, height/2-130, 90, 90);
  fill(0);
  char c = char(lectorN.tn());
  float d = textWidth(c);
  text(lectorN.tn(), width/2-(d+12), height/2-115);
  
  fill(255);
  float anchuraUrgenciaInterior = textWidth("Urgencia Interior");
  float posXanchuraUrgenciaInterior = (1200 - anchuraUrgenciaInterior)/2;
  text("Urgencia Interior", posXanchuraUrgenciaInterior, 360);
  
  noStroke();
  ellipse(width/2, height/2+50, 90, 90);
  fill(0);
  char a = char(lectorN.tn());
  float b = textWidth(a);
  text(lectorFN.tn(), width/2-(b+12), height/2+65);
}
