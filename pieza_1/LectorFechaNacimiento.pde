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
  int cero,uno,dos,tres,cuatro,cinco,seis,siete,ocho,nueve = 0;
  // Totales de los números
  int totalUno,totalDos,totalTres,totalCuatro,totalCinco,totalSeis,
      totalSiete,totalOcho,totalNueve;
  // Totales de los tres componentes: día, mes y año.
  int totalDia, totalMes, totalAno = 0;
  int totalValorDia, totalValorMes, totalValorAno = 0;
  // Me indica que cantidad de veces aparece determinado número 
  int contadorUno,contadorDos,contadorTres,contadorCuatro, contadorCinco,
      contadorSeis,contadorSiete,contadorOcho,contadorNueve = 0;
  
  // Método para asignar los valores a cada variable,
  // así como el total de apariciones de la misma.
  void fechaNacimiento() {
    for (int cicloDia = 0; cicloDia < dia.length; cicloDia++) {
      if (dia[cicloDia] == '0') {
        //println("Valor de: "+cero);
      }
      if (dia[cicloDia] == '1') {
        uno = 1;
        //println("Valor de: "+uno);
        contadorUno++;
        totalUno = uno * contadorUno;
      }
      if (dia[cicloDia] == '2') {
        dos = 2;
        //println("Valor de: "+dos);
        contadorDos++;
        totalDos = dos * contadorDos;
      }
      if (dia[cicloDia] == '3') {
        tres = 3;
        //println("Valor de: "+tres);
        contadorTres++;
        totalTres = tres * contadorTres;
      }
      if (dia[cicloDia] == '4') {
        cuatro = 4;
        //println("Valor de: "+cuatro);
        contadorCuatro++;
        totalCuatro = cuatro * contadorCuatro;
      }
      if (dia[cicloDia] == '5') {
        cinco = 5;
        //println("Valor de: "+cinco);
        contadorCinco++;
        totalCinco = cinco * contadorCinco;
      }
      if (dia[cicloDia] == '6') {
        seis = 6;
        //println("Valor de: "+seis);
        contadorSeis++;
        totalSeis = seis * contadorSeis;
      }
      if (dia[cicloDia] == '7') {
        siete = 7;
        //println("Valor de: "+siete);
        contadorSiete++;
        totalSiete = siete * contadorSiete;
      }
      if (dia[cicloDia] == '8') {
        ocho = 8;
        //println("Valor de: "+ocho);
        contadorOcho++;
        totalOcho = ocho * contadorOcho;
      }
      if (dia[cicloDia] == '9') {
        nueve = 9;
        //println("Valor de: "+nueve);
        contadorNueve++;
        totalNueve = nueve * contadorNueve;
      }
    }
    
    totalDia = totalUno+totalDos+totalTres+totalCuatro+totalCinco+totalSeis+totalSiete+totalOcho+totalNueve;
    
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
    
  for (int cicloMes = 0; cicloMes < mes.length; cicloMes++) {
    if (mes[cicloMes] == '0') {
      //println("Valor de: "+cero);
    }
    if (mes[cicloMes] == '1') {
      uno = 1;
      //println("Valor de: "+uno);
      contadorUno++;
      totalUno = uno * contadorUno;
    }
    if (mes[cicloMes] == '2') {
      dos = 2;
      //println("Valor de: "+dos);
      contadorDos++;
      totalDos = dos * contadorDos;
    }
    if (mes[cicloMes] == '3') {
      tres = 3;
      //println("Valor de: "+tres);
      contadorTres++;
      totalTres = tres * contadorTres;
    }
    if (mes[cicloMes] == '4') {
      cuatro = 4;
      //println("Valor de: "+cuatro);
      contadorCuatro++;
      totalCuatro = cuatro * contadorCuatro;
    }
    if (mes[cicloMes] == '5') {
      cinco = 5;
      //println("Valor de: "+cinco);
      contadorCinco++;
      totalCinco = cinco * contadorCinco;
    }
    if (mes[cicloMes] == '6') {
      seis = 6;
      //println("Valor de: "+seis);
      contadorSeis++;
      totalSeis = seis * contadorSeis;
    }
    if (mes[cicloMes] == '7') {
      siete = 7;
      //println("Valor de: "+siete);
      contadorSiete++;
      totalSiete = siete * contadorSiete;
    }
    if (mes[cicloMes] == '8') {
      ocho = 8;
      //println("Valor de: "+ocho);
      contadorOcho++;
      totalOcho = ocho * contadorOcho;
    }
    if (mes[cicloMes] == '9') {
      nueve = 9;
      //println("Valor de: "+nueve);
      contadorNueve++;
      totalNueve = nueve * contadorNueve;
    }
  }
  
  totalMes = totalUno+totalDos+totalTres+totalCuatro+totalCinco+totalSeis+totalSiete+totalOcho+totalNueve;
  
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
  
  for (int cicloAno = 0; cicloAno < ano.length; cicloAno++) {
    if (ano[cicloAno] == '0') {
      //println("Valor de: "+cero);
    }
    if (ano[cicloAno] == '1') {
      uno = 1;
      //println("Valor de: "+uno);
      contadorUno++;
      totalUno = uno * contadorUno;
    }
    if (ano[cicloAno] == '2') {
      dos = 2;
      //println("Valor de: "+dos);
      contadorDos++;
      totalDos = dos * contadorDos;
    }
    if (ano[cicloAno] == '3') {
      tres = 3;
      //println("Valor de: "+tres);
      contadorTres++;
      totalTres = tres * contadorTres;
    }
    if (ano[cicloAno] == '4') {
      cuatro = 4;
      //println("Valor de: "+cuatro);
      contadorCuatro++;
      totalCuatro = cuatro * contadorCuatro;
    }
    if (ano[cicloAno] == '5') {
      cinco = 5;
      //println("Valor de: "+cinco);
      contadorCinco++;
      totalCinco = cinco * contadorCinco;
    }
    if (ano[cicloAno] == '6') {
      seis = 6;
      //println("Valor de: "+seis);
      contadorSeis++;
      totalSeis = seis * contadorSeis;
    }
    if (ano[cicloAno] == '7') {
      siete = 7;
      //println("Valor de: "+siete);
      contadorSiete++;
      totalSiete = siete * contadorSiete;
    }
    if (ano[cicloAno] == '8') {
      ocho = 8;
      //println("Valor de: "+ocho);
      contadorOcho++;
      totalOcho = ocho * contadorOcho;
    }
    if (ano[cicloAno] == '9') {
      nueve = 9;
      //println("Valor de: "+nueve);
      contadorNueve++;
      totalNueve = nueve * contadorNueve;
    }
  }
  
  totalAno = totalUno+totalDos+totalTres+totalCuatro+totalCinco+totalSeis+totalSiete+totalOcho+totalNueve;
  
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
  
  
  // Método para cuantificar el valor del día
  // + mes + año, arrojando un valor total
  void totalesFecha() {
   totalValorDia = totalDia;
   println("El valor del DÍA es: "+totalValorDia); 
   totalValorMes = totalMes;
   println("El valor del MES es: "+totalValorMes); 
   totalValorAno = totalAno;
   println("El valor del AÑO es: "+totalValorAno); 
  }
}
