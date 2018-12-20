/*
*  Autor: Elohim Guevara
*
*  LectorFechaNacimiento.pde
*
*/

class LectorFechaNacimiento {
      
  // Variables (campos) para el constructor
  char[] dia;
  char[] mes;
  char[] ano;
  
  // Constructor
  LectorFechaNacimiento(char[] d, char[] m, char[] a) {
    dia = d;
    mes = m;
    ano = a;
  }
  
  // Números
  int uno,dos,tres,cuatro,cinco,seis,siete,ocho,nueve = 0;
  // Totales de los números
  int totalUno,totalDos,totalTres,totalCuatro,totalCinco,totalSeis,
      totalSiete,totalOcho,totalNueve;
  // Totales de los tres componentes: día, mes y año.
  int t;
  int totalDia, totalMes, totalAno = 0;
  int totalValorDia, totalValorMes, totalValorAno = 0;
  // Me indica que cantidad de veces aparece determinado número 
  int contadorUno,contadorDos,contadorTres,contadorCuatro, contadorCinco,
      contadorSeis,contadorSiete,contadorOcho,contadorNueve = 0;
  
  // Método para asignar los valores a cada variable,
  // así como el total de apariciones de la misma.
  void fechaNacimiento() {
    
    iterador(dia);
    
    totalDia = t;
    
    init();
    
    iterador(mes);
    
    totalMes = t;
    
    init();
    
    iterador(ano);
    
    totalAno = t;
    
    init();
  }
  
  // Método que recorre el arreglo
  int iterador(char[] x) {
    for (int ciclo = 0; ciclo < x.length; ciclo++) {
      if (x[ciclo] == '0') {
        //println("Valor de: "+cero);
      }
      if (x[ciclo] == '1') {
        uno = 1;
        //println("Valor de: "+uno);
        contadorUno++;
        totalUno = uno * contadorUno;
      }
      if (x[ciclo] == '2') {
        dos = 2;
        //println("Valor de: "+dos);
        contadorDos++;
        totalDos = dos * contadorDos;
      }
      if (x[ciclo] == '3') {
        tres = 3;
        //println("Valor de: "+tres);
        contadorTres++;
        totalTres = tres * contadorTres;
      }
      if (x[ciclo] == '4') {
        cuatro = 4;
        //println("Valor de: "+cuatro);
        contadorCuatro++;
        totalCuatro = cuatro * contadorCuatro;
      }
      if (x[ciclo] == '5') {
        cinco = 5;
        //println("Valor de: "+cinco);
        contadorCinco++;
        totalCinco = cinco * contadorCinco;
      }
      if (x[ciclo] == '6') {
        seis = 6;
        //println("Valor de: "+seis);
        contadorSeis++;
        totalSeis = seis * contadorSeis;
      }
      if (x[ciclo] == '7') {
        siete = 7;
        //println("Valor de: "+siete);
        contadorSiete++;
        totalSiete = siete * contadorSiete;
      }
      if (x[ciclo] == '8') {
        ocho = 8;
        //println("Valor de: "+ocho);
        contadorOcho++;
        totalOcho = ocho * contadorOcho;
      }
      if (x[ciclo] == '9') {
        nueve = 9;
        //println("Valor de: "+nueve);
        contadorNueve++;
        totalNueve = nueve * contadorNueve;
      }
    }
    
    t = totalUno+totalDos+totalTres+totalCuatro+totalCinco+totalSeis+totalSiete+totalOcho+totalNueve;
    
    return t;
  }
  
  // Método para inicializar y asignar el valor 
  // de cero en las variables.
  void init() {
    contadorUno=0;
    contadorDos=0;
    contadorTres=0;
    contadorCuatro=0;
    contadorCinco=0;
    contadorSeis=0;
    contadorSiete=0;
    contadorOcho=0;
    contadorNueve=0;
    
    totalUno=0;
    totalDos=0;
    totalTres=0;
    totalCuatro=0;
    totalCinco=0;
    totalSeis=0;
    totalSiete=0;
    totalOcho=0;
    totalNueve=0;
    
    uno=0;
    dos=0;
    tres=0;
    cuatro=0;
    cinco=0;
    seis=0;
    siete=0;
    ocho=0;
    nueve=0;
  }
  
  // Método para reducir a una sola cifra el resultado final
  int unDigito(int masDeUnDigito, String componente) {
    if (componente == "DÍA" || componente == "MES" || componente == "año") {
      println("El valor del ARMÓNICO del " +componente+ " es: "+masDeUnDigito);
    }
    else {
      println("El valor del ARMÓNICO de la " +componente+ " es: "+masDeUnDigito);
    }
    
    String numeroComoCadena = Integer.toString(masDeUnDigito);
    char[] unDigitoTotalValor = numeroComoCadena.toCharArray();
    iterador(unDigitoTotalValor);
    int total = totalUno+totalDos+totalTres+totalCuatro+totalCinco+totalSeis+totalSiete+totalOcho+totalNueve;
    init();
    
    if (componente == "DÍA" || componente == "MES" || componente == "año") {
      println("El valor del " +componente+ " es: "+total);
    } else {
      println("El valor de la " +componente+ " es: "+total);
    }
    
    return total;
  }
  
  // Método para cuantificar el valor del día
  // + mes + año, arrojando un valor total
  void totalesFecha() {
    int ultimoTotalValorDia, ultimoTotalValorMes, ultimoTotalValorAno;
    totalValorDia = totalDia;
    totalValorMes = totalMes;
    totalValorAno = totalAno;
    
    if (totalValorDia > 9) {
      ultimoTotalValorDia = unDigito(totalValorDia, "DÍA");
    } else {
      ultimoTotalValorDia = totalValorDia;
      println("El valor del DÍA es: "+ultimoTotalValorDia);
    }
     
    if (totalValorMes > 9) {
      ultimoTotalValorMes = unDigito(totalValorMes, "MES");
    } else {
      ultimoTotalValorMes = totalValorMes;
      println("El valor del MES es: "+ultimoTotalValorMes);
    } 
    
    if (totalValorAno > 9) {
      ultimoTotalValorAno = unDigito(totalValorAno, "AÑO");
    } else {
      ultimoTotalValorAno = totalValorAno;
      println("El valor del AÑO es: "+ultimoTotalValorAno);
    }
    
    int urgenciaInterior;
    int ur = ultimoTotalValorDia+ultimoTotalValorMes+ultimoTotalValorAno;
    if (ur > 9) {
      urgenciaInterior = unDigito(ur, "URGENCIA INTERIOR");
      println();
      println("LA URGENCIA INTERIOR ES: "+urgenciaInterior);
      println();
    } else {
      urgenciaInterior = ur;
      println();
      println("LA URGENCIA INTERIOR ES: "+urgenciaInterior);
      println();
    }
  }
}
