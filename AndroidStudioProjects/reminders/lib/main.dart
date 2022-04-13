import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants/theme.dart';
import 'dart:math' as math;


const Color myHexColor = Color(0xff123456);

void main() => runApp(const AppRoot());

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              title: SvgPicture.asset(
                'assets/images/logo.svg',
                height: 50,
                fit: BoxFit.fitHeight,
              ),
            leadingWidth: 100,
            centerTitle: true,
          ),
          body: const Center(
              child: TabBarView(
                children: [
                Home(),
                Opleiding(),
                Werk(),
                Hobbies(),
              ],
          )),
          bottomNavigationBar: Container(
            color: const Color(0xff00C9FF),
            child: const TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.indigo,
              indicatorWeight: 5,
              labelPadding: EdgeInsets.zero,
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Opleiding'),
                Tab(text: 'Werk'),
                Tab(text: 'Hobbies'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff00C9FF),
                Color(0xffFFFFFF),
              ]),
        ),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20),
            Stack(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child:
                        Image.asset('assets/images/wolken1.png'),
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
                          'Inspired...',
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
            ),
          ],
        ),
      ),
    );
  }
}

class Opleiding extends StatelessWidget {
  const Opleiding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff00C9FF),
                Color(0xffFFFFFF),
              ]),
        ),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20),
            Stack(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child:
                      Image.asset('assets/images/wolken1.png'),
                    ),
                  ],
                ),
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
                            offset: Offset(5, 5), // changes position of shadow
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage('assets/images/kabk-logo.jpg'),
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
                            offset: Offset(5, 5), // changes position of shadow
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage('assets/images/nimeto-logo.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
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
                        ),                        child: const Text(
                        "Na de MAVO moest ik na gaan denken over een vervolgopleiding; doorstromen naar de HAVO of toch kiezen voor een beroepsopleiding? Ik was altijd wel een “hands-on” type, dus na het doorspitten van folders kwam ik terecht bij het NIMETO in Utrecht; een MBO etaleurs-/decorateursopleiding. Ik ben naar de open dag geweest en was gelijk verkocht. Het 3e jaar was een praktijkjaar. Ik heb in dat jaar bij 2 bedrijven gewerkt: Ter Meulen Rotterdam (warenhuis) op de decorateursafdeling en Arti '70 Leiden (standbouw) op de tekenkamer. Ik heb er veel vaardigheden opgedaan (o.a. technisch tekenen, maquette- en decorbouw en denken in oplossingen).\n\nNa het NIMETO wilde ik graag doorstuderen en heb ik me aangemeld bij de kunstacademie in Den Haag. Ik heb daar grafische vormgeving gestudeerd. De opleiding duurde 5 jaar, waarvan het laatste jaar een praktijkjaar was.\n\nEén van de vakken die gegeven werden was “ruimtelijke vormgeving”. Ik bleek daar aanleg voor te hebben en omdat de docent tevens directeur van een design-bureau was, heb ik gevraagd of ik daar stage mocht lopen. Dat beviel van beide kanten en al snel kreeg ik een contract aangeboden.\n\n\n",
                        style: TextStyle(height: 1.3, fontSize: 16),
                      ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Werk extends StatelessWidget {
  const Werk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff00C9FF),
                Color(0xffFFFFFF),
              ]),
        ),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20),
            Stack(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child:
                      Image.asset('assets/images/wolken1.png'),
                    ),
                  ],
                ),
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
                            offset: Offset(5, 5), // changes position of shadow
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
                            offset: Offset(5, 5), // changes position of shadow
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
                          'Experienced...',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15.0,
                                  color: Color.fromARGB(160, 0, 0, 0),
                                ),
                              ],
                              height: 1.3,
                              fontSize: 58,
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
                          top: 280,
                          right: 25,
                          bottom: 0,
                        ),
                        child: const Text(
                          "M'n eerste echte baan was als junior ontwerper bij Stadium Design (inmiddels opgeheven); een bedrijf dat gespecialiseerd was in het ontwikkelen van verpakkingen (product-design, graphic-design, marketing). Ik heb daar 12 jaar gewerkt en heb in die tijd in alle disciplines gewerkt: werktekenen, doka-werk, dtp, graphic-design en verpakkingsdesign.\n\nJammer genoeg heb ik op een gegeven moment gezondheidsproblemen (rsi / burnout) ontwikkeld, waardoor ik in de WAO ben terechtgekomen. Omdat het ook mentaal niet goed ging, ben ik onderzocht bij de GGZ. Uit dat onderzoek bleek dat ik Asperger heb (een autismespectrum conditie); dat verklaarde veel.\n\nNa een lange herstelperiode ben ik vrijwilligerswerk gaan doen bij het plaatselijk asiel. Leuk om te doen en ook weer onder de mensen. Via via ben ik toen bij de dierenambulance terechtgekomen, op de administratie. Omdat het bloed kruipt waar het niet gaan kan, heb ik daar op eigen initiatief o.a. de website en een dierregistratieprogramma gemaakt. Na 11 jaar was de motivatie weg en ben ik daar weggegaan.\n\nMaar ja, thuiszitten is ook niks en na een lange zoektocht naar de juiste hulp, heb ik een jobcoach toegewezen gekregen van de gemeente. Na het in kaart brengen van m'n interessegebieden, werd ik gewezen op een andere creatieve richting: web-/app development. Ik had daar zelf nog helemaal niet aan gedacht, maar het is wel iets waar ik m'n creatieve ei helemaal in kwijt kan. M'n jobcoach is vervolgens voor me op zoek gegaan naar een passend opleidingsinstituut (dit in verband met m'n autisme).\n\nDat is gelukt en ik volg nu een leer-/werktraject bij Galileo-Academy tot web-/app developer. Een nieuwe uitdaging; ik heb er zin in!\n\n\n",
                          style: TextStyle(height: 1.3, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
    /*        Row(
              children: [
                  Expanded(
                      child: Image.asset('assets/images/logodesign.jpg'),
                    ),
                  Expanded(
                      child: Image.asset('assets/images/opvangprogramma.jpg'),
                    ),
                  Expanded(
                      child: Image.asset('assets/images/dago-website.jpg'),
                    ),
                  ],
                ), */
              ],
            ),
        ),
      );
  }
}

