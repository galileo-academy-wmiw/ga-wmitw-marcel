import 'package:flutter/material.dart';
import 'dart:math' as math;

class Opleiding extends StatelessWidget {
  const Opleiding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Foto
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
                    offset: const Offset(5, 5), // changes position of shadow
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
                  'Educated...',
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
                  "Na de MAVO moest ik na gaan denken over een vervolgopleiding; doorstromen naar de HAVO of toch kiezen voor een beroepsopleiding? Ik was altijd wel een “hands-on” type, dus na het doorspitten van folders kwam ik terecht bij het NIMETO in Utrecht; een MBO etaleurs-/decorateursopleiding. Ik ben naar de open dag geweest en was gelijk verkocht. Het 3e jaar was een praktijkjaar. Ik heb in dat jaar bij 2 bedrijven gewerkt: Ter Meulen Rotterdam (warenhuis) op de decorateursafdeling en Arti '70 Leiden (standbouw) op de tekenkamer. Ik heb er veel vaardigheden opgedaan (o.a. technisch tekenen, maquette- en decorbouw en denken in oplossingen).\n\nNa het NIMETO wilde ik graag doorstuderen en heb ik me aangemeld bij de kunstacademie in Den Haag. Ik heb daar grafische vormgeving gestudeerd. De opleiding duurde 5 jaar, waarvan het laatste jaar een praktijkjaar was.\n\nEén van de vakken die gegeven werden was “ruimtelijke vormgeving”. Ik bleek daar aanleg voor te hebben en omdat de docent tevens directeur van een design-bureau was, heb ik gevraagd of ik daar stage mocht lopen. Dat beviel van beide kanten en al snel kreeg ik een contract aangeboden.\n",
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
