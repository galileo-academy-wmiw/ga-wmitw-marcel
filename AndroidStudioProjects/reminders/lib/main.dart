import 'package:flutter/material.dart';
import '../local_imports.dart';

const Color myHexColor = Color(0xff123456);

void main() {
  bool isDarkModeEnabled = DarkMode().isDarkModeEnabled;

  runApp(
    AppRoot(
      darkMode: isDarkModeEnabled,
    ),
  );
}
