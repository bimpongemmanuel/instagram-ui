import 'package:flutter/material.dart';
import 'package:instagram_ui/commons/reel_details.dart';
import 'package:instagram_ui/commons/reel_slide_bar.dart';
import 'package:instagram_ui/navigationbar/search.dart';

class ReelScreen extends StatelessWidget {
  const ReelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(       
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text('Reels',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){},
           icon: Icon(Icons.photo_camera_outlined,color: Colors.white,))
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
        return Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(images[index]),)
         ),
         child: Center(
           child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.transparent
                  ],
                  begin: Alignment(0,-0.75),
                  end: Alignment(0,-0.1)
                  )
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.transparent
                  ],
                  end: Alignment(0,-0.1),
                  begin: Alignment(0,-0.75),
                  
                  )
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        flex: 14,
                        child: ReelDetails()),
                         Flexible(
                        flex: 2,
                        child: ReelsSlideBar()),
                    ],
                  )
                ],
              )
            ],
           ),
         ),
        );
      },),
    );
  }
}