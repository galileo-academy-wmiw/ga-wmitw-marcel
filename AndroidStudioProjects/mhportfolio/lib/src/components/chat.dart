import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../local_imports.dart';


class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Titel
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 50,
                top: 15,
                right: 0,
                bottom: 0,
              ),
              child: Transform.rotate(
                angle: -math.pi / 12,
                child: Text(
                  "Let's chat...",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
          ],
        ),
        // Knoppen
        Container(
          padding: EdgeInsets.fromLTRB(20, 280, 20, 0),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut().then((value) {
                  print("Signed Out");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                });
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff00C9FF), Colors.indigo]),
                    borderRadius: BorderRadius.circular(25)),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    'Uitloggen',
                    style: const TextStyle(
                        fontSize: 22, fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
