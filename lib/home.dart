import 'package:faceook/sections/headerButtonSection.dart';
import 'package:faceook/sections/roomSection.dart';
import 'package:faceook/sections/storySections.dart';
import 'package:faceook/sections/widgets/childWidgets.dart';
import 'package:faceook/widgets/appBarDesign.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
            AppBarButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print('Search button clicked');
                }),
            AppBarButton(
              buttonIcon: Icons.chat,
              buttonAction: () => print('Messenger button clicked'),
            )
          ],
        ),
        body: ListView(children: [
          StorySection(),
          marginDivider(thickness: 1.0),
          HeaderButtonSection(),
          marginDivider(),
          RoomSection(),
          marginDivider(thickness: 1.0)
        ]),
      ),
    );
  }
}
