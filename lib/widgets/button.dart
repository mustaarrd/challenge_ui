import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color backGroundColor;
  final Color foreGroundColor;

  const MyButton(
      {super.key,
      required this.text,
      required this.backGroundColor,
      required this.foreGroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: backGroundColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 45,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: foreGroundColor,
          ),
        ),
      ),
    );
  }
}
