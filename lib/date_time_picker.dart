import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mehreen_project/main.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Event"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Text("Event Date:"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             Text(DateFormat.yMMMMEEEEd().format(selectedDate)),
              ElevatedButton(onPressed: (){
                showDatePicker(
                    context: context,
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2100))
                    .then((value){
                      setState(() {
                        selectedDate = value!;
                      });
                });
              }, child: Text("Select Date"))
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(selectedTime.format(context).toString()),
              ElevatedButton(onPressed: (){
                showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now())
                    .then((val){
                      setState(() {
                        selectedTime = val!;
                      });
                });
              }, child: Text("Select Time"))
            ],
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            showDialog(
              barrierDismissible: false,
                context: context,
              builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Thank You!"),
                    content: Text("Event Create Successfully"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Back")),
                      TextButton(onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => MyHomePage(title: "Home")));
                      }, child: Text("Okay")),
                    ],
                  );
              },);
          }, child: Text("Create Event"))
        ],
      ),
    );
  }
}
