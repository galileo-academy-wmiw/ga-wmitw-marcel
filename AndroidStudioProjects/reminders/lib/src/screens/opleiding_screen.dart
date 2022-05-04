import 'package:flutter/material.dart';
import '../../local_imports.dart';

class OpleidingScreen extends StatelessWidget {
  const OpleidingScreen({
    required this.darkMode,
    Key? key,
  }) : super(key: key);

  final bool darkMode;

  static const routeName = '/opleiding';

  @override
  Widget build(BuildContext context) {
    return Layout(
      darkMode: darkMode,
      child: Opleiding(),
      currentIndex: 1,
    );
  }
}
