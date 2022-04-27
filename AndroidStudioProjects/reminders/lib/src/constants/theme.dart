import 'package:flutter/material.dart';

const Color myHexColor = Color(0xff123456);

ThemeData theme = ThemeData(

  primarySwatch: Colors.red,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: const ColorScheme.light(
    secondary: Color(0xff123456),
  ),
  textTheme: const TextTheme(
    // H1
    headline1: TextStyle(
      shadows: [
        Shadow(
          offset: Offset(4.0, 4.0),
          blurRadius: 15.0,
          color: Color.fromARGB(160, 0, 0, 0),
        ),
      ],
      height: 1.3,
      fontSize: 68,
      fontFamily: 'WindSong',
      fontWeight: FontWeight.w500,
      color: Colors.indigo,
    ),
    // H2
    headline2: TextStyle(
      shadows: [
        Shadow(
          offset: Offset(4.0, 4.0),
          blurRadius: 15.0,
          color: Color.fromARGB(160, 0, 0, 0),
        ),
      ],
      height: 1.3,
      fontSize: 58,
      fontFamily: 'WindSong',
      fontWeight: FontWeight.w500,
      color: Colors.indigo,
    ),
    // Default body
    bodyText1: TextStyle(
      fontFamily: 'Mukta',
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      height: 1.3,
      color: Colors.black,
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
