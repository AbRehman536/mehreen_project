import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Chats"),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.green,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12)
                  ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    isScrollable: true,
                    tabs: [
                  Tab(icon: Icon(Icons.all_inbox),text: "All",),
                  Tab(icon: Icon(Icons.mark_as_unread),text: "Unread",),
                  Tab(icon: Icon(Icons.group),text: "Groups",),
                  Tab(icon: Icon(Icons.favorite),text: "Favorite",),
                  Tab(icon: Icon(Icons.all_inbox),text: "All",),
                  Tab(icon: Icon(Icons.mark_as_unread),text: "Unread",),
                  Tab(icon: Icon(Icons.group),text: "Groups",),
                  Tab(icon: Icon(Icons.favorite),text: "Favorite",),
                ]),
              ),
            ),
          ),
        ),
        body: TabBarView(
            children: [
              Center(child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Row(
                        children: [
                          Text("Abdullah"),
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
                          Text("Hello, How are you"),
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
                },),),
              Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: StaggeredGrid.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    children:  [
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(color: Colors.red,),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1,
                        child: Container(color: Colors.green,),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Container(color: Colors.blue,),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 2,
                        child: Container(color: Colors.yellow,),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 3,
                        mainAxisCellCount: 2,
                        child: Container(color: Colors.pink,),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(color: Colors.orange,),
                      ),
                    ],
                  )
              ),),
              Center(child: SingleChildScrollView(
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
              ),),
              Center(child: Padding(
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
              ),),
        ]),
      ),
    );
  }
}
