import 'package:faceook/sections/widgets/childWidgets.dart';
import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;
  final bool vertLine;
  // final Color buttonColor;
  // final String label;
  // final Icon buttonicon;
  const HeaderButtonSection(
      {super.key,
      required this.buttonOne,
      required this.buttonTwo,
      required this.buttonThree,
      this.vertLine = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          vertLine ? verticalLine() : SizedBox(),
          buttonTwo,
          vertLine ? verticalLine() : SizedBox(),
          buttonThree
        ],
      ),
    );
  }
}

class buttons extends StatelessWidget {
  const buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
