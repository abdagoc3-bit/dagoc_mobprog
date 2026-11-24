import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NewsFeedCard(
          userName: 'Sophia Abegail Dagoc',
          postContent: 'Hi, zirs and maems!', 
          numOfHearts: 150,
          numOfComments: 18,
          date: 'November 14',
          hasImage: false,
          avatarPath: 'assets/images/my_avatar.png', 
        ),
        NewsFeedCard(
          userName: 'Sophia Abegail Dagoc', 
          postContent: 'Kain po tayo, Team Ryzza!',
          numOfHearts: 320,
          numOfComments: 45,
          date: 'November 19',
          hasImage: true,
          imagePath: 'assets/images/my_post.png', 
          avatarPath: 'assets/images/my_avatar.png',
        ),
      ],
    );
  }
}