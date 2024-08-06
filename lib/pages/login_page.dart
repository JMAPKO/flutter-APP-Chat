import 'package:flutter/material.dart';
import 'package:real_chat_proyecto_2/widgets/btn_azul.dart';
import 'package:real_chat_proyecto_2/widgets/labels.dart';
import 'package:real_chat_proyecto_2/widgets/logo.dart';
import 'package:real_chat_proyecto_2/widgets/textField_custom.dart';

class login_page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final bool esHorizontal = MediaQuery.of(context).orientation == Orientation.portrait; //CONDICION SI ES HORIZONTAL EL DISPOSITIVO
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
            child:  SingleChildScrollView(
              child: Container(
                height: esHorizontal ? MediaQuery.of(context).size.height*0.9: null, //APLICANDO CONDICION A LA PANTALLA
                child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Logo(titulo: "Messager - Chat"),
                          _form(),
                          labels(rute: "register", text1: "¿no tienes cuenta?", text2: "Crea una ahora!"),
                        Text("Terminos y condiciones de uso", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 12, color: Colors.black),)
                      ],
                    ),
              ),
            ),
            

      ),
    );
  }
}



class _form extends StatefulWidget {
  @override
  State<_form> createState() => _formState();
}
class _formState extends State<_form> {

final ctrl_user = TextEditingController();
final ctrl_pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          TextField_Custom(//USUARIO
              icon: Icon(Icons.email),
              hintext: "Usuario",
              controller: ctrl_user,
              TypeKeyboard: TextInputType.emailAddress,
          ),
          TextField_Custom( //PASSWORD
              icon: Icon(Icons.lock),
              hintext: "contraseña",
              controller: ctrl_pass,
              isPassword: true,
          ),


          SizedBox(height: 30,),
          Btn_azul(
              texto: "Ingresar",
              onpressed: (){
                print(ctrl_pass.text);
              }
          )
        ],
      ),
    );
  }
} //FORMULARIO



