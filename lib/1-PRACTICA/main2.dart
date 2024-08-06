import 'package:flutter/material.dart';
import 'package:real_chat_proyecto_2/1-PRACTICA/routes/routes2.dart';

void main() {
  runApp(_app());
}

class _app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App - prueba chat",
      theme: ThemeData(useMaterial3: false),
      initialRoute:"register",
      routes: routePrueba,
      );
  }
}
