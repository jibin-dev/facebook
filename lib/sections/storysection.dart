import 'package:facebook/widget/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labeltext:'Add to story', 
            story: "https://i.vimeocdn.com/portrait/12119859_640x640", 
            Avatar: "https://i.vimeocdn.com/portrait/12119859_640x640",
            createstoryStatus: true,
            displayborder:true,
            ),
            StoryCard(
            labeltext:'Dom', 
            story: "http://instinctmusic.com.au/wp-content/uploads/2017/05/DOM-0288.jpg", 
            Avatar: "https://yt3.ggpht.com/a/AATXAJx2qozqSSitTz_lz0CvLHqWMdyZP3zZY6qd-Yo=s900-c-k-c0xffffffff-no-rj-mo",
            createstoryStatus: false,
            displayborder:true,),
            StoryCard(
            labeltext:'Peter', 
            story: "https://i.pinimg.com/originals/49/3c/9b/493c9ba7c01757c31df0c2b64221c307.jpg", 
            Avatar: "https://starsgab.com/wp-content/uploads/2020/10/95034075_239206217434822_4923825934299660776_n.jpg",
            createstoryStatus: false,
            displayborder:true,),

        ],
      ),
    );
  }
}