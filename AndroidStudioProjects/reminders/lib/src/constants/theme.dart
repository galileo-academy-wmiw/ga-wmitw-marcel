import 'package:flutter/material.dart';

const Color myHexColor = Color(0xff123456);

ThemeData theme = ThemeData(
  fontFamily: 'Mukta',
  primarySwatch: Colors.red,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: const ColorScheme.light(
    secondary: Color(0xff123456),
  ),
  textTheme: const TextTheme(
    // H1
    headline1: TextStyle(
      fontFamily: 'Roboto', // Overrides default font family.
      fontSize: 96.0,
      fontWeight: FontWeight.w400, // Standard
      letterSpacing: -1.5,
    ),
    // H2
    headline2: TextStyle(
      fontFamily: 'Roboto', // Overrides default font family.
      fontSize: 60.0,
      fontWeight: FontWeight.w300, // Light
      letterSpacing: -0.5,
    ),
    // Default body
    bodyText2: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.25,
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff00C9FF),
    foregroundColor: Colors.white,
    elevation: 0,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xff00C9FF),
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.indigo,
    unselectedLabelStyle: TextStyle(color: Colors.indigo),
    selectedLabelStyle: TextStyle(color: Colors.white),
  ),
);
