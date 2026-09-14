import 'package:flutter/material.dart';

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POST"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new),
        actions: [
          Icon(Icons.settings)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/images/model.jpg"),
                  ),
                  SizedBox(width: 10,),
                  Text("Tuba Buyukustun"),
                  SizedBox(width: 100,),
                  Icon(Icons.menu)
                ],
              ),
              SizedBox(height: 10,),
              ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network("https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630")),
              SizedBox(height: 10,),
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.favorite),
                          SizedBox(width: 5,),
                          Text("7.2 K")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.comment),
                          SizedBox(width: 5,),
                          Text("533")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.share),
                          SizedBox(width: 5,),
                          Text("10 K")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.bookmark),
                          SizedBox(width: 5,),
                          Text("100")
                        ],
                      ),
                    ],
                  )

            // Container(
            //     color: Colors.yellow,
            //     child: Image.asset("assets/images/first.jpg",width: 200,height: 400,fit: BoxFit.cover,)
            // )
            ],
          ),
        ),
      ),
    );
  }
}
