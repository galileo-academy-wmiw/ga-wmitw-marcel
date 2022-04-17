import 'package:flutter/material.dart';
import '../local_imports.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) {
              switch (routeSettings.name) {
                case HomeScreen.routeName:
                  return const HomeScreen();
                case OpleidingScreen.routeName:
                  return const OpleidingScreen();
                case WerkScreen.routeName:
                  return const WerkScreen();
                case HobbiesScreen.routeName:
                  return const HobbiesScreen();
                default:
                  return const HomeScreen();
              }
            });
      },
    );
  }
}
