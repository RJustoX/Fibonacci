class Logica {
  static String resultZeta, resultSoma;
  static void fibonacci(int n1) {
    int n2 = 0, f1 = 1, f2 = 1, f3 = 0, zeta = 0, i = 0;
    List<int> a1 = [], a2 = [];
    List<String> resultSomaList = [];

    a1.add(1);
    //Formando a lista do tio Fibonacci
    do {
      i++;
      f3 = f1 + f2;
      a1.add(f3);
      f1 = f2;
      f2 = f3;
    } while (n1 >= f3);
    //===========================
    n2 = f1;
    a2.add(n2);
    //Procurando os numeros certos
    do {
      i--;
      if (a1[i] + n2 == n1 || a1[i] + n2 < n1) {
        n2 += a1[i];
        a2.add(a1[i]);
        zeta++;
      }
      //=========================
    } while (n2 != n1);
    //Montando os dados a serem apresentados
    for (i = 0; i <= zeta; i++) {
      if (zeta - i == 0) {
        resultSomaList.add('${a2[i].toString()} = ${n1.toString()}');
      } else
        resultSomaList.add('${a2[i]} + ');
    }
    zeta += 1;
    resultSoma = resultSomaList.join();
    resultZeta = 'Zeta: $zeta';
  }
}
