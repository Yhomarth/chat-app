
import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {


  final Function onPressed;
  final String text;

  const BotonAzul({
    @required this.onPressed,
    @required this.text
    });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 2,
      highlightElevation: 5,
      color: Colors.blue,
      shape: StadiumBorder(),
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        height: 50,
        child: Center(
          child: Text(this.text, style: TextStyle(color: Colors.white, fontSize: 17),),
        ),
             ),
           );
  }
}