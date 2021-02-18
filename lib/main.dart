import 'package:flutter/material.dart';
import 'Botoes.dart';
import 'Logica.dart';

void main() {
  runApp(FibCalc());
}

class FibCalc extends StatefulWidget {
  FibCalc({Key key}) : super(key: key);
  @override
  FibCalcState createState() => FibCalcState();
}

class FibCalcState extends State<FibCalc> {
  String _resultado = '';
  String _valor = '';
  String _zeta = '';

  void onClick(String text) {
    setState(() {
      if (_resultado != '') {
        _resultado = '';
        _zeta = '';
      }
      _valor += text;
    });
  }

  void limpa(String text) {
    setState(() {
      _resultado = '';
      _valor = '';
      _zeta = '';
    });
  }

  void calcula(String text) {
    setState(() {
      Logica.fibonacci(int.parse(_valor));
      _resultado = Logica.resultSoma;
      _zeta = Logica.resultZeta;
    });
    _valor = '';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Fibonacci",
        home: Scaffold(
          backgroundColor: Color(0xFFE0F2F1),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  //Container zeta
                  color: Color(0xFFE0F2F1),
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    _zeta,
                    style: TextStyle(fontSize: 38),
                  ),
                  alignment: Alignment(1, 1),
                ),
                Container(
                  //Container Soma
                  color: Color(0xFFE0F2F1),
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    _resultado,
                    style: TextStyle(fontSize: 24),
                  ),
                  alignment: Alignment(1, 1),
                ),
                Container(
                  //container Input
                  padding: EdgeInsets.all(12),
                  child: Text(
                    _valor,
                    style: TextStyle(fontSize: 48),
                  ),
                  alignment: Alignment(1, 1),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Botoes(
                        text: '1',
                        buttonColor: 0xFFE0F2F1,
                        callBack: onClick,
                      ),
                      Botoes(
                        text: '2',
                        buttonColor: 0xFFE0F2F1,
                        callBack: onClick,
                      ),
                      Botoes(
                        text: '3',
                        buttonColor: 0xFFE0F2F1,
                        callBack: onClick,
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Botoes(
                        text: '4',
                        buttonColor: 0xFFE0F2F1,
                        callBack: onClick,
                      ),
                      Botoes(
                        text: '5',
                        buttonColor: 0xFFE0F2F1,
                        callBack: onClick,
                      ),
                      Botoes(
                        text: '6',
                        buttonColor: 0xFFE0F2F1,
                        callBack: onClick,
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Botoes(
                        text: '7',
                        buttonColor: 0xFFE0F2F1,
                        callBack: onClick,
                      ),
                      Botoes(
                        text: '8',
                        buttonColor: 0xFFE0F2F1,
                        callBack: onClick,
                      ),
                      Botoes(
                        text: '9',
                        buttonColor: 0xFFE0F2F1,
                        callBack: onClick,
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Botoes(
                        text: 'X',
                        buttonColor: 0xFFFFCDD2,
                        callBack: limpa,
                      ),
                      Botoes(
                        text: '0',
                        buttonColor: 0xFFE0F2F1,
                        callBack: onClick,
                      ),
                      Botoes(
                        text: '=',
                        buttonColor: 0xFFB9F6CA,
                        callBack: calcula,
                      ),
                    ]),
              ]),
        ));
  }
}
