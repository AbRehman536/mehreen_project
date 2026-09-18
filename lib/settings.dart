import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  ///Carousel Slider
  List<String> imageList = [
    "assets/images/onBoarding1.png",
    "assets/images/onBoarding2.png",
    "assets/images/onBoarding3.png",
  ];
  int selectedIndex = 0;

  ///Switch
  bool isSwitch = false;
  ///slider
  double currentValue = 20;
  ///Drop down
  List<String> genderList = [
    "Male", "Female", "Others"
  ];
  String? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          CarouselSlider(
              items: imageList.map((images){
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(images),
                    fit: BoxFit.cover)
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                viewportFraction: 0.8,
                enlargeCenterPage: true,
                onPageChanged: (index, reason){
                  setState(() {
                    selectedIndex = index;
                  });
                }
              )),
          Card(
            color: isSwitch ? Colors.blue : Colors.yellow,
            child: ListTile(
              leading: Icon(isSwitch ? Icons.wifi : Icons.wifi_1_bar),
              title: Text("WIFI"),
              subtitle: Text(isSwitch ? "ON" : "OFF"),
              trailing: CupertinoSwitch(
                activeColor: Colors.red,
                  inactiveTrackColor: Colors.black,
                  thumbColor: Colors.blue,
                  inactiveThumbColor: Colors.green,
                  value: isSwitch,
                  onChanged: (value){
                    setState(() {
                      isSwitch = value;
                    });
                  }),
            ),
          ),
          // if(isSwitch == true)
          //   Center(child: Text("Wifi is ON"),)
          Slider(
            min: 0,max: 100,
              label: currentValue.round().toString(),
              divisions: 100,
              value: currentValue,
              onChanged: (val){
                setState(() {
                  currentValue = val;
                });
              }),
          DropdownButton(
            hint: Text("Select Gender"),
              value: selectedGender ,
              items: genderList.map((gender){
                return DropdownMenuItem(
                  value: gender,
                    child: Text(gender));
              }).toList(),
              onChanged: (value){
                setState(() {
                  selectedGender = value;
                });
              }),
        ],
      ),
    );
  }
}
