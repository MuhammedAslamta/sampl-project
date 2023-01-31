import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/basic.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

import 'carter5.dart';
import 'carter6.dart';
import 'drag.dart';

class Categories extends StatelessWidget {
  Categories({super.key});
  final list = [
    "https://cdn.pixabay.com/photo/2015/03/22/17/28/rings-684944__340.jpg",
    "https://cdn.pixabay.com/photo/2014/11/13/06/10/boy-529065__340.jpg",
    "https://cdn.pixabay.com/photo/2020/05/26/07/43/sea-5221913__340.jpg",
    // "https://cdn.pixabay.com/photo/2017/04/15/12/08/chain-2232278__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/26/16/59/horse-1354791__340.jpg",
    "https://cdn.pixabay.com/photo/2022/09/08/09/10/rings-7440500__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/26/16/59/horse-1354791__340.jpg",
    "https://cdn.pixabay.com/photo/2022/09/08/09/10/rings-7440500__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg",
    "https://cdn.pixabay.com/photo/2015/03/22/17/28/rings-684944__340.jpg",
    "https://cdn.pixabay.com/photo/2014/11/13/06/10/boy-529065__340.jpg",
    "https://cdn.pixabay.com/photo/2020/05/26/07/43/sea-5221913__340.jpg",
    // "https://cdn.pixabay.com/photo/2017/04/15/12/08/chain-2232278__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/26/16/59/horse-1354791__340.jpg",
    "https://cdn.pixabay.com/photo/2022/09/08/09/10/rings-7440500__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/26/16/59/horse-1354791__340.jpg",
    "https://cdn.pixabay.com/photo/2022/09/08/09/10/rings-7440500__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar:
        PreferredSize(child: APPBAR(), preferredSize: Size.fromHeight(100.0)),
        body: ListView(children: [
          Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Container(
                height: 170,
                //  color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                        child: TEXTTT(
                            TEXTT: "CATEGORIES",
                            COLORR: Color.fromARGB(255, 202, 168, 66)),
                      ),
                      ListviewMain(),
                    ]),
              )),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
          ),
          //child:
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            // height: 1200,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.count(
                physics: BouncingScrollPhysics(),
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,

                // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                // crossAxisCount: 2,
                //   crossAxisSpacing: 10,
                //    mainAxisSpacing: 10,
                childAspectRatio: 1 / .9,
                children: List.generate(
                  list.length,
                      (index) => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        list[index],
                        fit: BoxFit.fill,
                      )),
                ),
              ),
            ),
          ),

          //)
        ]),
        );
  }
}