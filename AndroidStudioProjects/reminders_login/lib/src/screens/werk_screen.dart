import 'package:flutter/material.dart';
import '../../local_imports.dart';

class WerkScreen extends StatelessWidget {
  const WerkScreen({Key? key}) : super(key: key);

  static const routeName = '/werk';

  @override
  Widget build(BuildContext context) {
    return const Layout(
      child: Werk(),
      currentIndex: 2,
    );
  }
}
