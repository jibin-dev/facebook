import 'package:facebook/sections/headerbuttonsection.dart';
import 'package:facebook/widget/avatar.dart';
import 'package:facebook/widget/blueTick.dart';
import 'package:facebook/widget/headerButton.dart';
import 'package:flutter/material.dart';

class postCard extends StatelessWidget {
  final String Avatar;
  final String name;
  final String publishedat;
  final String postTitle;
  final String postImage;
  final String likeCount;
  final String shareCount;
  final String commentCount;

postCard({
  required this.Avatar,
  required this.name,
  required this.publishedat,
  required this.postTitle,
  required this.postImage,
  required this.likeCount,
  required this.shareCount,
  required this.commentCount
  
});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(color: Colors.grey,
          thickness: 1,),
          hederbuttonsection(
            buttonOne: headerButton(
              buttontext:"like" , 
              buttonIcon: Icons.thumb_up_alt_outlined, 
              buttonAction: (){}, 
              buttoncolor: Colors.grey),
              buttonTwo: headerButton(
              buttontext:"Comment" , 
              buttonIcon: Icons.message_outlined, 
              buttonAction: (){}, 
              buttoncolor: Colors.grey),
              buttonThree: headerButton(
              buttontext:"Share" , 
              buttonIcon: Icons.share_outlined, 
              buttonAction: (){}, 
              buttoncolor: Colors.grey),
          )


          
        ],
      ),
    );
    
  }
  Widget footerSection(){
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(child: Row(
            children: [
              Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle
              
            ),
            child:Icon(Icons.thumb_up,
            color: Colors.white,size: 10,
            ),
            ),
          
          displayText(label: likeCount),
            ],
          ),),
          
          Container(child: Row(
            children: [
              displayText(label: commentCount),
              SizedBox(width: 5,),
              displayText(label: 'comments'),
              SizedBox(width: 10,),
              displayText(label: shareCount),
              SizedBox(width: 5,),
              displayText(label: 'Shares'),
              SizedBox(width: 10,),
              avatar(
                height: 30,
                width: 30,
                displayimage: Avatar, 
                displaystatus: false),
                SizedBox(width: 2,),
                IconButton(onPressed: (){

                }, icon: Icon(Icons.arrow_drop_down,
                color: Colors.grey,))
              
            ],
          ),)
        ],
      ),
    );
  }
  Widget displayText({
    required String label
  }){
    return Text(label,style: TextStyle(
            color: Colors.grey,
            fontSize: 15
          ),);
  }
Widget imageSection(){
  return Container(
    child: Image.network(postImage),
  );
}

  Widget titleSection(){
    return Container(
      child: Text(postTitle,style: 
      TextStyle(
        color: Colors.black,
        fontSize: 16
      ),),
    );
  }
  Widget postCardHeader(){
    return
    ListTile(
            trailing: IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.more_horiz)),
            subtitle: Row(
              children: [
                Text(publishedat==null ?"":publishedat),
                SizedBox(width: 10,),
                Icon(Icons.public,
                size: 20,),
                

              ],
            ),
            leading: avatar(
              displayimage:Avatar , 
              displaystatus: false),
              title:Row(
                children: [
                  Text('Dom',
                  style: TextStyle(
                    color: Colors.black
                  ),
                  ),
                  SizedBox(width:10),
                  blueTick()
                  
                ],
              ) ,
          );
  }
}