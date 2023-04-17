import 'package:flutter/material.dart';
import 'ItemData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemData> items = [];
    items.add(ItemData(price: 666));
    items.add(ItemData(price: 4666));
    items.add(ItemData(price: 6666));
    items.add(ItemData(price: 3666));
    items.add(ItemData(price: 87666));
    items.add(ItemData(price: 5666));
    items.add(ItemData(price: 31666));
    //데이터만 있는 CarrotItem

    return  MaterialApp(
      title : "potato",
      home : MainPage(items: items),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
    required this.items,
  });

  final List<ItemData> items;

  @override
  Widget build(BuildContext context) {
    List<CarrotItem> carrots = [];
    carrots.add(CarrotItem(title: '팝니다', address: '광주시 장지동', price: '1000원'));
    carrots.add(CarrotItem(title: '팝니다', address: '광주시 장지동', price: '1000원'));
    carrots.add(CarrotItem(title: '팝니다', address: '광주시 장지동', price: '1000원'));
    carrots.add(CarrotItem(title: '팝니다', address: '광주시 장지동', price: '1000원'));
    carrots.add(CarrotItem(title: '팝니다', address: '광주시 장지동', price: '1000원'));
    carrots.add(CarrotItem(title: '팝니다', address: '광주시 장지동', price: '1000원'));


    return Scaffold(
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
      body: ListView.separated(itemBuilder: (context, index) {
        print(index);
        return ItemData(price: carrots[index].price,);
      }, separatorBuilder: (context, index) => const Divider(), itemCount: carrots.length)
    );
  } 
}

class CarrotItem {
  // 순수 데이터만 존재하는 클래스

  late final String title, address, price;
  CarrotItem({
    required this.title, 
    required this.address,
    required this.price
  });
}


