import 'package:flutter/material.dart';

import '../widgets/chat_messager.dart';

class chat_page extends StatefulWidget {

  @override
  State<chat_page> createState() => _chat_pageState();
}

class _chat_pageState extends State<chat_page> {

  final _textController = TextEditingController();
  final _focusNode = FocusNode();
  bool _estaEscribiendo = false;

  List<chatMessage> _messages = [
    chatMessage(uid: "123", text: "Hola"),
    chatMessage(uid: "123", text: "que onda!!"),
    chatMessage(uid: "124", text: "Holaaaaaaaaaaaa"),
    chatMessage(uid: "123", text: "CARLOSS!!!")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.greenAccent[100],
        title: Column(
            children: [
              CircleAvatar(
                maxRadius: 14,
                backgroundColor: Colors.blue[300],
                child: Text("Te", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
              ),
              SizedBox(height: 3,),
              Text("Ana Paula Silva", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            ],
          ),

      ),
      body: Container(
          child: Column(
            children: [
              Flexible(
                child: ListView.builder(
                    itemCount: _messages.length,
                    reverse: true,
                    itemBuilder: (_, i) => _messages[i] ,
                ),
              ),
              Divider(),
             Container(
               child: _chatBox(),
                decoration: BoxDecoration(
                 // borderRadius: BorderRadius.circular(30),
                  color: Colors.orangeAccent[100]
                ),
              )
          ],
        ),
      ),
  );
 }

 Widget _chatBox(){
  return SafeArea(
     child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
          children: [
             Flexible(
              child: TextField(
                controller: _textController,
                focusNode: _focusNode,
                  onChanged: (texto){
                  setState(() {
                  if(texto.length > 0){
                  _estaEscribiendo = true;
                  } else {
                  _estaEscribiendo = false;
                  }
                  });
                  },
                  //onChanged: (String text){},
                  decoration: InputDecoration.collapsed(
                  hintText: "enviar mensaje"
                  ),
                  ),
                  ),

                  Container(
                  child: IconTheme(
                  data: IconThemeData(color: Colors.blue[600]), // mantengo un color en el icono si este tiene una funcion en el onpress
                  child: IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: Icon(Icons.send),
                  onPressed: _estaEscribiendo
                      ? () {
                         _handSubmitte(_textController.text);

                  }
                    : null,
                ),
              ),
            )
          ],
      ),
    ),
  );
}

_handSubmitte (String text){

    if (text.length == null) {return null;}

    print(text);
    _messages.insert(0, new chatMessage(uid: "123", text: _textController.text));//INSERT -> AGREGA EN LA LISTA POR INDICE
    _textController.clear();
    _focusNode.requestFocus;  // para sostener el foco entonces no se ira el teclado
  setState(() {
    _estaEscribiendo = false; // Una vez enviado el mensaje, se desabilita el color
  });
}


}
