import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_ui/navigationbar/search.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text('Shop',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        actions: [
          IconButton(onPressed: (){},
           icon: const Icon(MdiIcons.bookmark,color: Colors.black)),
           IconButton(onPressed: (){},
            icon: const Icon(MdiIcons.menu,color: Colors.black,))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.grey[200]),
              onPressed: (){},
             child: const Center(child: Text('Videos',style: TextStyle(color: Colors.black),))),
          ),
      
           Expanded(
             child: GridView.builder(
              shrinkWrap: true,
              itemCount: images.length,
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 2,crossAxisSpacing: 2) , itemBuilder:(context, index) {
               return Container(
                height: 150,
                decoration: BoxDecoration(               
                  image: DecorationImage(image: NetworkImage(images[index]),fit: BoxFit.cover)
                ),
               );
             },),
           )
        ],
      ),
    );
  }
}