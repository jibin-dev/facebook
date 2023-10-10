import 'package:flutter/material.dart';

class circularButton extends StatelessWidget {
final IconData buttonIcon;
final void Function()buttonAction;
final Color iconColor;

circularButton(
  {
  required this.buttonIcon,
  required this.buttonAction,
  this.iconColor=Colors.black,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 229, 226, 226),
        shape: BoxShape.circle,
      ),
      child: IconButton(
          onPressed: buttonAction,
          icon: Icon(
            buttonIcon,
            color: Colors.black,
            size: 25,
          )),
    );
  }
}
