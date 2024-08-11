import 'package:flutter/material.dart';

class chatMessage extends StatelessWidget {
  final String uid;
  final String text;

  const chatMessage({super.key, required this.uid, required this.text});



  @override
  Widget build(BuildContext context) {
    return Container(
    child: this.uid == "123"
    ? _MyMessage()
    : _NotMyMessage()
    );
  }

  Widget _MyMessage() {
    return  Align(
        alignment: Alignment.topRight,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.orangeAccent[100],
            borderRadius: BorderRadius.circular(9)
          ),
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(
            bottom: 5,
            right: 5,
            left: 50
          ),
          child: Text(this.text, style: TextStyle(color: Colors.black),),
          ),
    );
}

  Widget _NotMyMessage() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(9)
        ),
        padding: EdgeInsets.all(8), //distancia de adentro del cuadrado
        margin: EdgeInsets.only( // distancia de afeura del cuadro
          bottom: 5,
          left: 5,
          right: 50
        ),
        child: Text(this.text, style: TextStyle(color: Colors.black87),),
      ),
    );

  }


}
