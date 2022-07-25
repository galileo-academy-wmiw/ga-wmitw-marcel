import 'dart:math' as math;
import 'package:flutter/material.dart';

class Hobbies extends StatelessWidget {
  const Hobbies({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/schilderij.jpg'),
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
                  image: AssetImage('assets/images/camera.jpg'),
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
                  'Inquisitive...',
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
                  "Behalve dat ik graag met m'n werk bezig ben, heb ik ook veel hobbies. Tekenen/ schilderen, modelbouw, houtbewerking, grafische vormgeving, webdesign, you name it… Daarnaast hou ik van lezen, dieren (vooral katten) en nieuwe dingen leren.\n\nEn hoewel ik autisme heb, beperk ik me niet tot één ding. Meestal kies ik iets dat me interesseert, ga er dan lange tijd helemaal in op, totdat het volgende “interessants” zich aandient. Lange tijd was dat grafisch werk. Op dit moment is m'n primaire hobby “houtbewerking”.\n\nIk ben altijd al graag met m'n handen bezig geweest en een paar jaar geleden heb ik een houtdraaibank gekocht om me in het houtdraaien te bekwamen. Voor mij een manier om lekker te ontspannen.\n",
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
              top: 720.0,
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
                  return const HobbieDetail1();
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
                  tag:'hobbieDetail1',
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/tardis.jpg'),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HobbieDetail2();
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
                  tag: 'hobbieDetail2',
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/zandloper.jpg'),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HobbieDetail3();
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
                  tag: 'hobbieDetail3',
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/wandlampje.jpg'),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HobbieDetail4();
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
                  tag: 'hobbieDetail4',
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/kat.jpg'),
                    ],
                  ),
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

class HobbieDetail1 extends StatelessWidget {
  const HobbieDetail1({super.key});

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
              child: Image.asset('assets/images/tardis.jpg'),
          ),
        ),
      ),
    );
  }
}
class HobbieDetail2 extends StatelessWidget {
  const HobbieDetail2({super.key});

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
            child: Image.asset('assets/images/zandloper.jpg'),
          ),
        ),
      ),
    );
  }
}
class HobbieDetail3 extends StatelessWidget {
  const HobbieDetail3({super.key});

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
            child: Image.asset('assets/images/wandlampje.jpg'),
          ),
        ),
      ),
    );
  }
}
class HobbieDetail4 extends StatelessWidget {
  const HobbieDetail4({super.key});

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
            child: Image.asset('assets/images/kat.jpg'),
          ),
        ),
      ),
    );
  }
}


