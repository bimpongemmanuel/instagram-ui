import 'package:flutter/material.dart';

class ReelsSlideBar extends StatelessWidget {
  const ReelsSlideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: (){},
         icon: Icon(Icons.favorite_outline,size: 28,color: Colors.white,)),
         SizedBox(height: 10,),
         Text('1.43k',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
         SizedBox(height: 10,),
         IconButton(onPressed: (){},
          icon: Icon(Icons.chat_bubble_outline,size: 28,color: Colors.white,)),
          SizedBox(height: 10,),
          Text('33',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white)),
          SizedBox(height: 10,),
          IconButton(onPressed: (){},
           icon: Icon(Icons.send_outlined,size: 28,color: Colors.white,)),
           SizedBox(height: 10,),
           Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white,width: 23),
              borderRadius: BorderRadius.circular(8)
            ),
           )
      ],
    );
  }
}