import 'package:flutter/material.dart';


class MultipleSelection extends StatefulWidget {
  const MultipleSelection({super.key});

  @override
  State<MultipleSelection> createState() => _MultipleSelectionState();
}

class _MultipleSelectionState extends State<MultipleSelection> {
  List<int> selectedIndex = [];
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
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                        onTap: (){
                          setState(() {
                            if(selectedIndex.contains(index)){
                              selectedIndex.remove(index);
                            }
                            else{
                              selectedIndex.add(index);
                            }
                          });
                        },
                        selected: selectedIndex.contains(index),
                        selectedColor: Colors.blue,
                        leading: Icon(Icons.language),
                        title: Text("English, $selectedIndex"),
                        subtitle: Text("Index: $index"),
                        trailing: Icon(Icons.arrow_forward_ios_sharp)
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
