import 'package:flutter/material.dart';
import '../../local_imports.dart';

class ResetScreen extends StatelessWidget {
  const ResetScreen({Key? key}) : super(key: key);

  static const routeName = '/reset';

  @override
  Widget build(BuildContext context) {
    return const Layout(
      child: Reset(),
      currentIndex: 7,
    );
  }
}
