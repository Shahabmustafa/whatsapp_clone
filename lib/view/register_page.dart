import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:whatsapp_clone/view/verify_code.dart';
import 'package:whatsapp_clone/widget/heading.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/color.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _phoneNumberController = TextEditingController();
  final firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
             Column(
               children: [
                 HeadingPage(
                   title: 'Verify your phone number',
                 ),
                 const SizedBox(
                   height: 30.0,
                 ),
                 const Text('WhatsApp will send an SMS Message to verify your phone number.Enter your country code and phone number.',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                       fontSize: 15.0
                   ),),
                 const SizedBox(
                   height: 30.0,
                 ),
                 Column(
                   children: <Widget>[
                     InternationalPhoneNumberInput(
                       textFieldController: _phoneNumberController,
                         onInputChanged: (value){
                         }),
                   ],
                 ),
               ],
             ),
              Column(
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(ColorStyle.greenlight),
                        padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 15.0),
                      ),
                      onPressed: ()async{
                        await firebaseAuth.verifyPhoneNumber(
                          phoneNumber: _phoneNumberController.text,
                            verificationCompleted: (_){},
                            verificationFailed: (e){
                            print("Error : ${e.toString()}");
                            },
                            codeSent: (String verificationId,int? token){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VerifyCodePage(verificationId: verificationId,)));
                            },
                            codeAutoRetrievalTimeout: (e){
                            print("Error : ${e.toString()}");
                            },
                        );
                      },
                      child: const Text('Next',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Carrier SMS charge may apply'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
