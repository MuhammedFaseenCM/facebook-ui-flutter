import 'package:faceook/sections/widgets/childWidgets.dart';
import 'package:faceook/widgets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10.0),
        children: [
          roomButton(),
          storyCirclePic(image: faseen),
          storyCirclePic(image: raju),
          storyCirclePic(image: mammootty),
          storyCirclePic(image: mohanlal),
          storyCirclePic(image: faseen),
          storyCirclePic(image: raju)
        ],
      ),
    );
  }
}

Widget roomButton() {
  return OutlinedButton.icon(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        const StadiumBorder(),
      ),
    ),
    onPressed: () {},
    icon: const Icon(
      Icons.video_call,
      color: Colors.purple,
    ),
    label: const Text(
      'Create\nRoom',
      style: TextStyle(color: Colors.blue),
      textAlign: TextAlign.center,
    ),
  );
}
