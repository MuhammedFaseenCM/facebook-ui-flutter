import 'package:faceook/widgets/assets.dart';
import 'package:flutter/material.dart';

Widget textbuttons({required icon, required color, required label}) {
  return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: color,
      ),
      label: Text(
        label,
        style: TextStyle(color: Colors.black),
      ));
}

Widget suggestionCard(
    {required image, required userName, required mutualFriends}) {
  return Container(
    width: 300,
    margin: const EdgeInsets.only(right: 20.0, left: 10.0),
    child: Stack(
      children: [
        suggestionImage(image: image),
        suggestionInfo(mutualFriends: mutualFriends, userName: userName)
      ],
    ),
  );
}

Widget suggestionInfo(
    {required String userName, required String mutualFriends}) {
  return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 140,
        decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border.all(
              width: 1,
              color: Color.fromARGB(255, 226, 223, 223),
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Column(
          children: [
            ListTile(
              title: Text(userName),
              subtitle: Text("$mutualFriends mutual friends"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      print("Add button clicked");
                    },
                    icon: Icon(Icons.person_add),
                    label: Text("Add friend")),
                ElevatedButton.icon(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {
                      print("Remove button clicked");
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                    label: Text(
                      " Remove",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            )
          ],
        ),
      ));
}

Widget suggestionImage({
  required image,
}) {
  return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: Image.asset(
          image,
          height: 250,
          fit: BoxFit.cover,
        ),
      ));
}

Widget marginDivider({thickness}) {
  return Divider(
    thickness: thickness ?? 10,
    color: Colors.grey[300],
  );
}

Widget verticalLine() {
  return VerticalDivider(
    thickness: 1,
    color: Colors.grey[300],
  );
}

Widget storyCirclePic(
    {required String image,
    required bool status,
    bool border = false,
    double width = 50.0,
    double height = 50.0}) {
  return Stack(children: [
    Container(
      decoration: BoxDecoration(
          border: border
              ? Border.all(color: Colors.blueAccent, width: 2.0)
              : Border(),
          shape: BoxShape.circle),
      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            image,
            width: width,
            height: height,
            fit: BoxFit.fitWidth,
          )),
    ),
    status == false
        ? const SizedBox()
        : Positioned(
            bottom: 0,
            right: 1.0,
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2.0)),
            ),
          ),
  ]);
}

Widget textcount(like) {
  return Text(
    like,
    style: TextStyle(color: Colors.grey[700]),
  );
}
