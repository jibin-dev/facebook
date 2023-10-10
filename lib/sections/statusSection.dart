
import 'package:facebook/widget/avatar.dart';
import 'package:flutter/material.dart';

class statusSection extends StatelessWidget {
  const statusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: avatar( displaystatus: false,
        displayimage:
        'https://i.vimeocdn.com/portrait/12119859_640x640' )
      ,
      title: TextField(
       decoration: InputDecoration(
        hintText: "what's on your mind?",
        hintStyle: TextStyle(color: Colors.black),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none


       ), 
      )
    );
  }
}