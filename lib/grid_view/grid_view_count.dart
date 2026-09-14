import 'package:flutter/material.dart';

class GridViewCount extends StatelessWidget {
  const GridViewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Count"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              Container(
                color: Colors.red,
                child: Text("1"),),
              Container(
                color: Colors.green,
                child: Text("2"),),
              Container(
                color: Colors.yellow,
                child: Text("3"),),
              Container(
                color: Colors.blue,
                child: Text("4"),),
              Container(
                color: Colors.orange,
                child: Text("5"),),
              Container(
                color: Colors.amber,
                child: Text("6"),),
              Container(
                color: Colors.purple,
                child: Text("7"),),
              Container(
                color: Colors.deepOrangeAccent,
                child: Text("8"),),
            ],
        ),
      ),
    );
  }
}
