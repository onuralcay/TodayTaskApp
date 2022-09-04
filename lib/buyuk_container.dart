import 'package:flutter/material.dart';
import 'package:flutter_application_2/second_screen.dart';

import 'colors.dart';

class Sircular extends StatelessWidget {
  const Sircular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: MediaQuery.of(context).size.width - 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromARGB(255, 215, 223, 246)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your daily plan\nalmost done.\nFighting!",
                      style: TextStyle(
                          color: RenkTheme().aciklamaColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text("4 of 6 completed",
                        style: TextStyle(color: RenkTheme().aciklamaColor))
                  ],
                ),
                const YuzdeWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
