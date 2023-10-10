import 'package:facebook/sections/headerbuttonsection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storysection.dart';
import 'package:facebook/widget/circularButton.dart';
import 'package:facebook/widget/headerButton.dart';
import 'package:facebook/widget/postCard.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          actions: [
            circularButton(
                buttonIcon: Icons.search, 
                buttonAction: (){
                  print("serch");
                }
                ),
              
                circularButton(buttonIcon:Icons.chat, buttonAction: (){
                 print("chat");
                })
          ],
        ),
        body: ListView(
          children: [
            statusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            hederbuttonsection(
            buttonOne: headerButton(
              buttontext: 'Live', 
              buttonIcon: Icons.video_call, 
              buttonAction: (){}, 
              buttoncolor: Colors.red),
              buttonTwo: headerButton(
                buttontext: "Photo", 
                buttonIcon: Icons.photo_album, 
                buttonAction: (){}, 
                buttoncolor: Colors.green),
                buttonThree: headerButton(
                  buttontext: "Room", 
                  buttonIcon: Icons.video_call, 
                  buttonAction: (){}, 
                  buttoncolor: Colors.purple),
            ),
            Divider(
              color: Colors.grey,
              thickness: 10,
            ),
            RoomSection(),
            Divider(
              color: Colors.grey,
              thickness: 10,
            ),
            StorySection(),
            Divider(
              color: Colors.grey,
              thickness: 10,
            ),
            postCard(
              likeCount: '10k',
              shareCount: '50k',
              commentCount: '100',
              postTitle: "Nature",
              postImage: "https://www.thoughtco.com/thmb/qR_BYxBYdaZsaj2F4d95A9Cmhj4=/2134x1405/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-556444377-58f84ab55f9b581d59d1ed94.jpg",
              Avatar:"https://i.vimeocdn.com/portrait/12119859_640x640", 
              name: 'Matti',
              publishedat: "7h",
              ),
              postCard(
              likeCount: '20k',
              shareCount: '56k',
              commentCount: '200',
              postTitle: "Iceland",
              postImage: "https://icelandtrippers.com/wp-content/uploads/2020/07/godafoss-northern-lights-scaled.jpg",
              Avatar:"https://i.vimeocdn.com/portrait/12119859_640x640", 
              name: 'Matti',
              publishedat: "1d",
              ),
          ],
        ),
      ),
    );
  }
}
