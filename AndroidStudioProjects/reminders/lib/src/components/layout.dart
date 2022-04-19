import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../local_imports.dart';

class Layout extends StatelessWidget {
  const Layout({
    required this.child,
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final int currentIndex;

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
      bottomNavigationBar: NavigationThingy(currentIndex: currentIndex,),
    );
  }
}
