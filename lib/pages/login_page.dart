import 'package:chat_app/widgets/boton_azul.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/widgets/labels.dart';
import 'package:chat_app/widgets/logo.dart';
import 'package:chat_app/widgets/custom_input.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),

          child: ConstrainedBox(
            constraints: BoxConstraints(
             // minHeight: MediaQuery.of(context).size.height,
              minHeight: 650,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Logo(texto: 'Messenger',),

                _Form(),

                Labels(
                  textoCursiva: '¿No tienes cuenta?',
                  textoNegrita: 'Crea una ahora!',
                  ruta: 'register',
                ),

                Text(
                  'Terminos y condiciones de uso',
                  style: TextStyle(fontWeight: FontWeight.w200),
                )

              ],
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            textController: emailCtrl,
            keyboardType: TextInputType.emailAddress,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            textController: passCtrl,
            isPassword: true,
          ),
          BotonAzul(
            text: 'Ingrese',
            onPressed: () {
              print(this.emailCtrl.text);
              print(this.passCtrl.text);
            },
          )
        ],
      ),
    );
  }
}
