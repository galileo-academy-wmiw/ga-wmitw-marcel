import 'package:flutter/material.dart';
import '../../local_imports.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  static const routeName = '/auth';

  @override
  Widget build(BuildContext context) {
    return const Layout(
      child: Auth(),
      currentIndex: 4,
    );
  }
}
