import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:whatsapp_clone/view/home_screen.dart';
import 'package:whatsapp_clone/widget/heading.dart';

class VerifyCodePage extends StatefulWidget {
  const VerifyCodePage({Key? key, required String verificationId}) : super(key: key);

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0,
              horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingPage(
                        title: 'Verify +923112445554',
                      ),
                      Icon(Icons.more_vert),
                    ],
                  ),
                  SizedBox(height: 40.0,),
                  const Text('waiting to automatically detect an SMS sent to +123456789.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17.0,
                    ),),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        VerificationCode(
                            length: 6,
                            keyboardType: TextInputType.number,
                            onCompleted: (value){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                            },
                            onEditing: (value){}
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Enter 6-digits Code'),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: const [
                            Icon(Icons.message),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text('Resend SMS',
                            style: TextStyle(
                              fontSize: 17.0
                            ),)
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: const [
                            Icon(Icons.phone),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text('Call Me',
                              style: TextStyle(
                                  fontSize: 17.0
                              ),)
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
