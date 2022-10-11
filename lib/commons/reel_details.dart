import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class ReelDetails extends StatelessWidget {
  const ReelDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ListTile(
          dense:true ,
          minLeadingWidth: 0,
          horizontalTitleGap: 12,
          leading: CircleAvatar(radius: 14,),
          title: Text('hello-Follow',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: ExpandableText('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold), expandText: 'more',collapseText: 'less',
          expandOnTextTap: true,
          collapseOnTextTap: true,
          maxLines: 1,
          linkColor: Colors.grey,
          ),
        ),
          ListTile(
          dense:true ,
          minLeadingWidth: 0,
          horizontalTitleGap: 5,
          leading: Icon(Icons.graphic_eq_outlined,size: 16,color: Colors.white,),
          title: Text('music title = original music',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        ),
      ],
    );
  }
}