
import 'package:flutter/material.dart';
import 'package:real_chat_proyecto_2/pages/chat_page.dart';
import 'package:real_chat_proyecto_2/pages/loading_page.dart';
import 'package:real_chat_proyecto_2/pages/login_page.dart';
import 'package:real_chat_proyecto_2/pages/register_page.dart';
import 'package:real_chat_proyecto_2/pages/usuarios_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  "user": (_) => usuarios_page(),
  "chat": (_) => chat_page(),
  "login": (_) => login_page(),
  "register": (_) => register_page(),
  "loading": (_) => loading_page()

};