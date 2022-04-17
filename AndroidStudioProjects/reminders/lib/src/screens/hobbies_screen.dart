import 'package:flutter/material.dart';
import '../../local_imports.dart';

class HobbiesScreen extends StatelessWidget {
  const HobbiesScreen({Key? key}) : super(key: key);

  static const routeName = '/hobbies';

  @override
  Widget build(BuildContext context) {
    return const Layout(
      child: Hobbies(),
    );
  }
}
