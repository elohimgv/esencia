
/*
*
*  Autor: Elohim Guevara
*
*  esencia.pde
*
*/

PFont fuente;
// Variables para el nombre de la persona
String nombreCompleto = "";
String borrarLetra = "";
String[] moNombre = {};

// Variables para la fecha de nacimiento
int dia = 9; 
int mes = 9; 
int ano = 1987;

// Objetos declarados
LectorFechaNacimiento f;
LectorNombre n;
Interfaz gui;

void setup() {
  // Crear fuente
  size(displayWidth, displayHeight);
  fuente = createFont("Arial", 32);
  textFont(fuente);
  
  f = new LectorFechaNacimiento(dia, mes, ano);
  n = new LectorNombre();
  gui = new Interfaz();
  
  f.totalesFecha(); // mover a keyPressed()
}

// Dibujando sobre el lienzo
void draw() { 
  background(234, 17, 17);
  
  //// Título ////
  color colTexto = color(234, 252, 38);
  gui.texto("SEGÚN IGLESIAS JANEIRO", 50, 100, 80, colTexto);
  
  //// Nombre ////
  gui.texto("Nombre: ", 50, 150, 32, colTexto);
  // Para obtener nombre de la persona
  color colPleca = color(234, 252, 38, 100);
  gui.inputTexto(172, 125, 300, 30, colPleca);
  int offsetNombre = int(textWidth("Nombre: ")+46);
  gui.texto(nombreCompleto, offsetNombre, 150, 26, colTexto);
  
  //// Fecha de nacimiento ////
  gui.texto("Fecha de nacimiento: ", 50, 200, 32, colTexto);
  // Para obtener la fecha de nacimiento
  gui.inputTexto(355, 175, 300, 30, colPleca);
  int offsetFecha = int(textWidth("Fecha de nacimiento: ")+46);
  gui.texto("E", offsetFecha, 200, 26, colTexto);
  
  // COORDENADAS PARA UBICAR OBJETOS DE INTERFAZ
  text("x: "+mouseX, width*.85, height*.2);
  text("y: "+mouseY, width*.85, height*.25);
}

void keyTyped() {
  // La variable "key" siempre contiene el valor
  // del más reciente símbolo presionado
  if ((key >= 'A' && key <= 'z') || key == ' ') {
    nombreCompleto = nombreCompleto + key;
  }
  // Borrar texto
  if (key == TAB) {
    if (nombreCompleto.length() > 0) {
      borrarLetra = nombreCompleto.substring(0, nombreCompleto.length()-1);
    } else {
      
    }
    nombreCompleto = borrarLetra;
  }
}

void keyPressed() {
  if (key == ENTER) {
    moNombre = match(nombreCompleto, "(\\w+)\\s(\\w+)\\s(\\w+)");
    
    n.lectorNombre(moNombre[1].toCharArray(), 1);
    n.lectorNombre(moNombre[2].toCharArray(), 2);
    n.lectorNombre(moNombre[3].toCharArray(), 3);
    n.totalesNombre();
  }
}
