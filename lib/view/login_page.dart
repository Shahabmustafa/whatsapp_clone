import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/color.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Column(
              children: [
                Text('Welcome to Whatsapp',
                style: TextStyle(
                  color: Color(0xFF558B2F),
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
