import 'package:flutter/material.dart';
import '../../local_imports.dart';

class NavigationThingy extends StatefulWidget {
  const NavigationThingy({
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  final int currentIndex;

  @override
  State<NavigationThingy> createState() => _NavigationThingyState();
}

class _NavigationThingyState extends State<NavigationThingy> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        switch (value) {
          case 0:
            if (_currentIndex == value) {
              break;
            } else {
              Navigator.pushNamed(context, HomeScreen.routeName);
              break;
            }
          case 1:
            if (_currentIndex == value) {
              break;
            } else {
              Navigator.pushNamed(context, OpleidingScreen.routeName);
              break;
            }
          case 2:
            if (_currentIndex == value) {
              break;
            } else {
              Navigator.pushNamed(context, WerkScreen.routeName);
              break;
            }
          case 3:
            if (_currentIndex == value) {
              break;
            } else {
              Navigator.pushNamed(context, HobbiesScreen.routeName);
              break;
            }
          case 4:
            if (_currentIndex == value) {
              break;
            } else {
              Navigator.pushNamed(context, AuthScreen.routeName);
              break;
            }
          case 5:
            if (_currentIndex == value) {
              break;
            } else {
              Navigator.pushNamed(context, ChatScreen.routeName);
              break;
            }
          case 6:
            if (_currentIndex == value) {
              break;
            } else {
              Navigator.pushNamed(context, LoginScreen.routeName);
              break;
            }
          case 7:
            if (_currentIndex == value) {
              break;
            } else {
              Navigator.pushNamed(context, SignUpScreen.routeName);
              break;
            }
          default:
            Navigator.pushNamed(context, HomeScreen.routeName);
        }

        setState(() {
          _currentIndex = value;
        });
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school_rounded),
          label: 'Opleiding',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business_center_rounded),
          label: 'Werk',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.build_circle),
          label: 'Hobbies',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_rounded),
          label: 'Chat',
        ),
      ],
    );
  }
}
