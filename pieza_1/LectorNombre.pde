/*
*  Autor: Elohim Guevara
*
*  LectorNombre.pde
*
*/
 
class LectorNombre {
  
  // Letra del alfabeto español ch y ll
  int encontrar_c;
  int encontrar_h;
  // Resto de letras del alfabeto español
  int a,b,c,d,e,f,g,h,i,j,k,l,m,n,nn,o,p,q,r,s,t,u,v,w,x,y,z;
  // Variables para conocer la suma (valor) individual del nombre, apellido
  // paterno y apellido materno, y la suma total de los tres componentes
  int valorA,valorB,valorC,valorD,valorE,valorF,valorG,valorH,valorI,valorJ,valorK,
      valorL,valorM,valorN,valorNN,valorO,valorP,valorQ,valorR,valorS,valorT,valorU,valorV,
      valorW,valorX,valorY,valorZ = 0;
  // Me indica que cantidad de veces aparece determinada letra en cada uno de los tres
  // componenentes: nombre, apellido paterno y apellido materno; también, la suma
  // total de los tres componentes.
  int aparicionesA,aparicionesB,aparicionesC,aparicionesD,aparicionesE,aparicionesF,
      aparicionesG,aparicionesH,aparicionesI,aparicionesJ,aparicionesK,aparicionesL,
      aparicionesM,aparicionesN,aparicionesNN,aparicionesO,aparicionesP,aparicionesQ,
      aparicionesR,aparicionesS,aparicionesT,aparicionesU,aparicionesV,aparicionesW,
      aparicionesX,aparicionesY,aparicionesZ = 0;
  int totalA,totalB,totalC,totalD,totalE,totalF,totalG,totalH,totalI,
      totalJ,totalK,totalL,totalM,totalN,totalNN,totalO,totalP,totalQ,
      totalR,totalS,totalT,totalU,totalV,totalW,totalX,totalY,totalZ = 0;
  int totalNombreCompleto = 0;
  // Variables para el valor del nombre completo
  int totalValorNombre,totalValorApellidoPaterno,totalValorApellidoMaterno = 0;
  // Variables para el valor de las consonantes y vocales
  int totalValorVocalesNombre, totalValorConsonantesNombre;
  int totalValorVocalesApellidoPaterno, totalValorConsonantesApellidoPaterno;
  int totalValorVocalesApellidoMaterno, totalValorConsonantesApellidoMaterno;
  int totalVocalesNombreCompleto, totalConsonatesNombreCompleto;
  // Variables para los números pares e impares
  int numeroParNombre, numeroParApellidoPaterno, numeroParApellidoMaterno;
  int numeroImparNombre, numeroImparApellidoPaterno, numeroImparApellidoMaterno;
       
  String caracterNulo = "¡NO HAY VALORES DE ESTA LETRA!";
  
  // Números
  int uno,dos,tres,cuatro,cinco,seis,siete,ocho,nueve = 0;
  // Totales de los números
  int totalUno,totalDos,totalTres,totalCuatro,totalCinco,totalSeis,
      totalSiete,totalOcho,totalNueve;
  int tota;
  // Me indica que cantidad de veces aparece determinado número 
  int contadorUno,contadorDos,contadorTres,contadorCuatro, contadorCinco,
      contadorSeis,contadorSiete,contadorOcho,contadorNueve = 0;
  
