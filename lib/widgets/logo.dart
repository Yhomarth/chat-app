import 'package:flutter/material.dart';

class Logo extends StatelessWidget {

  final String rutaImagen;
  final String texto;

  const Logo({Key key, 
              this.rutaImagen = 'assets/tag-logo.png', 
              @required this.texto});

  
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 40),
          width: 170,
          child: Column(
            children: [
              Image(image: AssetImage(this.rutaImagen)),
              SizedBox(height: 10,),
              Text(this.texto, style: TextStyle(fontSize: 30),)
            ],
          ),
          
        ),
      ),
    );
  }
}