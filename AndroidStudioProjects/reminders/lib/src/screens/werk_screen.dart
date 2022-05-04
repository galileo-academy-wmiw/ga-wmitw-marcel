import 'package:flutter/material.dart';
import '../../local_imports.dart';

class WerkScreen extends StatelessWidget {
  const WerkScreen({
    required this.darkMode,
    Key? key,
  }) : super(key: key);

  final bool darkMode;

  static const routeName = '/werk';

  @override
  Widget build(BuildContext context) {
    return Layout(
      darkMode: darkMode,
      child: Werk(),
      currentIndex: 2,
    );
  }
}
