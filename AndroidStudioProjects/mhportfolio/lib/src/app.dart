import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import '../local_imports.dart';


class AppRoot extends StatefulWidget {
  const AppRoot({Key? key}) : super(key: key);
  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      home: AnimatedSplashScreen(
        duration: 1000,
        splash: 'assets/splash/splash.png',
        nextScreen: HomeScreen(),
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
                  return const HomeScreen();
                case OpleidingScreen.routeName:
                  return const OpleidingScreen();
                case WerkScreen.routeName:
                  return const WerkScreen();
                case HobbiesScreen.routeName:
                  return const HobbiesScreen();
                case ChatScreen.routeName:
                  return const ChatScreen();
                case AuthScreen.routeName:
                  return const AuthScreen();
                case LoginScreen.routeName:
                  return const LoginScreen();
                case SignUpScreen.routeName:
                  return const SignUpScreen();
                default:
                  return const HomeScreen();
              }
            });
      },
    );
  }
}
