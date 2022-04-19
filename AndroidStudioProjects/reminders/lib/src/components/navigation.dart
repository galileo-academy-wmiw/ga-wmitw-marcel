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
            if(_currentIndex == value) {
              break;
            } else {
              Navigator.pushNamed(context, HomeScreen.routeName);
              break;
            }
          case 1:
            Navigator.pushNamed(context, OpleidingScreen.routeName);
            break;
          case 2:
            Navigator.pushNamed(context, WerkScreen.routeName);
            break;
          case 3:
            Navigator.pushNamed(context, HobbiesScreen.routeName);
            break;
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
      ],
    );
  }
}
