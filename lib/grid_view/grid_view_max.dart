import 'package:flutter/material.dart';

import '../models/grid_mode.dart';

class GridViewBuilderMax extends StatefulWidget {
  const GridViewBuilderMax({super.key});

  @override
  State<GridViewBuilderMax> createState() => _GridViewBuilderMaxState();
}

class _GridViewBuilderMaxState extends State<GridViewBuilderMax> {
  List<GridModel>  gridList = [
    GridModel(
        image: "assets/images/onBoarding1.png",
        title: "Headphones",
        price: 2000
    ),
    GridModel(
        image: "assets/images/onBoarding2.png",
        title: "Watch",
        price: 1699
    ),
    GridModel(
        image: "assets/images/onBoarding3.png",
        title: "Iphone",
        price: 20000
    ),
    GridModel(
        image: "assets/images/onBoarding2.png",
        title: "T Shirt",
        price: 200
    ),
    GridModel(
        image: "assets/images/onBoarding1.png",
        title: "Headphones",
        price: 200
    ),
    GridModel(
        image: "assets/images/onBoarding1.png",
        title: "Headphones",
        price: 200
    ),
    GridModel(
        image: "assets/images/onBoarding1.png",
        title: "Headphones",
        price: 200
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Builder"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 200
              ),
              itemCount: gridList.length,
              itemBuilder: (context, index){
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: Image.asset(gridList[index].image.toString(),
                          width: 200,height: 100,),
                      ),
                      Text(gridList[index].title.toString(),style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),),
                      Text("Price: ${gridList[index].price}")
                    ],
                  ),
                );
              })
      ),
    );
  }
}
