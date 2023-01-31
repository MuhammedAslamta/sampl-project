import 'package:flutter/material.dart';

import 'carter3.dart';
import 'darg3.dart';
import 'drag6.dart';
import 'drag8.dart';



class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final pages = [
    const Listview1(),
    // Categories(),

    RadioHome(),
    ChatHome(),
    Discription()

    //Listview2(),
    // Listview3(),
    //  Listview4()
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/retvappbar1.png",
                width: 150,
              ),
              const Icon(
                Icons.search,
                color: Colors.amber,
                size: 40,
              ),
            ],
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: <Color>[
                  Colors.black,
                  Colors.blueGrey,
                ],
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: selectedIndexNotifier,
            builder: (BuildContext context, int updatedIndex, _) {
              return pages[updatedIndex];
            },
          ),
        ),
        bottomNavigationBar: ValueListenableBuilder(
            valueListenable: selectedIndexNotifier,
            builder: (BuildContext ctx, int updatedIndex, _) {
              return Container(
                  margin: const EdgeInsets.only(left: 17, right: 17),
                  // height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(85, 85, 85, 100),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 20,
                      ),
                      child: GNav(
                        color: Colors.white,
                        gap: 7,
                        onTabChange: (as) {
                          selectedIndexNotifier.value = as;
                        },
                        activeColor: Colors.white,
                        // backgroundColor: Colors.amber,
                        backgroundColor: const Color.fromARGB(0, 85, 85, 100),
                        selectedIndex: updatedIndex,
                        tabBackgroundColor: Colors.black,
                        padding: const EdgeInsets.all(5),
                        tabs: [
                          GButton(
                            icon: Icons.home_outlined,
                            text: 'HOME',
                            iconColor: Colors.white,
                            textColor: Colors.yellow[600],
                            iconActiveColor: Colors.yellow[600],
                          ),
                          GButton(
                            icon: Icons.radio_outlined,
                            text: 'RADIO',
                            textColor: Colors.yellow[600],
                            iconActiveColor: Colors.yellow[600],
                          ),
                          GButton(
                            icon: Icons.chat_outlined,
                            text: 'CHAT',
                            textColor: Colors.yellow[600],
                            iconActiveColor: Colors.yellow[600],
                          ),
                          GButton(
                            icon: Icons.person_outline_sharp,
                            text: 'ACCOUNT',
                            textColor: Colors.yellow[600],
                            iconActiveColor: Colors.yellow[600],
                          ),
                        ],
                      )));
              }));
  }
}