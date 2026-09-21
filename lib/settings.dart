import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

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
          Pinput(
            length: 6,
            showCursor: true,
            onCompleted: (value){
              print(value);
            },
            defaultPinTheme: PinTheme(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: .circular(10),
                border: Border.all(
                  color: Colors.black
                )
              ),
              textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.red
              )
            ),
          ),
          ElevatedButton(onPressed: (){
            showModalBottomSheet(
              isDismissible: false,
                context: context,
              builder: (BuildContext context) {
                  return Column(
                    children: [
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text("Profile"),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.notification_add),
                          title: Text("Notifications"),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.settings),
                          title: Text("Settings"),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.logout),
                          title: Text("Logout"),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  );
              }, );
          }, child: Text("Show Bottom Sheet"))
        ],
      ),
    );
  }
}
