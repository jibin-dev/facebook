import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget headerButton({
    required String buttontext,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttoncolor,

  }){

    return TextButton.icon(
                onPressed: buttonAction,
                icon: Icon(
                  buttonIcon,
                  color: buttoncolor,
                ),
                label: Text(buttontext),);
  }