import 'package:faceook/sections/Post%20Section/bluetick.dart';
import 'package:faceook/sections/headerButtonSection.dart';
import 'package:faceook/sections/widgets/childWidgets.dart';
import 'package:faceook/widgets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostCard extends StatelessWidget {
  final String image;
  final String profileName;
  final String time;
  final String? content;
  final String postImage;
  final bool bluetick;
  final String like;
  final String comment;
  final String shares;
  const PostCard(
      {super.key,
      required this.image,
      required this.profileName,
      required this.time,
      required this.postImage,
      required this.like,
      required this.comment,
      required this.shares,
      this.bluetick = false,
      this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        header(),
        contentSection(),
        mainPost(),
        footer(),
        marginDivider(thickness: 1.0),
        HeaderButtonSection(
          buttonOne: textbuttons(
              icon: Icons.thumb_up_alt_outlined,
              color: Colors.grey,
              label: "Like"),
          buttonTwo: textbuttons(
              icon: Icons.message, color: Colors.grey, label: "Comments"),
          buttonThree:
              textbuttons(icon: Icons.send, color: Colors.grey, label: "Share"),
        ),
      ]),
    );
  }

  Widget header() {
    return ListTile(
        leading: storyCirclePic(image: image, status: false),
        title: Row(
          children: [
            Text(profileName),
            const SizedBox(
              width: 8.0,
            ),
            bluetick ? BlueTick() : SizedBox(),
          ],
        ),
        subtitle: Row(
          children: [
            Text(time),
            const SizedBox(
              width: 8.0,
            ),
            const Icon(
              Icons.public,
              size: 15.0,
            )
          ],
        ),
        trailing: IconButton(
          onPressed: () {
            print("more_horiz icon pressed");
          },
          icon: const Icon(Icons.more_horiz),
        ));
  }

  Widget contentSection() {
    return content != null && content != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(content!),
          )
        : SizedBox();
  }

  Widget mainPost() {
    return Container(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Image.asset(postImage),
    );
  }

  Widget footer() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  width: 18,
                  height: 18,
                  decoration: const BoxDecoration(
                      color: Colors.blue, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  )),
              const SizedBox(
                width: 5.0,
              ),
              textcount(like),
            ],
          ),
          Container(
            child: Row(
              children: [
                textcount("$comment comments"),
                SizedBox(
                  width: 8.0,
                ),
                textcount("$shares shares"),
                storyCirclePic(
                    image: image, status: false, width: 20.0, height: 20.0),
                IconButton(
                    onPressed: () {
                      print("Dropdown icon clicked");
                    },
                    icon: const Icon(Icons.arrow_drop_down))
              ],
            ),
          )
        ],
      ),
    );
  }
}
