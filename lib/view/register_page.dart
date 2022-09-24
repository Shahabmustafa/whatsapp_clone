import 'package:whatsapp_clone/widget/heading.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/color.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String title ='Code';
  String flag = 'Flag';
  String name = 'name';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              HeadingPage(
                title: 'Verify your phone number',
              ),
              SizedBox(
                height: 30.0,
              ),
              Text('WhatsApp will send an SMS Message to verify your phone number.Enter your country code and phone number.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0
              ),),
              SizedBox(
                height: 30.0,
              ),
              Column(
                children: <Widget>[
                  Text('+$title $flag $name',
                    style: const TextStyle(
                        fontSize: 20.0
                    ),),
                  TextButton(onPressed: (){
                    showCountryPicker(
                        context: context,
                        countryListTheme: const CountryListThemeData(
                            inputDecoration: InputDecoration(
                              hintText: 'Search',
                            )
                        ),
                        favorite: ['pk'],
                        onSelect: (Country value){
                          title = value.phoneCode.toString();
                          flag =value.flagEmoji.toString();
                          name = value.name.toString();
                          setState(() {
                          });
                        });
                  }, child:const Text('Select Your Country'),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your Number',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(ColorStyle.greenlight),
                        padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
                      ),
                      onPressed: (){

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
                  Text('Carrier SMS charge may apply')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
