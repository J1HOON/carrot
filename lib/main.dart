import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title : "potato",
      home : Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title : Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.menu),
                Text("Ing", style : TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                Icon(Icons.people),
              ],
            ),
          )
        ), 
        body: SingleChildScrollView(
          child: Column(
            children: [
              ItemData(price : 1000),  
              ItemData(price : 10340),  
              ItemData(price : 19990),  
              ItemData(price : 8890),  
              ItemData(price : 12350),  
              ItemData(price : 13400),  
            ],
          ),
        )
      ),
    );
  }
}

class ItemData extends StatelessWidget {
  int price;
  ItemData({
    super.key,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          image: AssetImage('images/potato.jpg'),
          width : 100,
          height : 100,
          ),
        const SizedBox(width : 30,),
        Flexible(
          flex : 1,
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text("싱싱한 감자 나눔합니다.", style : TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              const Text("경기도 광주시", style : TextStyle(color : Colors.black12)),
              Text("$price원",),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.heart_broken_sharp, color:Colors.red),
                  Text("10"),
                  SizedBox(width : 20),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}