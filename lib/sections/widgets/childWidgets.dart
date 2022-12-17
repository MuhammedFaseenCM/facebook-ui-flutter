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
