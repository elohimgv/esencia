/*
* Clase para reducir a una sola cifra
* la fecha de nacimiento. El día se lleva
* a una sola cifra así como el mes y el 
* año, y por último se obtiene la cifra 
* de un digito.
*/

class LectorFechaNacimiento {

  Digito digito_dia = new Digito();
  Digito digito_mes = new Digito();
  Digito digito_ano = new Digito();
  Digito digito_total = new Digito();

  // Variables (campos) para el constructor
  int dia;
  int mes;
  int ano;

  // Constructor
  LectorFechaNacimiento(int d, int m, int a) {
    dia = d;
    mes = m;
    ano = a;
  }

  // Totales de los tres componentes: día, mes y año.
  int totalValorDia, totalValorMes, totalValorAno;
  int urgenciaInterior;

  /******************************************
  * Método para cuantificar el valor del día
  * + mes + año, arrojando un valor total
  *//////////////////////////////////////////
  void totalesFecha() {
    int ultimoTotalValorDia, ultimoTotalValorMes, ultimoTotalValorAno;
    ultimoTotalValorDia = digito_dia.unDigito(dia, "DÍA");
    println("El valor del DÍA es: "+ultimoTotalValorDia);
    ultimoTotalValorMes = digito_dia.unDigito(mes, "MES");
    println("El valor del MES es: "+ultimoTotalValorMes);
    ultimoTotalValorAno = digito_ano.unDigito(ano, "AÑO");
    println("El valor del AÑO es: "+ultimoTotalValorAno);
    
    int ur = ultimoTotalValorDia+ultimoTotalValorMes+ultimoTotalValorAno;
    urgenciaInterior = digito_total.unDigito(ur, "URGENCIA INTERIOR");
    println();
    println("LA URGENCIA INTERIOR ES: "+urgenciaInterior);
    println();
  }
  
  /*****************************************************
  * Método para desplegar en el sketch el 
  * total de la fecha de nacimiento (urgencia interior).
  */////////////////////////////////////////////////////
  int ui() {
    return urgenciaInterior;
  }
}
