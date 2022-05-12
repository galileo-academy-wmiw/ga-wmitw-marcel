import 'package:flutter/material.dart';
import '../../local_imports.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  static const routeName = '/signup';

  @override
  Widget build(BuildContext context) {
    return const Layout(
      child: Signup(),
      currentIndex: 4,
    );
  }
}
