import 'package:faceook/sections/widgets/childWidgets.dart';
import 'package:faceook/widgets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SuggestSection extends StatelessWidget {
  const SuggestSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(children: [
        ListTile(
          leading: Text("People you may know"),
          trailing: IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
            color: Colors.grey[700],
          ),
        ),
        Container(
          height: 340,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              suggestionCard(
                  image: kohli, mutualFriends: "598", userName: "Virat kohli"),
              suggestionCard(
                  image: child, mutualFriends: "41", userName: "Lakshmi lachu"),
              suggestionCard(
                  image: hotstar,
                  userName: "Disney+hotstar",
                  mutualFriends: "230")
            ],
          ),
        )
      ]),
    );
  }
}
