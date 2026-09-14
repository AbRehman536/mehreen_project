import 'package:flutter/material.dart';
import 'package:mehreen_frontend/models/chatList.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List<ChatListModel> chatList = [
    ChatListModel(
        image: "assets/images/onBoarding1.png",
        name: "Abdullah",
        message: "Hello, How are you?"),
    ChatListModel(
        image: "assets/images/onBoarding2.png",
        name: "Ali",
        message: "Hello"),
    ChatListModel(
        image: "assets/images/onBoarding3.png",
        name: "Hamza",
        message: "How are you?"),
    ChatListModel(
        image: "assets/images/onBoarding1.png",
        name: "Ahmed",
        message: "Good Morning"),
    ChatListModel(
        image: "assets/images/onBoarding3.png",
        name: "Imran",
        message: "Hello, How are you?"),
    ChatListModel(
        image: "assets/images/onBoarding2.png",
        name: "Ahsan",
        message: "Hi"),
    ChatListModel(
        image: "assets/images/onBoarding1.png",
        name: "Babar",
        message: "Hello, How are you?"),
    ChatListModel(
        image: "assets/images/onBoarding2.png",
        name: "Taimoor",
        message: "Good Bye"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      appBar: AppBar(
        title: Text("Chats"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.3),
                filled: true,
                hint: Text("Search here....."),
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none
                )
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: chatList.length,
                itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(chatList[index].image.toString()),
                    ),
                    title: Row(
                      children: [
                        Text(chatList[index].name.toString()),
                        SizedBox(width: 5,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green
                          ),
                        )
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Message"),
                        Text(chatList[index].message.toString()),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.delete,color: Colors.red,),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                );
              },),
            ),
          ],
        ),
      ),
    );
  }
}
