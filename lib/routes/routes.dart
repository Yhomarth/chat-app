

import 'package:flutter/material.dart';

import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/loading_page.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/pages/usuarios_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {

  'usuarios'  : (_) => UsuarioPage(),
  'chat'      : (_) => ChatPage(),
  'login'     : (_) => LoginPage(),
  'register'  : (_) => RegisterPage(),
  'loading'   : (_) => LoadingPage(),

};