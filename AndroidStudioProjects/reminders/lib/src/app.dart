import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import '../local_imports.dart';

/// The main widget.
class AppRoot extends StatefulWidget {
  const AppRoot({
    required this.darkMode,
    Key? key
  }) : super(key: key);

  final bool darkMode;

  @override
  State<AppRoot> createState() => _AppRootState();
}

/// The main widget state.
class _AppRootState extends State<AppRoot> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: light,
      darkTheme: dark,

      themeMode: widget.darkMode ? ThemeMode.dark : ThemeMode.light,

      home: AnimatedSplashScreen (
        duration: 1000,
        splash: 'assets/splash/splash.png',
        nextScreen: HomeScreen(
          darkMode: widget.darkMode,
        ),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: double.infinity,
        backgroundColor: Color(0xff00C9FF),
      ),
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) {
              switch (routeSettings.name) {
                case HomeScreen.routeName:
                  return HomeScreen(
                    darkMode: widget.darkMode,
                  );
                case OpleidingScreen.routeName:
                  return OpleidingScreen(
                    darkMode: widget.darkMode,
                  );
                case WerkScreen.routeName:
                  return WerkScreen(
                    darkMode: widget.darkMode,
                  );
                case HobbiesScreen.routeName:
                  return HobbiesScreen(
                    darkMode: widget.darkMode,
                  );
                default:
                  return HomeScreen(
                    darkMode: widget.darkMode,
                  );
              }
            },);
      },
    );
  }
}
