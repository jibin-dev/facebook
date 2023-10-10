import 'dart:ffi';

import 'package:flutter/material.dart';

class avatar extends StatelessWidget {
  final String displayimage;
  final bool displaystatus;
  final bool displayborder;
  final double width;
  final double height;
  avatar({
    required this.displayimage,
    required this.displaystatus,
    this.displayborder = false,

    this.height=50,
    this.width=50,
  });
  // const avatar({super.key});

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;
    if(displaystatus==true){
      statusIndicator=Positioned(
        bottom: 0,
        right: 1,
        child: Container(
          
          width: 15,
      height: 15,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 2
        )
      ),
      ));
    }else{
        statusIndicator=SizedBox();
    }

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            
            border: displayborder?Border.all(
              color: Colors.blueAccent,
              width: 3
            ):Border()
          ),
          padding: EdgeInsets.only(left: 4,right: 4),
          child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(displayimage,
              width: width,
             height: height,
             ),
              ),
        ),
      statusIndicator,
      ],
    );
  }
}