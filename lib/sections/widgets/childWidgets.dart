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

Widget storyCirclePic({required String image}) {
  return Stack(children: [
    ClipRRect(
        borderRadius: BorderRadius.circular(100), child: Image.asset(image)),
    Positioned(
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
    )
  ]);
}
