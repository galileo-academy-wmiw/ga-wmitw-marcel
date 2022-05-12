import 'package:flutter/material.dart';
import '../../local_imports.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const routeName = '/signup';

  @override
  Widget build(BuildContext context) {
    return const Layout(
      child: SignUp(),
      currentIndex: 7,
    );
  }
}
