import 'package:flutter/material.dart';
import 'package:real_chat_proyecto_2/models/contacto.dart';

class  contactosLista extends StatelessWidget {
  Contacto contacto;

  contactosLista({ required this.contacto});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          child: Text(contacto.nombre!.substring(0,2), style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold,color: Colors.black54),),
          backgroundColor: Colors.blue[200],
        ),
        title: Text(contacto.nombre!),
        subtitle: Text(contacto.email!),
        trailing: Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color: contacto.estado! ? Colors.blue[600] : Colors.red,
              borderRadius: BorderRadius.circular(100)
          ),
        )
    );
  }
}
