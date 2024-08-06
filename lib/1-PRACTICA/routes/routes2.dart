import 'package:flutter/material.dart';
import 'package:real_chat_proyecto_2/1-PRACTICA/pages/pageOne.dart';
import 'package:real_chat_proyecto_2/1-PRACTICA/pages/pageThrid.dart';
import 'package:real_chat_proyecto_2/1-PRACTICA/pages/pageTwo.dart';

final Map<String, Widget Function(BuildContext)> routePrueba = {
  "inicio": (_) => pageUno(),
  "login": (_) => pageDos(),
  "register": (_) => pageTres()

};