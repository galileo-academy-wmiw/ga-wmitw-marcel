import 'package:flutter/material.dart';
import 'dart:math' as math;

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
                left: 0,
                top: 15,
                right: 0,
                bottom: 0,
              ),
              child: Transform.rotate(
                angle: -math.pi / 12,
                child: Text(
                  'Wanna chat?',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
          ],
        ),
        // Foto
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              margin: const EdgeInsets.only(
                left: 25,
                top: 85,
                right: 25,
                bottom: 0,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 7,
                    offset: const Offset(5, 5), // changes position of shadow
                  ),
                ],
                image: const DecorationImage(
                  image: AssetImage('assets/images/pasfoto.jpg'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        // Knoppen
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 280),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('Login');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff00C9FF), Colors.indigo]),
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      width: 280,
                      height: 40,
                      alignment: Alignment.center,
                      child: const Text(
                        'Login',
                        style: const TextStyle(
                            fontSize: 22, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Sign up');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff00C9FF), Colors.indigo]),
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      width: 280,
                      height: 40,
                      alignment: Alignment.center,
                      child: const Text(
                        'Sign up',
                        style: const TextStyle(
                            fontSize: 22, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // ElevatedButton.icon(
        //   onPressed: () {},
        //   label: const Text('Inloggen'),
        //   icon: const Icon(Icons.login_rounded),
        // ),
      ],
    );
  }
}
