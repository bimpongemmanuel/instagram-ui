import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_ui/navigationbar/homepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   
   int myIndex = 0;
   List<Widget> myList = [
    const HomeScreen(),
    Text('data'),
    Text('data'),
    Text('data'),
    Text('data')
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: myIndex,
        children: myList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,  
        selectedItemColor: Colors.black,
        onTap: (index){
          setState(() {
            myIndex = index;
          });
        },
        items:const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.movie_filter_outlined),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label:''),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:''),
      ]),
    );
  }
}