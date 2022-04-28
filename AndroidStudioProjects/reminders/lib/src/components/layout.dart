import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import '../../local_imports.dart';

class Layout extends StatelessWidget {
  const Layout({
    required this.child,
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SvgPicture.asset(
          'assets/images/logo.svg',
          height: 50,
          fit: BoxFit.fitHeight,
        ),
        centerTitle: true,
        // actions: [
        //   DayNightSwitcherIcon(
        //     isDarkModeEnabled: isDarkModeEnabled,
        //     onStateChanged: onStateChanged,
        //   ),
        // ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wolken1b-dark.png"),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Stack(
          children: [
            const AnimationStatefulWidget(),
            const Animation2StatefulWidget(),
            ListView(shrinkWrap: true, children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    bottom: 30.0,
                  ),
                  child: child)
            ]),
          ],
        ),
      ),
      bottomNavigationBar: NavigationThingy(
        currentIndex: currentIndex,
      ),
    );
  }
}

class AnimationStatefulWidget extends StatefulWidget {
  const AnimationStatefulWidget({Key? key}) : super(key: key);

  @override
  State<AnimationStatefulWidget> createState() =>
      _AnimationStatefulWidgetState();
}

class _AnimationStatefulWidgetState extends State<AnimationStatefulWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 50),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(-0.5, 0.0),
    end: const Offset(0.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: SizedBox(
        height: double.infinity,
        child: Center(
          child: Image.asset(
            'assets/images/${isDarkMode ? 'wolken2.png' : 'wolken3.png'}',
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}

class Animation2StatefulWidget extends StatefulWidget {
  const Animation2StatefulWidget({Key? key}) : super(key: key);

  @override
  State<Animation2StatefulWidget> createState() =>
      _Animation2StatefulWidgetState();
}

class _Animation2StatefulWidgetState extends State<Animation2StatefulWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 80),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(0.6, 0.0),
    end: const Offset(-0.4, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: SizedBox(
        height: double.infinity,
        child: Center(
          child: Image.asset(
            'assets/images/wolken3.png',
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
