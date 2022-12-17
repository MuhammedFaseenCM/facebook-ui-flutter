import 'package:faceook/sections/widgets/childWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HeaderButtonSection extends StatelessWidget {
  const HeaderButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          textbuttons(icon: Icons.video_call, color: Colors.red, label: 'Live'),
          verticalLine(),
          textbuttons(
              icon: Icons.photo_library_rounded,
              color: Colors.green,
              label: 'Photo'),
          verticalLine(),
          textbuttons(
              icon: Icons.video_call, color: Colors.purple, label: 'Room')
        ],
      ),
    );
  }
}
