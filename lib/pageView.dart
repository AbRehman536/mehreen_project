import 'package:flutter/material.dart';
import 'package:mehreen_frontend/models/onBoarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
        image: "assets/images/onBoarding1.png",
        title: "Plan trip to more than 90 countries"),
    OnBoardingModel(
        image: "assets/images/onBoarding2.png",
        title: "Hassle free and quick flight booking"),
    OnBoardingModel(
        image: "assets/images/onBoarding3.png",
        title: "Real time flight status to keep you inform"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              controller: pageController,
              itemCount: onBoardingList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Image.asset(onBoardingList[index].image.toString(),
                    height: 200,
                    width: 300,),
                    Text(onBoardingList[index].title.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20
                    ),),
                  ],
                );
              },
            ),
          ),
          SmoothPageIndicator(
              controller: pageController,  // PageController
              count:  onBoardingList.length,
              effect:  WormEffect(),  // your preferred effect
              onDotClicked: (index){
              }
          ),
          ElevatedButton(
              onPressed: (){},
              child: Text("Book Your Trip")),
          TextButton(onPressed: (){}, child: Text("Sign in")),
        ],
      ),
    );
  }
}
