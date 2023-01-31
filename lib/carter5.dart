import 'package:flutter/material.dart';

import 'carter6.dart';


class TEXTTT extends StatelessWidget {
  // final Image icon;
  final String TEXTT;
  final Color COLORR;
  final FontWeight ?FONTWHEIGHT;
  const TEXTTT({
    required this.TEXTT,
    super.key,
    required this.COLORR,  this.FONTWHEIGHT,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      TEXTT,
      style:
      TextStyle(color: COLORR, fontSize: 14, fontWeight: FONTWHEIGHT),
    );
  }
}

class containeer extends StatelessWidget {
  final String TEXTTT;
  final Color COLORR;
  const containeer({super.key, required this.TEXTTT, required this.COLORR});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.black,
      ),
      height: 170,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 17, top: 10),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  TEXTTT,
                  style: TextStyle(color: COLORR),
                )),
            ListviewMain(),
          ],
        ),
      ),
    );
  }
}
