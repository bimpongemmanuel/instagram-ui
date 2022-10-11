import 'package:flutter/material.dart';
import 'package:instagram_ui/navigationbar/homepage.dart';
import 'package:instagram_ui/navigationbar/persons_screen.dart';
import 'package:instagram_ui/navigationbar/reels.dart';
import 'package:instagram_ui/navigationbar/search.dart';
import 'package:instagram_ui/navigationbar/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   
   int myIndex = 0;
   List<Widget> myList = [
   const HomeScreen(),
   const SearchScreen(),
   const ReelScreen(),
   const ShopScreen(),
   const ProfileScreen()
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