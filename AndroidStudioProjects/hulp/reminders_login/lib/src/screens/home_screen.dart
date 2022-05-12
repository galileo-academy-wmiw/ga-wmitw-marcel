import 'package:flutter/material.dart';
import '../../local_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return const Layout(
      child: Home(),
      currentIndex: 0,
    );
  }
}
