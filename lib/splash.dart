import 'package:flutter/material.dart';
import 'cater.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Future.delayed(Duration(seconds: 3),()=>Navigator.push(context,MaterialPageRoute(builder: (context) =>cater()),));
      return Scaffold(
        backgroundColor: Colors.black12,


      body:
    Center(


    child: Image.asset('assets/renii.png',width: 100,),


    ),








    );
  }
}




