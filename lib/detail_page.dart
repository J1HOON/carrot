import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  
  
  const DetailPage({
    super.key

  });
  

  @override
  Widget build(BuildContext context) {

  return Scaffold(
        appBar: AppBar(title : const Text("세부페이지")),
        body : Column(
          children: [
            const Image(
              image: AssetImage('images/1.jpg'),
              fit: BoxFit.none,
            ),
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/1.jpg')
                    ),
                  ),
                  width : 50,
                  height : 50,
                ),
                const SizedBox(width : 20,),
                Flexible(
                  child:SizedBox(
                  width : double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('함지훈', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
                      Text('경기도 광주시 장지동', style: TextStyle(color: Colors.black38),),
                    ],
                  ),
                ),
                ),
                const Icon(Icons.tag_faces, color:Colors.amber,),
                const SizedBox(width : 20,)
              ],
            ),
          
            const Center(child: Text('이게 뭐야 무서웡',)),
            const Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 128, 128),
                  borderRadius: BorderRadius.circular(7)
                ),
                child: const Text("사기꾼 조심"),
              ),
            ),
  
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width : 1,
                  color : Colors.black26,
                )
              ),
              child: Row(
                children: [
                  const Icon(Icons.favorite_outline),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('10000원'),
                      Text('제안불가'),
                    ],
                  ),
                  
                  Container(
                    margin: const EdgeInsets.all(10,),
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 181, 181),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: const Text('채팅하기'),
                  )
                ],
              ),
            )
          ],
        ),
      );
}
}