import 'package:flutter/material.dart';
import '../../local_imports.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  static const routeName = '/logout';

  @override
  Widget build(BuildContext context) {
    return const Layout(
      child: Logout(),
      currentIndex: 6,
    );
  }
}
