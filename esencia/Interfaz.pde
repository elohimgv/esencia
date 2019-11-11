class Interfaz {
  
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
}