  // Método para extraer el valor de cada letra,
  // dicha extracción se efectua del conjunto de
  // letras que forma el nombre de la persona.
  void lectorNombre(char[] arr, int plb) {
    //println(palabra);
    //println(arr);
    //println("El tamaño del arreglo es: " + arr.length);
    
    encontrar_c = busquedaLineal(arr, arr.length, 'c');
    encontrar_h = busquedaLineal(arr, arr.length, 'h'); 
    for (int ciclo = 0; ciclo < arr.length; ciclo++) {
       // 1ra escala
      if (arr[ciclo] == 'a' || arr[ciclo] == 'A' || arr[ciclo] == 'á' || arr[ciclo] == 'Á') {
        println("El valor de a/A es 1.");
        a = 1;
        aparicionesA++;
        valorA = a*aparicionesA;
        totalA = aparicionesA;
      } else if (arr[ciclo] == 'b' || arr[ciclo] == 'B') {
        println("El valor de b/B es 2.");
        b = 2;
        aparicionesB++;
        valorB = b*aparicionesB;
        totalB = aparicionesB;
      } else if (arr[ciclo] == 'c' || arr[ciclo] == 'C') {
        letraC(encontrar_c);
        c = 3;
        aparicionesC++;
        valorC = c*aparicionesC;
        totalC = aparicionesC;
      } else if (arr[ciclo] == 'd' || arr[ciclo] == 'D') {
        println("El valor de d/D es 5.");
        d = 5;
        aparicionesD++;
        valorD = d*aparicionesD;
        totalD = aparicionesD;
      } else if (arr[ciclo] == 'e' || arr[ciclo] == 'E' || arr[ciclo] == 'é' || arr[ciclo] == 'É') {
        println("El valor de e/E es 6.");
        e = 6;
        aparicionesE++;
        valorE = e*aparicionesE;
        totalE = aparicionesE;
      } else if (arr[ciclo] == 'f' || arr[ciclo] == 'F') {
        println("El valor de f/F es 7.");
        f = 7;
        aparicionesF++;
        valorF = f*aparicionesF;
        totalF = aparicionesF;
      } else if (arr[ciclo] == 'g' || arr[ciclo] == 'G') {
        println("El valor de g/G es 8.");
        g = 8;
        aparicionesG++;
        valorG = g*aparicionesG;
        totalG = aparicionesG;
      } else if (arr[ciclo] == 'h' || arr[ciclo] == 'H') {
        consecutivaDeCesH(encontrar_h);
        h = 9;
        aparicionesH++;
        valorH = h*aparicionesH;
        totalH = aparicionesH;
        // 2da escala
      } else if (arr[ciclo] == 'i' || arr[ciclo] == 'I' || arr[ciclo] == 'í' || arr[ciclo] == 'Í') {
        println("El valor de i/I es 1.");
        i = 1;
        aparicionesI++;
        valorI = i*aparicionesI;
        totalI = aparicionesI;
      } else if (arr[ciclo] == 'j' || arr[ciclo] == 'J') {
        println("El valor de j/J es 2.");
        j = 2;
        aparicionesJ++;
        valorJ = j*aparicionesJ;
        totalJ = aparicionesJ;
      } else if (arr[ciclo] == 'k' || arr[ciclo] == 'K') {
        println("El valor de k/K es 3.");
        k = 3;
        aparicionesK++;
        valorK = k*aparicionesK;
        totalK = aparicionesK;
      } else if (arr[ciclo] == 'l' || arr[ciclo] == 'L') {
        println("El valor de l/L es 4.");
        l = 4;
        aparicionesL++;
        valorL = l*aparicionesL;
        totalL = aparicionesL;
        // Falta ll
      } else if (arr[ciclo] == 'm'|| arr[ciclo] == 'M') {
        println("El valor de m/M es 6.");
        m = 6;
        aparicionesM++;
        valorM = m*aparicionesM;
        totalM = aparicionesM;
      } else if (arr[ciclo] == 'n' || arr[ciclo] == 'N') {
        println("El valor de n/N es 7.");
        n = 7;
        aparicionesN++;
        valorN = n*aparicionesN;
        totalN = aparicionesN;
      } else if (arr[ciclo] == 'ñ' || arr[ciclo] == 'Ñ') {
        println("El valor de ñ/Ñ es 8.");
        nn = 8;
        aparicionesNN++;
        valorNN = nn*aparicionesNN;
        totalNN = aparicionesNN;
      } else if (arr[ciclo] == 'o' || arr[ciclo] == 'O' || arr[ciclo] == 'ó' || arr[ciclo] == 'Ó') {
        println("El valor de o/O es 9.");
        o = 9;
        aparicionesO++;
        valorO = o*aparicionesO;
        totalO = aparicionesO;
        // 3ra escala
      } else if (arr[ciclo] == 'p' || arr[ciclo] == 'P') {
        println("El valor de p/P es 1.");
        p = 1;
        aparicionesP++;
        valorP = p*aparicionesP;
        totalP = aparicionesP;
      } else if (arr[ciclo] == 'q' || arr[ciclo] == 'Q') {
        println("El valor de q/Q es 2.");
        q = 2;
        aparicionesQ++;
        valorQ = q*aparicionesQ;
        totalQ = aparicionesQ;
      } else if (arr[ciclo] == 'r' || arr[ciclo] == 'R') {
        println("El valor de r/R es 3.");
        r = 3;
        aparicionesR++;
        valorR = r*aparicionesR;
        totalR = aparicionesR;
      } else if (arr[ciclo] == 's' || arr[ciclo] == 'S') {
        println("El valor de s/S es 4.");
        s = 4;
        aparicionesS++;
        valorS = s*aparicionesS;
        totalS = aparicionesS;
      } else if (arr[ciclo] == 't' || arr[ciclo] == 'T') {
        println("El valor de t/T es 5.");
        t = 5;
        aparicionesT++;
        valorT = t*aparicionesT;
        totalT = aparicionesT;
      } else if (arr[ciclo] == 'u' || arr[ciclo] == 'U' || arr[ciclo] == 'ú' || arr[ciclo] == 'Ú') {
        println("El valor de u/U es 6.");
        u = 6;
        aparicionesU++;
        valorU = u*aparicionesU;
        totalU = aparicionesU;
      } else if (arr[ciclo] == 'v' || arr[ciclo] == 'V') {
        println("El valor de v/V es 7.");
        v = 7;
        aparicionesV++;
        valorV = v*aparicionesV;
        totalV = aparicionesV;
      } else if (arr[ciclo] == 'w' || arr[ciclo] == 'W') {
        println("El valor de w/W es 8.");
        w = 8;
        aparicionesW++;
        valorW = w*aparicionesW;
        totalW = aparicionesW; 
      } else if (arr[ciclo] == 'x' || arr[ciclo] == 'X') {
        println("El valor de x/X es 9.");
        x = 9;
        aparicionesX++;
        valorX = x*aparicionesX;
        totalX = aparicionesX;
      } else if (arr[ciclo] == 'y' || arr[ciclo] == 'Y') {
        println("El valor de y/Y es 1.");
        y = 1;
        aparicionesY++;
        valorY = y*aparicionesY;
        totalY = aparicionesY;
        // 4ta escala
      } else if (arr[ciclo] == 'z' || arr[ciclo] == 'Z') {
        println("El valor de z/Z es 2.");
        z = 2;
        aparicionesZ++;
        valorZ = z*aparicionesZ;
        totalZ = aparicionesZ;
      } else {
        // Indica que es un espacio o es utulizado 
        // por algun otro caracter que no está
        // dentro de los parámetros establecidos.
        println(caracterNulo);    
      } 
    }
    
    // Totales
    int totalValorPalabra = valorA+valorB+valorC+valorD+valorE+valorF+valorG+valorH+valorI+
        valorJ+valorK+valorL+valorM+valorN+valorNN+valorO+valorP+valorQ+valorR+valorS+valorT+
        valorU+valorV+valorX+valorY+valorZ;
        
    int vocales = valorA+valorE+valorI+valorO+valorU;
    int consonantes = valorB+valorC+valorD+valorF+valorG+
                      valorH+valorJ+valorK+valorL+valorM+
                      valorN+valorNN+valorP+valorQ+valorR+
                      valorS+valorT+valorV+valorX+valorY+valorZ;
                      
    int pares = totalB+totalE+totalG+totalJ+totalL+totalM+totalNN+totalQ+totalS+totalU+totalW+totalZ;
    int impares = totalA+totalC+totalD+totalF+totalH+totalI+totalK+totalN+totalO+totalP+totalR+totalT+totalV+totalX+totalY;
    
    if (plb == 1) {
      println("EL NÚMERO DE IMPARES EN EL NOMBRE ES: "+impares);
      numeroImparNombre = impares;
      println("EL NÚMERO DE PARES EN EL NOMBRE ES: "+pares);
      numeroParNombre = pares;
      println("EL VALOR DE LAS VOCALES DEL NOMBRE ES: "+vocales);
      totalValorVocalesNombre = vocales;
      println("EL VALOR DE LAS VOCALES DEL NOMBRE ES: "+consonantes);
      totalValorConsonantesNombre = consonantes;
      println("El valor del NOMBRE es: "+totalValorPalabra);
      totalValorNombre = totalValorPalabra;
    }
    if (plb == 2) {
      println("EL NÚMERO DE IMPARES EN EL NOMBRE ES: "+impares);
      numeroImparApellidoPaterno = impares;
      println("EL NÚMERO DE PARES EN EL NOMBRE ES: "+pares);
      numeroParApellidoPaterno = pares;
      println("EL VALOR DE LAS VOCALES DEL APELLIDO PATERNO ES: "+vocales);
      totalValorVocalesApellidoPaterno = vocales; 
      println("EL VALOR DE LAS VOCALES DEL APELLIDO PATERNO ES: "+consonantes);
      totalValorConsonantesApellidoPaterno = consonantes;
      println("El valor del APELLIDO PATERNO es: "+totalValorPalabra);
      totalValorApellidoPaterno = totalValorPalabra;
    }
    if (plb == 3) {
      println("EL NÚMERO DE IMPARES EN EL NOMBRE ES: "+impares);
      numeroImparApellidoMaterno = impares;
      println("EL NÚMERO DE PARES EN EL NOMBRE ES: "+pares);
      numeroParApellidoMaterno = pares;
      println("EL VALOR DE LAS VOCALES DEL APELLIDO MATERNO ES: "+vocales);
      totalValorVocalesApellidoMaterno = vocales; 
      println("EL VALOR DE LAS VOCALES DEL APELLIDO MATERNO ES: "+consonantes);
      totalValorConsonantesApellidoMaterno = consonantes;
      println("El valor del APELLIDO MATERNO es: "+totalValorPalabra);
      totalValorApellidoMaterno = totalValorPalabra;
    }
    
    valorA=0;
    valorB=0;
    valorC=0;
    valorD=0;
    valorE=0;
    valorF=0;
    valorG=0;
    valorH=0;
    valorI=0;
    valorJ=0;
    valorK=0;
    valorL=0;
    valorM=0;
    valorN=0;
    valorNN=0;
    valorO=0;
    valorP=0;
    valorQ=0;
    valorR=0;
    valorS=0;
    valorT=0;
    valorU=0;
    valorV=0;
    valorX=0;
    valorY=0;
    valorZ =0;
    
    // Si el número de aparciones de la letra correspondiente es
    // mayor a 0 cero imprime el total.
    if (aparicionesA > 0) {
      println("El total de apariciones de la letra A es : "+totalA);
    }
    if (aparicionesB > 0) {
      println("El total de apariciones de la letra B es : "+totalB);
    }
    if (aparicionesC > 0) {
      println("El total de apariciones de la letra C es : "+totalC);
    }
    if (aparicionesD > 0) {
      println("El total de apariciones de la letra D es : "+totalD);
    }
    if (aparicionesE > 0) {
      println("El total de apariciones de la letra E es : "+totalE);
    }
    if (aparicionesF > 0) {
      println("El total de apariciones de la letra F es : "+totalF);
    }
    if (aparicionesG > 0) {
      println("El total de apariciones de la letra G es : "+totalG);
    }
    if (aparicionesH > 0) {
      println("El total de apariciones de la letra H es : "+totalH);
    }
    if (aparicionesI > 0) {
      println("El total de apariciones de la letra I es : "+totalI);
    }
    if (aparicionesJ > 0) {
      println("El total de apariciones de la letra J es : "+totalJ);
    }
    if (aparicionesK > 0) {
      println("El total de apariciones de la letra K es : "+totalK);
    }
    if (aparicionesL > 0) {
      println("El total de apariciones de la letra L es : "+totalL);
    }
    if (aparicionesM > 0) {
      println("El total de apariciones de la letra M es : "+totalM);
    }
    if (aparicionesN > 0) {
      println("El total de apariciones de la letra N es : "+totalN);
    }
    if (aparicionesNN > 0) {
      println("El total de apariciones de la letra Ñ es : "+totalNN);
    }
    if (aparicionesO > 0) {
      println("El total de apariciones de la letra O es : "+totalO);
    }
    if (aparicionesP > 0) {
      println("El total de apariciones de la letra P es : "+totalP);
    }
    if (aparicionesQ > 0) {
      println("El total de apariciones de la letra Q es : "+totalQ);
    }
    if (aparicionesR > 0) {
      println("El total de apariciones de la letra R es : "+totalR);
    }
    if (aparicionesS > 0) {
      println("El total de apariciones de la letra S es : "+totalS);
    }
    if (aparicionesT > 0) {
      println("El total de apariciones de la letra T es : "+totalT);
    }
    if (aparicionesU > 0) {
      println("El total de apariciones de la letra U es : "+totalU);
    }
    if (aparicionesV > 0) {
      println("El total de apariciones de la letra V es : "+totalV);
    }
    if (aparicionesX > 0) {
      println("El total de apariciones de la letra X es : "+totalX);
    }
    if (aparicionesY > 0) {
      println("El total de apariciones de la letra Y es : "+totalY);
    }
    if (aparicionesZ > 0) {
      println("El total de apariciones de la letra Z es : "+totalZ);
    }
    
    aparicionesA=0;
    aparicionesB=0;
    aparicionesC=0;
    aparicionesD=0;
    aparicionesE=0;
    aparicionesF=0;
    aparicionesG=0;
    aparicionesH=0;
    aparicionesI=0;
    aparicionesJ=0;
    aparicionesK=0;
    aparicionesL=0;
    aparicionesM=0;
    aparicionesN=0;
    aparicionesO=0;
    aparicionesP=0;
    aparicionesQ=0;
    aparicionesR=0;
    aparicionesS=0;
    aparicionesT=0;
    aparicionesU=0;
    aparicionesV=0;
    aparicionesX=0;
    aparicionesY=0;
    aparicionesZ=0;
    
    totalA=0;
    totalB=0;
    totalC=0;
    totalD=0;
    totalE=0;
    totalF=0;
    totalG=0;
    totalH=0;
    totalI=0;
    totalJ=0;
    totalK=0;
    totalL=0;
    totalM=0;
    totalN=0;
    totalO=0;
    totalP=0;
    totalQ=0;
    totalR=0;
    totalS=0;
    totalT=0;
    totalU=0;
    totalV=0;
    totalX=0;
    totalY=0;
    totalZ=0;
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
    
    tota = totalUno+totalDos+totalTres+totalCuatro+totalCinco+totalSeis+totalSiete+totalOcho+totalNueve;
    
    return tota;
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
  int unDigito(int nombreCompleto) {
    if (nombreCompleto < 10) {
      return nombreCompleto;
    } else {
      if (true) {
        ///// Aqui falta un cambio en el println con las consonantes y las vocales /////
        println("El valor del ARMÓNICO del TALENTO NATURAL es: "+nombreCompleto);
      }
      String numeroComoCadena = Integer.toString(nombreCompleto);
      char[] unDigitoTotalValor = numeroComoCadena.toCharArray();
      int total = iterador(unDigitoTotalValor);
      init();
        
      return unDigito(total);
    } 
  }
  
  // Método para cuantificar el valor total
  // del nombre completo de la persona.
  void totalesNombre() {
    //println("TOTAL APARICIONES DE IMPARES ES: "+impares);
    //println("TOTAL APARICIONES DE PARES ES: "+pares);
    
    int temporalVocales, temporalConsonantes;
    
    totalVocalesNombreCompleto = totalValorVocalesNombre+totalValorVocalesApellidoPaterno+totalValorVocalesApellidoMaterno;
    totalConsonatesNombreCompleto = totalValorConsonantesNombre+totalValorConsonantesApellidoPaterno+totalValorConsonantesApellidoMaterno;
    
    if (totalVocalesNombreCompleto > 9 || totalConsonatesNombreCompleto > 9) {
      temporalVocales = unDigito(totalVocalesNombreCompleto);
      temporalConsonantes = unDigito(totalConsonatesNombreCompleto);
      println();
      println("EL VALOR TOTAL DE LAS VOCALES ES: "+temporalVocales);
      println("EL VALOR TOTAL DE LAS CONSONANTES ES: "+temporalConsonantes);
      println();
    } else {
      temporalVocales = totalVocalesNombreCompleto;
      temporalConsonantes = totalConsonatesNombreCompleto;
      println();
      println("EL VALOR TOTAL DE LAS VOCALES ES: "+temporalVocales);
      println("EL VALOR TOTAL DE LAS CONSONANTES ES: "+temporalConsonantes);
      println();
    }
    
    int talentoNatural;
    totalNombreCompleto = totalValorNombre+totalValorApellidoPaterno+totalValorApellidoMaterno;
    if (totalNombreCompleto > 9) {
      talentoNatural = unDigito(totalNombreCompleto);
      println();
      println("EL TALENTO NATURAL ES: "+talentoNatural);
      println();
    } else {
      talentoNatural = totalNombreCompleto;
      println();
      println("EL TALENTO NATURAL ES: "+talentoNatural);
      println();
    }
  }
  
  // Método para desplegar en el sketch el 
  // total del nombre completo 
  int tn() {
    return totalNombreCompleto;
  }
  
  // Método de búsqueda lineal.
  int busquedaLineal(char arr[], int n, char x) {
    for (int i = 0; i < n; i++)  { 
      // Retornar la posición (index) del elemento si  
      // el elemento es encontrado 
      if (arr[i] == x) 
        return i; 
      } 
      // Retornar -1 si el elemento no es encontrado 
      return -1; 
  }
  
  // Métodos letraC() y consecutivaDeCesH()
  // La finalidad de las funciones letraC() y consecutivaDeCesH() es encontrar la 
  // letra c, y que después de esa letra c, exista un letra h para formar la letra
  // 'ch' que es parte del alfabeto Español. Estás funciones tienen el desempeño
  // esperado, solamente cuando exite un c y una h en el arreglo. Cuando hay dos 
  // o más letras de cada una, el funcionamiento no es el optimo.
  int lista = 0;
  void letraC(int encontrar_c) { 
    if (encontrar_c < encontrar_h && encontrar_h < encontrar_c + 2) {
      println("c/C pierde su valor de 3.");
      println("Se fucionan la lentra c y la h.");
    } else {
      lista++;
      println(lista + " El valor de c/C es 3.");
    }
  }
  
  void consecutivaDeCesH(int encontrar_h) {
    if (encontrar_c < encontrar_h && encontrar_h < encontrar_c + 2) { 
      println("h/H es consecutiva de c/C."); 
      println("h/H pierde su valor de 9.");
      println("Por lo tanto tenemos la letra ch-CH con un valor de 4.");
    } else {
      println("¡H no es consecutiva de c!, por lo tanto no existe la palabra ch"); 
      println("El valor de h/H es 9.");
    }
  }
  
  // Método ll() en proceso...
  void ll() {
    
  }
}
