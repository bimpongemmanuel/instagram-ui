import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        title: const Text('Instagram',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.black),),
        actions: [
          IconButton(onPressed: (){},
           icon: const Icon(Icons.add_box_outlined,color: Colors.black,)),
           const SizedBox(width: 4,),
           IconButton(onPressed: (){},
            icon: const Icon(FeatherIcons.heart,color: Colors.black,)),
             const SizedBox(width: 4,),
             IconButton(onPressed: (){},
             icon: const Icon(MdiIcons.facebookMessenger,color: Colors.black,),)
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [         
            SizedBox(
              height: 100,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount:10,
                itemBuilder: (context,index) {
                  return storyCard();
                }
              ),
            ),
             const Divider(thickness: 2,),
             ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
               itemBuilder: (context,index) {
                 return SizedBox(
                  height: MediaQuery.of(context).size.height/1.8,
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                
                                children: const [
                                CircleAvatar(),
                                SizedBox(width: 5,),
                                Text('Atom')
                              ],),
                              IconButton(onPressed: (){},
                               icon: const Icon(FeatherIcons.moreVertical))
                            ],
                          ),
                        ),
                        Container(
                          height: 250,                 
                          decoration: const BoxDecoration(
                            //  color: Colors.blue,
                             image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),fit: BoxFit.cover),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(onPressed: (){},
                                 icon: const Icon(FeatherIcons.heart,color: Colors.black,)),
                             const SizedBox(width: 5,),
                             IconButton(onPressed: (){},
                             icon: const Icon(FeatherIcons.messageCircle,color: Colors.black,)),
                                 const SizedBox(width: 5,),
                             IconButton(onPressed: (){},
                             icon: const Icon(FeatherIcons.share,color: Colors.black,))
                              ],
                            ),
                            IconButton(onPressed: (){},
                             icon: const Icon(FeatherIcons.bookmark))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: const [
                              CircleAvatar(),
                              SizedBox(width: 5,),
                              Text('Liked by slow_atom others')
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('ihrniuhbihirtjhioorhtnhreofduergoiefjihi4grskjag',textAlign: TextAlign.center,),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child:  Text('View all 10 comments'),
                        ),
                        
                    ]),
                  ));
               }
             )
          ],
        ),
      ),
    );
  }







  SizedBox storyCard() {
    return SizedBox(
          height: 90,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                CircleAvatar(
        radius:30,
        backgroundImage: NetworkImage('https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
        ),
        SizedBox(height: 5,),
        Text('Blacko'),
              ],
            ),
          ),
        );
  }
}