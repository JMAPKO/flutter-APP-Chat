import 'package:flutter/material.dart';

class labels extends StatelessWidget {

  final String rute;
  final String text1;
  final String text2;

  const labels({super.key, required this.rute, required this.text1, required this.text2});




  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 15,),
          Text(text1, style: TextStyle(fontSize: 10, color: Colors.black54, fontWeight: FontWeight.w300),),

          InkWell(
              child: Text(text2, style: TextStyle(fontSize: 15, color: Colors.blue[600], fontWeight: FontWeight.bold ),),
           onTap: (){
                Navigator.pushNamed(context, this.rute);
           },
          ),
        ],
      ),
    );
  }
}