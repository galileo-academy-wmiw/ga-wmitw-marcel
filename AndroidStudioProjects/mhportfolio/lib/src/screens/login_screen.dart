import 'package:flutter/material.dart';
import '../../local_imports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return const Layout(
      child: Login(),
      bottomNavigation: false,
    );
  }
}
