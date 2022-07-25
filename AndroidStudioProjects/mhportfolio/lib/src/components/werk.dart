import 'dart:math' as math;
import 'package:flutter/material.dart';

class Werk extends StatelessWidget {
  const Werk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Foto's
        Stack(
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              margin: const EdgeInsets.only(
                left: 65,
                top: 100,
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
                  image: AssetImage('assets/images/stadiumdesign2.jpg'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            Container(
              height: 150.0,
              width: 150.0,
              margin: const EdgeInsets.only(
                left: 180,
                top: 70,
                right: 65,
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
                  image: AssetImage('assets/images/stadiumdesign.jpg'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
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
                  'Experienced...',
                  style: Theme.of(context).textTheme.headline2,
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
                  "M'n eerste echte baan was als junior ontwerper bij Stadium Design (inmiddels opgeheven); een bedrijf dat gespecialiseerd was in het ontwikkelen van verpakkingen (product-design, graphic-design, marketing). Ik heb daar 12 jaar gewerkt en heb in die tijd in alle disciplines gewerkt: werktekenen, doka-werk, dtp, graphic-design en verpakkingsdesign.\n\nJammer genoeg heb ik op een gegeven moment gezondheidsproblemen (rsi / burnout) ontwikkeld, waardoor ik in de WAO ben terechtgekomen. Omdat het ook mentaal niet goed ging, ben ik onderzocht bij de GGZ. Uit dat onderzoek bleek dat ik Asperger heb (een autismespectrum conditie); dat verklaarde veel.\n\nNa een lange herstelperiode ben ik vrijwilligerswerk gaan doen bij het plaatselijk asiel. Leuk om te doen en ook weer onder de mensen. Via via ben ik toen bij de dierenambulance terechtgekomen, op de administratie. Omdat het bloed kruipt waar het niet gaan kan, heb ik daar op eigen initiatief o.a. de website en een dierregistratieprogramma gemaakt. Na 11 jaar was de motivatie weg en ben ik daar weggegaan.\n\nMaar ja, thuiszitten is ook niks en na een lange zoektocht naar de juiste hulp, heb ik een jobcoach toegewezen gekregen van de gemeente. Na het in kaart brengen van m'n interessegebieden, werd ik gewezen op een andere creatieve richting: web-/app development. Ik had daar zelf nog helemaal niet aan gedacht, maar het is wel iets waar ik m'n creatieve ei helemaal in kwijt kan. M'n jobcoach is vervolgens voor me op zoek gegaan naar een passend opleidingsinstituut (dit in verband met m'n autisme).\n\nDat is gelukt en ik volg nu een leer-/werktraject bij Galileo-Academy tot web-/app developer. Een nieuwe uitdaging; ik heb er zin in!\n",
                   style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
        // Foto's
        Padding(
          padding: const EdgeInsets.only(
              left: 12.0,
              top: 1210.0,
              right: 12.0,
              bottom: 12.0),
          child: GridView.count(
            physics: const ScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 0.76,
            children:[
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const WerkDetail1();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 7,
                        offset: const Offset(5, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Hero(
                    tag: 'werkDetail1',
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/logodesign.jpg'),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const WerkDetail2();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 7,
                        offset: const Offset(5, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/opvangprogramma.jpg'),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const WerkDetail3();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 7,
                        offset: const Offset(5, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/dago-website.jpg'),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const WerkDetail4();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 7,
                        offset: const Offset(5, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/jaarverslag.jpg'),
                    ],
                  ),
                ),
              ),
            ],
            padding: const EdgeInsets.all(10),
            shrinkWrap: true,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
        ),
      ],
    );
  }
}

class WerkDetail1 extends StatelessWidget {
  const WerkDetail1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            left: 24.0,
            top: 70.0,
            right: 24.0,
            bottom: 24.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 7,
                  offset: const Offset(5, 5), // changes position of shadow
                ),
              ],
            ),
            child: Image.asset('assets/images/logodesign.jpg'),
          ),
        ),
      ),
    );
  }
}
class WerkDetail2 extends StatelessWidget {
  const WerkDetail2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            left: 24.0,
            top: 70.0,
            right: 24.0,
            bottom: 24.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 7,
                  offset: const Offset(5, 5), // changes position of shadow
                ),
              ],
            ),
            child: Image.asset('assets/images/opvangprogramma.jpg'),
          ),
        ),
      ),
    );
  }
}
class WerkDetail3 extends StatelessWidget {
  const WerkDetail3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            left: 24.0,
            top: 70.0,
            right: 24.0,
            bottom: 24.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 7,
                  offset: const Offset(5, 5), // changes position of shadow
                ),
              ],
            ),
            child: Image.asset('assets/images/dago-website.jpg'),
          ),
        ),
      ),
    );
  }
}
class WerkDetail4 extends StatelessWidget {
  const WerkDetail4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            left: 24.0,
            top: 70.0,
            right: 24.0,
            bottom: 24.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 7,
                  offset: const Offset(5, 5), // changes position of shadow
                ),
              ],
            ),
            child: Image.asset('assets/images/jaarverslag.jpg'),
          ),
        ),
      ),
    );
  }
}
