import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(radius: 30,),
                  Column(
                    children: const [
                      Text('4',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Posts')
                    ],
                  ),
                    Column(
                    children: const [
                      Text('328',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Followers')
                    ],
                  ),
                    Column(
                    children: const [
                      Text('569',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Following')
                    ],
                  ),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(backgroundColor: Colors.grey[200]),
                      onPressed: (){},
                     child:  const Center(child: Text('Edit profile',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)),),
                  ),const SizedBox(width: 5,),
                    TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.grey[200]),
                    onPressed: (){},
                   child:  const Icon(Icons.person_add_sharp,color: Colors.black,size: 20,),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Discover people',),
                  Text('See all',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                ],
              ),
            ),
            // ListView.builder(
              
            //   itemCount: users.length,
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder:(context,index) {
            //     return SizedBox(
            //       height: 190,
            //       width: 140,
            //       child: Card(
            //         child: Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Column(
            //             children: [
            //                CircleAvatar(
            //                 backgroundColor: Colors.white,
            //                 backgroundImage: NetworkImage(users[index]['img']),
            //                 radius: 40,
            //               ),
            //               const SizedBox(height: 4,),
            //                 Text(users[index]['name'],style: const TextStyle(fontWeight: FontWeight.bold),),
            //                 const SizedBox(height:4,),
            //                const Text('wqmfhejugkjg',textAlign: TextAlign.center,),
            //                 const SizedBox(height: 4,),
            //                TextButton(
            //                 style: TextButton.styleFrom(backgroundColor: Colors.blue),
            //                 onPressed: (){},
            //                child:  const Center(child: Text('Follow',style: TextStyle(color: Colors.white),)),),
            //             ],
            //           ),
            //         ),
            //       )
            //       );
            //   }
            // ),
            //  ListView.builder(
            //   itemCount: users.length,
            //   shrinkWrap: true,
            //   scrollDirection: Axis.horizontal,
            //    itemBuilder: (context,index) {
            //      return CircleAvatar(radius: 35,
            //      backgroundImage: NetworkImage(users[index]['img']),);
            //    }
            //  )           
          ],
        ),
      ),
    );
  }

  AppBar profileAppBar() {
    return AppBar(
      title: const Text('ayam_slow_atom',style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
      automaticallyImplyLeading: false,
      centerTitle: false,
      elevation: 0,
      backgroundColor: Colors.white,
      actions: [
        IconButton(onPressed: (){},
         icon: const Icon(Icons.add_box_outlined,color: Colors.black,)),
         IconButton(onPressed: (){},
          icon: const Icon(Icons.menu,color: Colors.black,))
      ],
    );
  }
}