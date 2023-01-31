import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  final String name;
  final IconData icon;
  const Button2({required this.icon, required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: Icon(
              icon,
              color: Colors.amber[200],
            ),
          ),
          Text(
            name,
            style: TextStyle(color: Colors.amber[200], fontSize: 13),
          )
          ],
        );
  }
}