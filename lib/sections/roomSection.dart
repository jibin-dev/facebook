import 'package:facebook/widget/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          Createroombutton(),
        avatar(displaystatus: true, displayimage: 'https://yt3.ggpht.com/a/AGF-l7_zHtm1Mcchr3Zq7q518oPcTJh951-wRp9GHQ=s900-mo-c-c0xffffffff-rj-k-no'),
        avatar(displaystatus: true,displayimage: 'https://yt3.ggpht.com/a/AGF-l7_zHtm1Mcchr3Zq7q518oPcTJh951-wRp9GHQ=s900-mo-c-c0xffffffff-rj-k-no'),
        avatar(displaystatus: true,displayimage: 'https://yt3.ggpht.com/a/AGF-l7_zHtm1Mcchr3Zq7q518oPcTJh951-wRp9GHQ=s900-mo-c-c0xffffffff-rj-k-no'),
        avatar(displaystatus: true,displayimage: 'https://yt3.ggpht.com/a/AGF-l7_zHtm1Mcchr3Zq7q518oPcTJh951-wRp9GHQ=s900-mo-c-c0xffffffff-rj-k-no'),
        avatar(displaystatus: true,displayimage: 'https://yt3.ggpht.com/a/AGF-l7_zHtm1Mcchr3Zq7q518oPcTJh951-wRp9GHQ=s900-mo-c-c0xffffffff-rj-k-no'),
        avatar(displaystatus: true,displayimage: 'https://yt3.ggpht.com/a/AGF-l7_zHtm1Mcchr3Zq7q518oPcTJh951-wRp9GHQ=s900-mo-c-c0xffffffff-rj-k-no')
        
        ],
      ),
    );
  }
  Widget Createroombutton(){
    return Container(
      padding: EdgeInsets.only(right: 5,left: 5),
      child: OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.video_call,
                color: Colors.purple,
              ),
              label: Text(
                'Create \n Room',
                style: TextStyle(
                  color: Colors.blue),
              )));
  }
}
