import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../local_imports.dart';

class Layout extends StatelessWidget {
  const Layout({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SvgPicture.asset(
          'assets/images/logo.svg',
          height: 50,
          fit: BoxFit.fitHeight,
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff00C9FF),
              Color(0xffFFFFFF),
            ],
          ),
          image: DecorationImage(
              image: AssetImage("assets/images/wolken1.png"),
              fit: BoxFit.cover),
        ),
        child: ListView(shrinkWrap: true, children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                bottom: 30.0,
              ),
              child: child)
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          switch (value) {
            case 0:
              Navigator.pushNamed(context, HomeScreen.routeName);
              break;
            case 1:
              Navigator.pushNamed(context, OpleidingScreen.routeName);
              break;
            case 2:
              Navigator.pushNamed(context, WerkScreen.routeName);
              break;
            case 3:
              Navigator.pushNamed(context, HobbiesScreen.routeName);
              break;
            default:
              Navigator.pushNamed(context, HomeScreen.routeName);
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_rounded),
            label: 'Opleiding',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center_rounded),
            label: 'Werk',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build_circle),
            label: 'Hobbies',
          ),
        ],
      ),
    );
  }
}
