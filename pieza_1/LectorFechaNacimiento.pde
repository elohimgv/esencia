/*
*
*  Autor: Elohim Guevara
*
*  LectorFechaNacimiento.pde
*
*/

class LectorFechaNacimiento {

  // Declaración y creación de objetos
  Digito ite_dia = new Digito();
  Digito ite_mes = new Digito();
  Digito ite_ano = new Digito();
  Digito digi_dia = new Digito();
  Digito digi_mes = new Digito();
  Digito digi_ano = new Digito();
  Digito digi_total = new Digito();

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

  // Totales de los tres componentes: día, mes y año.
  int totalDia, totalMes, totalAno;
  int totalValorDia, totalValorMes, totalValorAno;
  int urgenciaInterior;

  // Método que itera sobre cada uno de los 
  // componentes de la fecha de nacimiento
  void fechaNacimiento() {
    totalDia = ite_dia.iterador(dia);
    totalMes = ite_mes.iterador(mes);
    totalAno = ite_ano.iterador(ano);
  }

  // Método para cuantificar el valor del día
  // + mes + año, arrojando un valor total
  void totalesFecha() {
    int ultimoTotalValorDia, ultimoTotalValorMes, ultimoTotalValorAno;
    totalValorDia = totalDia;
    totalValorMes = totalMes;
    totalValorAno = totalAno;

    if (totalValorDia > 9) {
      ultimoTotalValorDia = digi_dia.unDigito(totalValorDia, "DÍA");
    } else {
      ultimoTotalValorDia = totalValorDia;
      println("El valor del DÍA es: "+ultimoTotalValorDia);
    }

    if (totalValorMes > 9) {
      ultimoTotalValorMes = digi_mes.unDigito(totalValorMes, "MES");
    } else {
      ultimoTotalValorMes = totalValorMes;
      println("El valor del MES es: "+ultimoTotalValorMes);
    } 

    if (totalValorAno > 9) {
      ultimoTotalValorAno = digi_ano.unDigito(totalValorAno, "AÑO");
    } else {
      ultimoTotalValorAno = totalValorAno;
      println("El valor del AÑO es: "+ultimoTotalValorAno);
    }

    int ur = ultimoTotalValorDia+ultimoTotalValorMes+ultimoTotalValorAno;
    if (ur > 9) {
      urgenciaInterior = digi_total.unDigito(ur, "URGENCIA INTERIOR");
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
  int ui() {
    return urgenciaInterior;
  }
}
