import 'package:flutter/material.dart';
import 'dart:math' as math;


class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Titel
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 15,
                top: 0,
                right: 0,
                bottom: 0,
              ),
              child: Transform.rotate(
                angle: -math.pi / 12,
                child: Text(
                  "Let's chat...",
                  style: Theme.of(context).textTheme.headline1,
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
            padding: EdgeInsets.fromLTRB(20, 280, 20, 0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/login');
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
                        'Inloggen',
                        style: const TextStyle(
                            fontSize: 22, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/signup');
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
                        'Aanmelden',
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
