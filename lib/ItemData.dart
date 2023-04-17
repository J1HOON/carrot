import 'package:flutter/material.dart';


class ItemData extends StatelessWidget {
  dynamic price;
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
              const Text("경기도 광주시", style : TextStyle(color : Colors.black45)),
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