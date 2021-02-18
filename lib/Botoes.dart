import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Botoes extends StatelessWidget {
  final String text;
  final int textColor;
  final int buttonColor;
  final Function callBack;

  const Botoes({
    Key key,
    this.text,
    this.textColor,
    this.buttonColor,
    this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
          width: 65,
          height: 65,
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            onPressed: () {
              callBack(text);
            },
            color: Color(buttonColor),
          )),
    );
  }
}
