/*
* Clase para descomponer cifras mayores a un digito
* y cambiarlas a un sólo digito.
*/

class Digito {
  
  // Variables para almacenar los números 
  int uno, dos, tres, cuatro, cinco, seis, siete, ocho, nueve;
  
  // Variables para los totales de los números: Hay un conteo 
  // de aparicones del número (variable), y éste, es multiplicado 
  // por el valor la variable número para calcular el total. 
  int totalUno, totalDos, totalTres, totalCuatro, totalCinco, 
      totalSeis, totalSiete, totalOcho, totalNueve;
      
  // Variable para almacenar el total final   
  int elTotal;
  
  // Indica que cantidad de veces que aparece determinado número 
  int contadorUno, contadorDos, contadorTres, contadorCuatro, contadorCinco, 
      contadorSeis, contadorSiete, contadorOcho, contadorNueve;

  /**************************************************************
  * Método que recorre el arreglo para iterar sobre la cantidad
  * dispuesta, y conocer su composición numérica; ¿cuántas veces 
  * aparece el 0, el 1,  el 2, el 3...? Multiplica las 
  * apariciones por el valor de cada número, para conocer el 
  * valor total (apariciones * valor del número). Finalmente 
  * suma todos los valores totales y dame un total final. 
  *//////////////////////////////////////////////////////////////
  int iterador(char[] numero) {
    for (int ciclo = 0; ciclo < numero.length; ciclo++) {
      switch(numero[ciclo]) {
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

    elTotal = totalUno+totalDos+totalTres+totalCuatro+totalCinco+
              totalSeis+totalSiete+totalOcho+totalNueve;

    return elTotal;
  }

  /******************************************** 
  * Método para inicializar y asignar el valor 
  * de cero en las variables.
  *////////////////////////////////////////////
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

  /**************************************************
  * Método recursivo para reducir un número a una sola 
  * cifra. Si el número a reducir es menos a dos cifras 
  * se retorna ese mismo número, si no se procede a 
  * descomponer para obtener una sólo digito y tetornarlo.
  *//////////////////////////////////////////////////
  int unDigito(int numero_a_reducir, String componente) {
    if (numero_a_reducir < 10) {
      return numero_a_reducir;
    } else {
      if (componente == "DÍA" || componente == "MES" || componente == "AÑO") {
        println("El valor del ARMÓNICO del " +componente+ " es: "+numero_a_reducir);
      } else if (componente == "URGENCIA INTERIOR") {
        println("El valor del ARMÓNICO del " +componente+ " es: "+numero_a_reducir);
      } else if (componente == "VOCALES" || componente == "CONSONANTES" || componente == "TEMPERAMENTO") {
        println("El valor del ARMÓNICO de las " +componente+ " es: "+numero_a_reducir);
      } else if (componente == "SER") {
        println("El valor del ARMÓNICO de las " +componente+ " es: "+numero_a_reducir);
      } else if (componente == "TALENTO NATURAL") {
        println("El valor del ARMÓNICO de las " +componente+ " es: "+numero_a_reducir);
      }
    }

    // Convierte al dato entero en uno de cadena
    String numeroComoCadena = Integer.toString(numero_a_reducir);
    // Convierte el dato de cadena en uno de caracter
    char[] unDigitoTotalValor = numeroComoCadena.toCharArray();
    // Variable que utiliza el método iterador 
    int total = iterador(unDigitoTotalValor);

    // Método que inicializa valores
    init();
    
    // Operación recursiva
    return unDigito(total, componente);
  }
}
