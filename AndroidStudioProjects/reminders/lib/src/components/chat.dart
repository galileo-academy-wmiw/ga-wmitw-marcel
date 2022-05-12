import 'package:flutter/material.dart';
import 'dart:math' as math;

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Foto
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
                  'Inspired...',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
          ],
        ),
        // Bodytekst
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
                child: Text(
                  "Hallo, mijn naam is Marcel en ik ben een creatieveling. Als kind kon ik uren bezig zijn met tekenen en knutselen. Inspiratie haalde ik uit strips, tijdschriften en tv-shows. Een creatieve opleiding was dan ook de logische keuze. Na eerst een decorateurs-opleiding te hebben gevolgd, ben ik uiteindelijk grafische vormgeving gaan studeren. \n\nNa een mooie carrière als grafisch vormgever is het tijd voor een nieuwe uitdaging. En omdat het creatieve bloed nog steeds kruipt waar het niet gaan kan, heb ik gekozen voor web-/app development. Ik volg daartoe nu een opleiding bij Galileo-academy.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
