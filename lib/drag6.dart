import 'package:flutter/material.dart';

class RadioHome extends StatelessWidget {
  const RadioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/radiobg.png',
                height: 40,
                color: Colors.amber[200],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  ('RADIO'),
                  style: TextStyle(color: Colors.amber[200], fontSize: 40),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'COMING SOON',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(
            height: 2,
          ),
          Image.asset(
            'assets/LoadingImages.png',
            width: 170,
            color: Colors.white,
          )
          ],
        );
    }
}