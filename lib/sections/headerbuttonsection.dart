import 'package:flutter/material.dart';

class hederbuttonsection extends StatelessWidget {

  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  hederbuttonsection({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree
  });

  

  @override 
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
                  thickness: 1,
                  color: Colors.grey,

                );
    return Container(
        height: 40,
        child: Row(
          mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
          children: [
            buttonOne,
                verticalDivider,
                buttonTwo,
                  verticalDivider,
                  buttonThree
          ],
        ));
  }
}
