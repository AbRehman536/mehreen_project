import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,

        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.red,
          size: 15,),

        title: Text("APP BAR",
        style: TextStyle(
          color: Colors.purple,
          fontSize: 30,
          fontWeight: FontWeight.w900,
          decoration: TextDecoration.underline,
          decorationColor: Colors.purple,
          decorationStyle: TextDecorationStyle.dashed,
          fontStyle: FontStyle.italic,
          fontFamily: "Poppins",
          wordSpacing: 5,
          letterSpacing: 5,
          height: 5
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.search,color: Colors.yellow,size: 20,),
          Icon(Icons.notification_add,color: Colors.green,size: 25,),
          Icon(Icons.bookmark,color: Colors.orange,size: 30,),
        ],
      ),
    );
  }
}
