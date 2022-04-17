import 'package:flutter/material.dart';
import '../../local_imports.dart';

class OpleidingScreen extends StatelessWidget {
  const OpleidingScreen({Key? key}) : super(key: key);

  static const routeName = '/opleiding';

  @override
  Widget build(BuildContext context) {
    return const Layout(
      child: Opleiding(),
    );
  }
}
