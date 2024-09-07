import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: <Widget>[
          // Stroked text with gradient as border.
          Center( // Align the first text in the center of the screen
            child: Text(
              'The League of Navigators',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Times New Roman',
                foreground: Paint()
                  ..shader = const LinearGradient(
                    colors: [
                      Color.fromARGB(174, 237, 35, 62),
                      Color.fromARGB(255, 23, 23, 23),
                    ],
                  ).createShader(
                    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                  ),
              ),
              textAlign: TextAlign.center, // Center the text horizontally
            ),
          ),

          // Text at the bottom of the screen.
         const  Positioned(
            bottom: 10,
            left: 5,
            right: 5,
            child: Text(
              'Navigate Effortlessly, Explore Limitlessly!!!',
              style: const TextStyle(
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 236, 83, 83),
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ]
    );
  }
}