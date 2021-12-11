/*  
* Clase interfaz de usuario
*/

class Interfaz {
  // SIN CAMPOS (fields)...
  
  /* SIN MÉTODO CONSTRUCTOR...
  Interfaz() {
    
  }
  */
  
  void texto(String str, int posX, int posY, int size, color col) {
    fill(col);
    textSize(size);
    text(str, posX, posY);
  }
  
  // viene siendo mi pleca
  void inputTexto(int posX, int posY, int sizeX, int sizeY, color col) {
    fill(col);
    noStroke();
    rect(posX, posY, sizeX, sizeY);
  }
}
