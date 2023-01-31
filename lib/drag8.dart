import 'package:flutter/material.dart';

import 'carter5.dart';
import 'carter6.dart';
import 'drag.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';


class Discription extends StatelessWidget {
  const Discription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar:
        PreferredSize(child: APPBAR(), preferredSize: Size.fromHeight(100.0)),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 40),
                child: TEXTTT(TEXTT: "DISCRIPION", COLORR: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.black,
                        ),
                        height: 400,
                        child: Padding(
                          padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                          child: ListView(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                "https://cdn.pixabay.com/photo/2017/08/22/11/55/linked-in-2668692__340.png",
                                fit: BoxFit.fill,
                                height: 180,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            const TEXTTT(
                                TEXTT:
                                "Navothanam, pourohithyam ,\n Haneef Kayakodi,",
                                COLORR: Colors.white,
                                FONTWHEIGHT: FontWeight.bold),
                            const SizedBox(height: 20),
                            const TEXTTT(
                                TEXTT:
                                "Navothan, paurohithyam moolyangalude yudham  Navothan, paurohithyam moolyangalude yudham prakyapichaNavothan, paurohithyam moolyangalude yudham prakyapicha ",
                                COLORR: Colors.white),
                            SizedBox(
                              width: 160,
                              height: 70,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton.icon(
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                      onPressed: () {},
                                      icon: const Icon(Icons.play_circle_outlined),
                                      label: Text('WATCH NOW')),
                                  const Button2(
                                    icon: Icons.add_circle_outline_rounded,
                                    name: "Hii",
                                  ),
                                  const Button2(
                                    icon: Icons.share_outlined,
                                    name: 'Share',
                                  )
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 255, top: 15),
                        child: TEXTTT(TEXTT: "RELATED", COLORR: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      ListviewMain()
                    ],
                  ),
                ),
              ),
            ],
            ),
    );
    }
}