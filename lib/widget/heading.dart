import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/color.dart';

class HeadingPage extends StatelessWidget {
  HeadingPage({this.title});
  String? title;
  @override
  Widget build(BuildContext context) {
    return Text(title!,
      style: TextStyle(
        color: Color(ColorStyle.fulgreen),
        fontSize: 25.0,
        fontWeight: FontWeight.w600,
      ),);
  }
}
