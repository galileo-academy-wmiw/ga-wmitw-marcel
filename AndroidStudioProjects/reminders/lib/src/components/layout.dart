import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oefenen2/local_imports.dart';

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
        leadingWidth: 100,
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff00C9FF),
              Color(0xffFFFFFF),
            ],
          ),
        ),
        child: ListView(shrinkWrap: true, children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(
                top: 48.0,
                bottom: 48.0,
              ),
              child: child)
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          switch (value) {
            case 0:
              Navigator.pushNamed(context, HomeScreen.routeName);
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Opleiding',
          ),
        ],
      ),
    );
  }
}
