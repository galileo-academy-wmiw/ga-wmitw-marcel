import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                default:
                  return const HomeScreen();
              }
            });
      },
    );
  }
}
