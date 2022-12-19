import 'package:faceook/sections/widgets/childWidgets.dart';
import 'package:faceook/widgets/assets.dart';
import 'package:flutter/material.dart';

class AddPostSection extends StatelessWidget {
  const AddPostSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: storyCirclePic(image: faseen, status: false),
      title: const TextField(
        decoration: InputDecoration(
            hintText: "What's on your mind?",
            hintStyle: TextStyle(color: Colors.black),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none),
      ),
    );
  }
}
