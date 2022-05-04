import 'package:flutter/material.dart';
import '../../local_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    required this.darkMode,
    Key? key,
  }) : super(key: key);

  final bool darkMode;

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Home(),
      currentIndex: 0,
      darkMode: darkMode,
    );
  }
}
