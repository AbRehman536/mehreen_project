import 'package:flutter/material.dart';
import 'package:mehreen_project/provider/user_provider.dart';
import 'package:provider/provider.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leading:
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new),)

      ),
      body: Center(
        child: Column(
          children: [
            Text(userProvider.getName().toString()),
            Text(userProvider.getEmail().toString()),
          ],
        ),
      ),
    );
  }
}
