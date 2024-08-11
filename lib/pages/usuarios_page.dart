import 'package:flutter/material.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:real_chat_proyecto_2/models/contacto.dart';
import 'package:real_chat_proyecto_2/widgets/contactosLista.dart';

class usuarios_page extends StatefulWidget {

  @override
  State<usuarios_page> createState() => _usuarios_pageState();
}

class _usuarios_pageState extends State<usuarios_page> {

  RefreshController _refreshController = RefreshController(initialRefresh: false);

  final contactos = [
    Contacto(nombre: "Martina", uid: "1", email: "prueba@test.com", estado: true),
    Contacto(nombre: "Ruben", uid: "2", email: "prueb2@test.com", estado: false),
    Contacto(nombre: "Camila", uid: "3", email: "prueb3@test.com", estado: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text("Mi Nombre", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.check_circle, color: Colors.blue[400],),
          )
        ],
      ),
      body: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        header: WaterDropMaterialHeader(

        ),
        onRefresh: _onRefresh,
        child: ListView.separated(
            separatorBuilder: (context, i) => Divider(),
            itemCount: contactos.length,
            itemBuilder: (context, i) {
              return contactosLista(contacto: contactos[i]);/*ListTile(
                leading: CircleAvatar(
                    child: Text(contactos[i].nombre!.substring(0,2), style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold,color: Colors.black54),),
                  backgroundColor: Colors.blue[200],
                ),
              title: Text(contactos[i].nombre!),
              subtitle: Text(contactos[i].email!),
              trailing: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: contactos[i].estado! ? Colors.blue[600] : Colors.red,
                    borderRadius: BorderRadius.circular(100)
                  ),
                )
              );*/
            },
        ),
      ),
    );
  }


  void _onRefresh() async{

    await Future.delayed(Duration(milliseconds: 1000));
    _refreshController.refreshCompleted();
  }





}
