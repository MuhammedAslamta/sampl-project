import 'package:flutter/material.dart';

import 'carter3.dart';
import 'cater2.dart';

class cater extends StatelessWidget {
  const cater({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        actions: [
          Icon(Icons.search,color: Colors.amber,size: 40,),

        ],
        backgroundColor: Colors.black12,
        title: Image.asset('assets/appbar.png',width: 120,),
      ),

      backgroundColor: Colors.black,

        body: Column(
          children: [
           PageViewDemo(),
                Listview1(),


          ],
        ),






        



    );
  }
}
