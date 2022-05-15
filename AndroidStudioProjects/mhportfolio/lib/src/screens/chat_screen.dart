import 'package:flutter/material.dart';
import '../../local_imports.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  static const routeName = '/chat';

  @override
  Widget build(BuildContext context) {
    return const Layout(
      child: Chat(),
      currentIndex: 5,
    );
  }
}
