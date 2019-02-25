/*
*
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
  int uno,dos,tres,cuatro,cinco,seis,siete,ocho,nueve;
  // Totales de los números
  int totalUno,totalDos,totalTres,totalCuatro,totalCinco,totalSeis,
      totalSiete,totalOcho,totalNueve;
  // Totales de los tres componentes: día, mes y año.
  int t;
  int totalDia, totalMes, totalAno;
  int totalValorDia, totalValorMes, totalValorAno;
  int urgenciaInterior;
  // Me indica que cantidad de veces aparece determinado número 
  int contadorUno,contadorDos,contadorTres,contadorCuatro, contadorCinco,
      contadorSeis,contadorSiete,contadorOcho,contadorNueve;
  
  // Método que itera sobre cada uno de los 
  // componentes de la fecha de nacimiento
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
      switch(x[ciclo]) {
        case '0':
          //println("Valor de: "+cero);
          break;
        case '1':
          uno = 1;
          //println("Valor de: "+uno);
          contadorUno++;
          totalUno = uno * contadorUno;
          break;
        case '2':
          dos = 2;
          //println("Valor de: "+dos);
          contadorDos++;
          totalDos = dos * contadorDos;
          break;
        case '3':
          tres = 3;
          //println("Valor de: "+tres);
          contadorTres++;
          totalTres = tres * contadorTres;
          break;
        case '4':
          cuatro = 4;
          //println("Valor de: "+cuatro);
          contadorCuatro++;
          totalCuatro = cuatro * contadorCuatro;
          break;
        case '5':
          cinco = 5;
          //println("Valor de: "+cinco);
          contadorCinco++;
          totalCinco = cinco * contadorCinco;
          break;
        case '6':
          seis = 6;
          //println("Valor de: "+seis);
          contadorSeis++;
          totalSeis = seis * contadorSeis;
          break;
        case '7':
          siete = 7;
          //println("Valor de: "+siete);
          contadorSiete++;
          totalSiete = siete * contadorSiete;
          break;
        case '8':
          ocho = 8;
          //println("Valor de: "+ocho);
          contadorOcho++;
          totalOcho = ocho * contadorOcho;
          break;
        case '9':
          nueve = 9;
          //println("Valor de: "+nueve);
          contadorNueve++;
          totalNueve = nueve * contadorNueve;
          break;
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
    if (componente == "DÍA" || componente == "MES" || componente == "AÑO") {
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
    
    if (componente == "DÍA" || componente == "MES" || componente == "AÑO") {
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
  
  // Método para desplegar en el sketch el 
  // total de la fecha de nacimiento (urgencia interior).
  int tn() {
    return urgenciaInterior;
  }
}
