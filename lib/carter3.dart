import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reniapp/carter4.dart';

import 'carter5.dart';
import 'carter7.dart';

class Listview1 extends StatelessWidget {
  const Listview1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        padding: EdgeInsets.only(bottom: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
            children: [
              Column(
                children: [
                  BlackContainer(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 18),
                child: InkWell(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BlackContainer()));
                  }),
                  child: Text(
                    "CATEGORIES",
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 202, 168, 66)),
                  ),
                ),
              ),
              SizedBox(height: 15),
              containeer(TEXTTT: "MOST VIEWED", COLORR: Colors.white),
              //  ListviewMain(),

              const SizedBox(height: 19),
              const containeer(
                TEXTTT: "TRENDING",
                COLORR: Colors.white,
              ),
              SizedBox(height: 15),
              containeer(TEXTTT: "FIQH", COLORR: Colors.white),
              // Example()
              SizedBox(height: 15),
    ]),
    );
  }
}