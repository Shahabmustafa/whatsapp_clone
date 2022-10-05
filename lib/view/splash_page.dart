import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/color.dart';
import 'package:whatsapp_clone/view/register_page.dart';
import 'package:whatsapp_clone/view/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();
    _navigatotohome();
  }

  _navigatotohome()async{
    await Future.delayed(const Duration(milliseconds: 2500),(){});
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterPage()));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
              child: Image.asset('images/download.jpeg',height: 100.0,),
          ),
          Column(
            children: const <Widget> [
              Text('from',
                style: TextStyle(
                  color: Colors.grey,
                ),),
              Text('Facebook',style: TextStyle(letterSpacing: 2.0,fontSize: 20.0,color: Colors.green),)
            ],
          ),
        ],
      ),
    );
  }
}
