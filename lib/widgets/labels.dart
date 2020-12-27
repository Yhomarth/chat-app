import 'package:flutter/material.dart';



class Labels extends StatelessWidget {
  
  final String textoCursiva;
  final String textoNegrita;
  final String ruta;

  const Labels({
                Key key, 
                @required this.textoCursiva, 
                @required this.textoNegrita,
                @required this.ruta
                });


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(this.textoCursiva, style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300),),
          SizedBox(height: 10,),
          GestureDetector(
            child: Text(this.textoNegrita, style: TextStyle(color: Colors.blue[600], fontSize: 18, fontWeight: FontWeight.bold),),
            onTap: () {
             Navigator.pushReplacementNamed(context, this.ruta);
            },
            )
        ],
      ),
      
    );
  }
}