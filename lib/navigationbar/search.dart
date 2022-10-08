import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Colors.grey));
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 1),
                border: outlineInputBorder,
                focusedBorder: outlineInputBorder,
              ),
            ),
           Expanded(
             child: MasonryGridView.builder(gridDelegate:SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3) ,
             itemCount: images.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                
                );
              },),
           ),
           
          ],
        ),
      ),
    );
  }
}
  final List<String> images = [
    "https://images.unsplash.com/photo-1521856729154-7118f7181af9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fHByb2ZpbGUlMjBwaG90b3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.vans.com/is/image/Vans/VN000D3HY28-HERO?hei=1024&wid=1024&qlt=95",
    'https://m.media-amazon.com/images/I/81oUvlsYcnL._SL1500_.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/815O9y5VD%2BL._SL1500_.jpg',
    'https://images.unsplash.com/photo-1524290266577-e90173d9072a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDd8fHByb2ZpbGUlMjBwaG90b3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCNfehIJxTYB-raA7qAX0Z7TTuvaYGA2zHjA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJAN8OULnU5v6zRPWbevrn_6SH-NsACz7Ptg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0d-DC6mbnZVJY2Ld4ynBH0l42X38nCDqC_A&usqp=CAU',
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZSUyMHBob3RvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGUlMjBwaG90b3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
  ];