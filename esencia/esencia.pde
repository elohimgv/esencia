
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
String[] mo = {};

// Variables para la fecha de nacimiento
int dia = 9; 
int mes = 9; 
int ano = 1987;

// Objetos declarados
LectorFechaNacimiento f;
LectorNombre n;

void setup() {
  // Tamaño del lienzo
  size(displayWidth, displayHeight); 
  // Crear fuente
  fuente = createFont("Arial", 32);
  textFont(fuente);
  
  f = new LectorFechaNacimiento(dia, mes, ano);
  n = new LectorNombre();
  
  f.totalesFecha(); // mover a keyPressed()
}

// Dibujando sobre el lienzo
void draw() { 
  background(234, 17, 17);
  textSize(80);
  text("SEGÚN IGLESIAS JANEIRO", 50, 100);
  // NOMBRE
  fill(234, 252, 38);
  textSize(32);
  text("Nombre: ", 50, 150);
  text(nombreCompleto, textWidth("Nombre: ")+50, 150);
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
    mo = match(nombreCompleto, "(\\w+)\\s(\\w+)\\s(\\w+)");
    
    n.lectorNombre(mo[1].toCharArray(), 1);
    n.lectorNombre(mo[2].toCharArray(), 2);
    n.lectorNombre(mo[3].toCharArray(), 3);
    n.totalesNombre();
  }
}
