import 'package:flutter/material.dart';
import 'dart:math' as math;

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Titel
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                top: 0,
                right: 0,
                bottom: 0,
              ),
              child: Transform.rotate(
                angle: -math.pi / 12,
                child: Text(
                  'Sign up...',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
