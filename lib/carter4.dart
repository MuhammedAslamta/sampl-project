import 'package:flutter/material.dart';

import 'cater2.dart';


    class BlackContainer extends StatelessWidget {
        const BlackContainer({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
            Size size = MediaQuery
                .of(context)
                .size;
            return SafeArea(
                child: Container(
                    margin: EdgeInsets.only(
                        top: 15,
                    ),
                    height: 200,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                        children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 10),
                                child: Column(
                                    children: [
                                        Row(
                                            children: const [
                                                Text(
                                                    "RECENT UPLOADS",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 13,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ],
                                ),
                            ),
                            Container(
                                height: 170,
                                width: size.width,
                                child: PageViewDemo(),
                            )
                            //),
                        ],
                    ),
                ),

            );
        }



  }



