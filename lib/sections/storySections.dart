import 'package:faceook/widgets/assets.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(100), child: Image.asset(faseen)),
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
