import 'package:flutter/material.dart';

class TextField_Custom extends StatelessWidget {
  //definimos argumentos
  final Icon icon;
  final String hintext;
  final TextEditingController controller;
  final TextInputType TypeKeyboard;
  final bool isPassword;

  const TextField_Custom({
    super.key,
    required this.icon,
    required this.hintext,
    required this.controller,
     this.TypeKeyboard = TextInputType.text,
     this.isPassword = false
  });


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.fromLTRB(5, 0, 30, 0),
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: Offset(0,5),
            blurRadius: 2
          )]
        ),
    child: TextField(
        //textAlignVertical: TextAlignVertical.center,
        controller: this.controller,
         autocorrect: false,
         keyboardType: this.TypeKeyboard,
         obscureText: this.isPassword, //contraseña?
         decoration: InputDecoration(
            prefixIcon: this.icon,
            border: InputBorder.none,
            hintText: this.hintext
          ),
      ),
   );
  }
}
