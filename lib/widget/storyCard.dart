import 'package:facebook/widget/avatar.dart';
import 'package:facebook/widget/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labeltext;
  final String story;
  final String Avatar;
  final bool createstoryStatus;
  final bool displayborder;


  StoryCard({
    required this.labeltext,
    required this.story,
    required this.Avatar,
    this.createstoryStatus = true,
    this.displayborder=true

  });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(story),
        fit: BoxFit.cover),
    borderRadius: BorderRadius.circular(15)
    ),
    child: Stack(
      children: [
        Positioned(
          left: 5,
          top: 5,
          child: createstoryStatus? circularButton
          (
            buttonIcon: Icons.add,
            iconColor: Colors.blue, 
             buttonAction: (){},
             )
             :avatar(
              displayimage: Avatar, 
              displaystatus: false,
              displayborder: displayborder,)
             ),
             Positioned(
              bottom: 10,
              left: 10,
              child: Text(labeltext !=null? labeltext:"n/a",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),))
      ],
    ),
    
    );
  }
}
