import 'package:flutter/material.dart';
import 'package:mehreen_project/passing_parameters/screen_2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(
              context, MaterialPageRoute(
              builder: (context)=> Screen2(
                name : "Abdullah",
                email : "abdullah@gmail.com"
              )));
        }, child: Text("Go To Next Screen")),
      ),
    );
  }
}