class Hobbies extends StatelessWidget {
  const Hobbies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff00C9FF),
                Color(0xffFFFFFF),
              ]),
        ),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20),
            Stack(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child:
                      Image.asset('assets/images/wolken1.png'),
                    ),
                  ],
                ),
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
                            offset: Offset(5, 5), // changes position of shadow
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage('assets/images/kat.jpg'),
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
                            offset: Offset(5, 5), // changes position of shadow
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
                          'Inquisitive...',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15.0,
                                  color: Color.fromARGB(160, 0, 0, 0),
                                ),
                              ],
                              height: 1.3,
                              fontSize: 58,
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
                          top: 280,
                          right: 25,
                          bottom: 0,
                        ),
                        child: const Text(
                          "Behalve dat ik graag met m'n werk bezig ben, heb ik ook veel hobbies. Tekenen/ schilderen, modelbouw, houtbewerking, grafische vormgeving, webdesign, you name it… Daarnaast hou ik van lezen, dieren (vooral katten) en nieuwe dingen leren.\n\nEn hoewel ik autisme heb, beperk ik me niet tot één ding. Meestal kies ik iets dat me interesseert, ga er dan lange tijd helemaal in op, totdat het volgende “interessants” zich aandient. Lange tijd was dat grafisch werk. Op dit moment is m'n primaire hobby “houtbewerking”.\n\nIk ben altijd al graag met m'n handen bezig geweest en een paar jaar geleden heb ik een houtdraaibank gekocht om me in het houtdraaien te bekwamen. Voor mij een manier om lekker te ontspannen.\n\n\n",
                          style: TextStyle(height: 1.3, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            /*        Row(
              children: [
                  Expanded(
                      child: Image.asset('assets/images/logodesign.jpg'),
                    ),
                  Expanded(
                      child: Image.asset('assets/images/opvangprogramma.jpg'),
                    ),
                  Expanded(
                      child: Image.asset('assets/images/dago-website.jpg'),
                    ),
                  ],
                ), */
          ],
        ),
      ),
    );
  }
}