import 'package:faceook/sections/Post%20Section/postCard.dart';
import 'package:faceook/sections/Story%20Section/storySetion.dart';
import 'package:faceook/sections/headerButtonSection.dart';
import 'package:faceook/sections/roomSection.dart';
import 'package:faceook/sections/addPostSections.dart';
import 'package:faceook/sections/suggestionSection/suggestSection.dart';
import 'package:faceook/sections/widgets/childWidgets.dart';
import 'package:faceook/widgets/appBarDesign.dart';
import 'package:faceook/widgets/assets.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 26.0,
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print('Search button clicked');
                }),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () => print('Messenger button clicked'),
            )
          ],
        ),
        body: ListView(children: [
          AddPostSection(),
          marginDivider(thickness: 1.0),
          HeaderButtonSection(
            vertLine: true,
            buttonOne: textbuttons(
                icon: Icons.video_call, color: Colors.red, label: ''),
            buttonTwo: textbuttons(
                icon: Icons.photo_library, color: Colors.green, label: "photo"),
            buttonThree: textbuttons(
                icon: Icons.video_call, color: Colors.purple, label: "Room"),
          ),
          marginDivider(),
          RoomSection(),
          marginDivider(),
          StorySection(),
          marginDivider(),
          PostCard(
            image: mohanlal,
            profileName: "Mohanlal",
            time: '5h',
            content: "       Happy Diwali!!",
            postImage: kohli,
            bluetick: true,
            like: "50k",
            comment: "11k",
            shares: "512",
          ),
          marginDivider(),
          PostCard(
              image: mammootty,
              profileName: "Mammootty",
              bluetick: true,
              // content: "What a night!!! What a game !!",
              time: "15 h",
              postImage: mammootty,
              like: "78.9k",
              comment: "2.1k",
              shares: "2k"),
          marginDivider(),
          SuggestSection(),
          marginDivider(),
          PostCard(
              image: dulqer,
              profileName: "Dulquer Salmaan",
              bluetick: true,
              // content: "What a night!!! What a game !!",
              time: "2 d",
              postImage: dq,
              like: "14k",
              comment: "447",
              shares: "87"),
          marginDivider(),
          PostCard(
              image: hotstar,
              profileName: "Disney+Hotstar",
              time: "4d",
              postImage: avatar,
              like: "1.2m",
              comment: "458k",
              shares: "2.1k"),
          marginDivider(),
          PostCard(
              image: hotstar,
              profileName: "Disney+Hotstar",
              time: "4d",
              postImage: black_widow,
              like: "4.2m",
              comment: "788k",
              shares: "5.1k"),
          marginDivider(),
          PostCard(
              image: hotstar,
              profileName: "Disney+Hotstar",
              time: "4d",
              postImage: cartoon,
              like: "371k",
              comment: "7k",
              shares: "230")
        ]),
      ),
    );
  }
}
