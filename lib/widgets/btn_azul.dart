import 'package:flutter/material.dart';

class Btn_azul extends StatelessWidget {
  final String texto;
  final VoidCallback? onpressed;

  const Btn_azul({super.key, required this.texto, required this.onpressed});//forma de usar el onPressed


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        animationDuration: Duration(seconds: 3),
        backgroundColor: WidgetStateProperty.all(Colors.blue[500])
      ),
      onPressed: this.onpressed,
      child: Container(
          height: 50,
          width: double.infinity,
          child: Center( // para centrar el texto
              child: Text(this.texto, textAlign: TextAlign.center, style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold, color: Colors.white),))
      ),
    );
  }
}
