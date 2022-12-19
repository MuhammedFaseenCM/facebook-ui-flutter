import 'package:faceook/sections/widgets/childWidgets.dart';
import 'package:faceook/widgets/appBarDesign.dart';
import 'package:faceook/widgets/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStatus;
  const StoryCard(
      {super.key,
      required this.labelText,
      required this.story,
      required this.avatar,
      this.createStatus = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15.0)),
      child: Stack(
        children: [
          Positioned(
              bottom: 170,
              right: 90,
              left: 0,
              top: 2,
              child: createStatus
                  ? CircularButton(
                      buttonIcon: Icons.add,
                      buttonAction: () {
                        print("Add story");
                      },
                      IconColor: Colors.blue,
                    )
                  : storyCirclePic(
                      image: avatar,
                      status: false,
                      border: true,
                      width: 35.0,
                      height: 35.0)),
          Positioned(
              bottom: 0,
              left: 20,
              child: Text(
                labelText,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
