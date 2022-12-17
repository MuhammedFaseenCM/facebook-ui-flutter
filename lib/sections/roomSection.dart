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
          OutlinedButton.icon(
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
          )
        ],
      ),
    );
  }
}
