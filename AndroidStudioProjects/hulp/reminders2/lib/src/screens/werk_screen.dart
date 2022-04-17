import 'package:flutter/material.dart';
import '../../local_imports.dart';

class WerkScreen extends StatelessWidget {
  const WerkScreen({Key? key}) : super(key: key);

  static const routeName = '/werk';

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Werk(),
    );
    // child: Scaffold(
    //   appBar: AppBar(
    //     title: SvgPicture.asset(
    //       'assets/images/logo.svg',
    //       height: 50,
    //       fit: BoxFit.fitHeight,
    //     ),
    //     leadingWidth: 100,
    //     centerTitle: true,
    //   ),
    //   body: const Center(
    //     child: ,
    //   ),
    //   bottomNavigationBar: Container(
    //     color: const Color(0xff00C9FF),
    //     child: const TabBar(
    //       indicatorColor: Colors.white,
    //       labelColor: Colors.white,
    //       unselectedLabelColor: Colors.indigo,
    //       indicatorWeight: 5,
    //       labelPadding: EdgeInsets.zero,
    //       tabs: [
    //         Tab(text: 'Home'),
    //         Tab(text: 'Opleiding'),
    //         Tab(text: 'Werk'),
    //         Tab(text: 'Hobbies'),
    //       ],
    //     ),
    //   ),
    // ),;
  }
}
