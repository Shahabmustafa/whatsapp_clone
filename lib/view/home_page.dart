import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/color.dart';
import 'package:whatsapp_clone/view/register_page.dart';
import 'package:whatsapp_clone/widget/heading.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HeadingPage(
               title: 'Welcome to Whatsapp',
           ),
            Image.asset('images/image.png',
            height: 300,),
            Column(
              children: [
                  Column(
                    children: const [
                      Text('Read our Privacy Policy Tap "Agree and Continou" to accept the Team of Service',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.0
                      ),),
                    ],
                  ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(ColorStyle.greenlight),
                          padding: EdgeInsets.symmetric(horizontal: 70.0,vertical: 16.0),
                        ),
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                        },
                        child: const Text('AGREE AND CONTINUE',
                          style: TextStyle(
                            color: Colors.white,
                          ),))
                  ],
                ),
              ],
            ),
            Column(
              children: const [
                Text('form'),
                SizedBox(
                  height: 10.0,
                ),
                Text('FACEBOOK',
                  style: TextStyle(
                      color: Color(ColorStyle.green),
                    fontSize: 15.0,
                    letterSpacing: 3.0,
                    fontWeight: FontWeight.w600
                  ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
