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
          date: 'October 1',
          hasImage: false,
          avatarPath: 'assets/images/my_avatar.png',
        ),
        NewsFeedCard(
          userName: 'Sophia Abegail Dagoc',
          postContent: 'Kain po tayo, Team Ryzza!',
          numOfHearts: 320,
          numOfComments: 45,
          date: 'November 4',
          hasImage: true,
          imagePath: 'assets/images/my_post.png',
          avatarPath: 'assets/images/my_avatar.png',
        ),
        NewsFeedCard(
          userName: 'Hallee Dumlan',
          postContent: 'Nanay dutyyy!',
          numOfHearts: 214,
          numOfComments: 27,
          date: 'November 20',
          hasImage: true,
          imagePath: 'assets/images/hali.png',
          avatarPath: 'assets/images/haliavatar.png',
        ),
        NewsFeedCard(
          userName: 'Karl De Leon',
          postContent: 'Sino may vacant mamaya? Pakotongg xD',
          numOfHearts: 98,
          numOfComments: 14,
          date: 'January 22',
          hasImage: true,
          imagePath: 'assets/images/karl.png',
          avatarPath: 'assets/images/karlavatar.png',
        ),
        NewsFeedCard(
          userName: 'Ashton Maitim',
          postContent: 'THANKS SA FREE TUSERANG! <3',
          numOfHearts: 275,
          numOfComments: 31,
          date: 'January 23',
          hasImage: true,
          imagePath: 'assets/images/ashton.png',
          avatarPath: 'assets/images/ashtonavatar.png',
        ),
        NewsFeedCard(
          userName: 'Jade Bino',
          postContent: 'Sarap ko!',
          numOfHearts: 183,
          numOfComments: 22,
          date: 'February 24',
          hasImage: true,
          imagePath: 'assets/images/jade.png',
          avatarPath: 'assets/images/jadeavatar.png',
        ),
        NewsFeedCard(
          userName: 'Himaware',
          postContent: 'Ready na for Tech fiesta!',
          numOfHearts: 129,
          numOfComments: 16,
          date: 'March 24',
          hasImage: true,
          imagePath: 'assets/images/himaware.png',
          avatarPath: 'assets/images/himawareavatar.png',
        ),
        NewsFeedCard(
          userName: 'Janiesha Conise',
          postContent: 'Report ayaw?',
          numOfHearts: 410,
          numOfComments: 52,
          date: 'December 1',
          hasImage: false,
        ),
        NewsFeedCard(
          userName: 'Av Rae',
          postContent: 'vacaaaant grrr',
          numOfHearts: 356,
          numOfComments: 49,
          date: 'March 25',
          hasImage: true,
          imagePath: 'assets/images/avrae.png',
          avatarPath: 'assets/images/avraeavatar.png',
        ),
        NewsFeedCard(
          userName: 'Jerrymie Liwag',
          postContent: 'ang pogi ko, shesh.',
          numOfHearts: 204,
          numOfComments: 19,
          date: 'April 26',
          hasImage: true,
          imagePath: 'assets/images/jm.png',
          avatarPath: 'assets/images/jmavatar.png',
        ),
      ],
    );
  }
}