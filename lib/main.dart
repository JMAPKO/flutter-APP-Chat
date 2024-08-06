import 'package:flutter/material.dart';
import 'package:real_chat_proyecto_2/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RealChat APP",
      debugShowCheckedModeBanner: false,
      initialRoute: "login",
      routes: appRoutes,
    );
  }
}
