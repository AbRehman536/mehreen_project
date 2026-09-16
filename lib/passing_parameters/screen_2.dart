import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final String name;
  final String email;
  const Screen2({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Text(name),
            Text(email)
          ],
        ),
      ),
    );
  }
}
