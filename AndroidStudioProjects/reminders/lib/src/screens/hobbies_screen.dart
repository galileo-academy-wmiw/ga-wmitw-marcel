import 'package:flutter/material.dart';
import '../../local_imports.dart';

class HobbiesScreen extends StatelessWidget {
  const HobbiesScreen({
    required this.darkMode,
    Key? key,
  }) : super(key: key);

  final bool darkMode;

  static const routeName = '/hobbies';

  @override
  Widget build(BuildContext context) {
    return Layout(
      darkMode: darkMode,
      child: Hobbies(),
      currentIndex: 3,
    );
  }
}
