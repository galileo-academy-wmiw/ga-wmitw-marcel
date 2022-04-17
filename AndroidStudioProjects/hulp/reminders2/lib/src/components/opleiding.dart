import 'dart:math' as math;

import 'package:flutter/material.dart';

class Opleiding extends StatelessWidget {
  const Opleiding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.asset('assets/images/wolken1.png'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200.0,
              width: 200.0,
              margin: const EdgeInsets.only(
                left: 25,
                top: 65,
                right: 25,
                bottom: 0,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 7,
                    offset: Offset(5, 5), // changes position of shadow
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
                child: const Text(
                  'Educated...',
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15.0,
                          color: Color.fromARGB(160, 0, 0, 0),
                        ),
                      ],
                      height: 1.3,
                      fontSize: 68,
                      fontFamily: 'WindSong',
                      fontWeight: FontWeight.w500,
                      color: Colors.indigo),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 25,
                  top: 290,
                  right: 25,
                  bottom: 0,
                ),
                child: const Text(
                  "Hallo, mijn naam is Marcel en ik ben een creatieveling. Als kind kon ik uren bezig zijn met tekenen en knutselen. Inspiratie haalde ik uit strips, tijdschriften en tv-shows. Een creatieve opleiding was dan ook de logische keuze. Na eerst een decorateurs-opleiding te hebben gevolgd, ben ik uiteindelijk grafische vormgeving gaan studeren. \n\nNa een mooie carrière als grafisch vormgever is het tijd voor een nieuwe uitdaging. En omdat het creatieve bloed nog steeds kruipt waar het niet gaan kan, heb ik gekozen voor web-/app development. Ik volg daartoe nu een opleiding bij Galileo-academy.",
                  style: TextStyle(height: 1.3, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
