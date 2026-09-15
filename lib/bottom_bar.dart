import 'package:flutter/material.dart';
import 'package:mehreen_project/images.dart';
import 'package:mehreen_project/list_view.dart';
import 'package:mehreen_project/tabBar.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Widget> screenList = [
    ListViewScreen(),
    TabBarScreen(),
    ImagesScreen()
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Bottom Bar"),
      //   backgroundColor: Colors.blue,
      // ),
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        unselectedItemColor: Colors.black,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          onTap: (value){
            setState(() {
              selectedIndex = value;
            });
          },
          currentIndex: selectedIndex,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.chat_sharp), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.image), label: "Images"),
      ]),
    );
  }
}
