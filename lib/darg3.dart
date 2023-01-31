import 'package:flutter/material.dart';

class ChatHome extends StatelessWidget {
  const ChatHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 26,
      ),
      height: 300,
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: <Color>[
            Colors.black,
            Color.fromARGB(0, 85, 85, 100),
          ],
        ),
      ),
      child:
      Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Text(
          'ASSISTANCE',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(
          height: 80,
        ),
        ChatButtons(
          text: 'CALL',
          icon: Icons.call,
          color: Colors.black,
        ),
        SizedBox(
          height: 28,
        ),
        ChatButtons(
          text: 'CHAT',
          icon: Icons.whatsapp,
          color: Colors.green,
        )
      ]),
    );
  }
}



class ChatButtons extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  const ChatButtons(
      {required this.text, required this.icon, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 140,
        height: 37,
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(color: Colors.grey[300]),
                ),
                Icon(
                  icon,
                  color: color,
                ),
              ],
            )),
        );
    }
}