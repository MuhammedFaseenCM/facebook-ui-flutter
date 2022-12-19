import 'package:faceook/sections/Story%20Section/storyCard.dart';
import 'package:faceook/widgets/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: 'Add to Story',
            story: faseen,
            createStatus: true,
            avatar: faseen,
          ),
          StoryCard(
              labelText: "mammootty", story: mammootty, avatar: mammootty),
          StoryCard(labelText: "Prithviraj", story: mohanlal, avatar: raju),
          StoryCard(labelText: "mohanlal", story: fishing, avatar: mohanlal),
          StoryCard(
            labelText: "Ashwathy achu",
            story: dog,
            avatar: child,
          )
        ],
      ),
    );
  }
}
