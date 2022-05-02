import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../local_imports.dart';

class Layout extends StatefulWidget {
  const Layout({
    required this.child,
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final int currentIndex;

  @override
  State<Layout> createState() => _LayoutState();
}

// boolean
class _LayoutState extends State<Layout> {
  bool isDarkModeEnabled = false;

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
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: DayNightSwitcherIcon(
              isDarkModeEnabled: isDarkModeEnabled,
              onStateChanged: onStateChanged,
            ),
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
            decoration: BoxDecoration(
              // color: Color(0xff00C9FF),
              image: DecorationImage(
                image: AssetImage(isDarkModeEnabled ? "assets/images/stars2.png" : "assets/images/wolken1b.png"),
                fit: BoxFit.fill,
              ),
            ),
            ),
            AnimationStatefulWidget(),
            Animation2StatefulWidget(),
            ListView(shrinkWrap: true, children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    bottom: 30.0,
                  ),
                  child: widget.child)
            ]),
          ],
        ),
      ),
      bottomNavigationBar: NavigationThingy(currentIndex: widget.currentIndex,),
    );
  }

  /// Called when the state (day / night) has changed.
  void onStateChanged(bool isDarkModeEnabled) {
    setState(() {
      this.isDarkModeEnabled = isDarkModeEnabled;
    });
  }
}

class AnimationStatefulWidget extends StatefulWidget {
  const AnimationStatefulWidget({Key? key}) : super(key: key);

  @override
  State<AnimationStatefulWidget> createState() => _AnimationStatefulWidgetState();
}

// boolean
class _AnimationStatefulWidgetState extends State<AnimationStatefulWidget>
    with SingleTickerProviderStateMixin {
  bool isDarkModeEnabled = false;

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
        child:
          Container(
          decoration: BoxDecoration(
            // color: Color(0xff00C9FF),
            image: DecorationImage(
              image: AssetImage(isDarkModeEnabled ? "assets/images/wolken2dark.png" : "assets/images/wolken2.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}


class Animation2StatefulWidget extends StatefulWidget {
  const Animation2StatefulWidget({Key? key}) : super(key: key);

  @override
  State<Animation2StatefulWidget> createState() => _Animation2StatefulWidgetState();
}

// boolean
class _Animation2StatefulWidgetState extends State<Animation2StatefulWidget>
    with SingleTickerProviderStateMixin {
  bool isDarkModeEnabled = false;

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
          child:
            Container(
            decoration: BoxDecoration(
              // color: Color(0xff00C9FF),
              image: DecorationImage(
                image: AssetImage(isDarkModeEnabled ? "assets/images/wolken3dark.png" : "assets/images/wolken3.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
