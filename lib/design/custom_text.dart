import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
      required this.clr,
      required this.fw,
      required this.fs})
      : super(key: key);
  final String text;
  final Color clr;
  final FontWeight fw;
  final double fs;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: clr, fontSize: fs, fontWeight: fw),
    );
  }
}
