import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Colors.purpleAccent,
            Color.fromRGBO(232, 230, 236, 1),
          ],
          begin: startAlignment,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
