import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants/theme.dart';

const Color myHexColor = Color(0xff123456);

void main() => runApp(AppRoot());

class AppRoot extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(title: SvgPicture.asset('assets/images/logo.svg', height: 40, fit: BoxFit.fitHeight,), centerTitle: true ),
              bottomNavigationBar: TabBar(
                indicatorColor: Colors.indigo,
                labelColor: Colors.black,
                tabs: [
                  Tab(icon: Icon(Icons.home_filled)),
                  Tab(text: 'opleiding'),
                  Tab(text: 'werk'),
                  Tab(text: 'hobbies'),
                  Tab(text: 'contact'),
                ],
              ),
              body: Center(
                child: TabBarView(
                  children: [
                    AppTree(),
                    Opleiding(),
                    Werk(),
                    Hobbies(),
                    Contact(),
                ],
              )),
            ),
          ),
      );
    }
}






class AppTree extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff00C9FF),
                Color(0xffFFFFFF),
              ],
            )
          ),
          child: Center(
            child: Text(
              'Hallo, mijn naam is Marcel en ik ben een creatieveling. Als kind kon ik uren bezig zijn met tekenen en knutselen. Inspiratie haalde ik uit strips, tijdschriften en tv-shows. Een creatieve opleiding was dan ook de logische keuze. Na eerst een decorateurs-opleiding te hebben gevolgd, ben ik uiteindelijk grafische vormgeving gaan studeren. Na een mooie carrière als grafisch vormgever is het tijd voor een nieuwe uitdaging. En omdat het creatieve bloed nog steeds kruipt waar het niet gaan kan, heb ik gekozen voor web-/app development. Ik volg daartoe nu een opleiding bij Galileo-academy.',
              ),
            ),
          ),
        ),
    );
  }
}

class Opleiding extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(color: Colors.green);
  }
}

class Werk extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(color: Colors.yellow);
  }
}

class Hobbies extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(color: Colors.orange);
  }
}

class Contact extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(color: Colors.purple);
  }
}

