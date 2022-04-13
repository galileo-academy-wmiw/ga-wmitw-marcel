import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff00C9FF),
                  Color(0xffFFFFFF),
                ]),
          ),
          child: const AnimationStatefulWidget(),
        ),
      ),
    );
  }
}

class AnimationStatefulWidget extends StatefulWidget {
  const AnimationStatefulWidget({Key? key}) : super(key: key);

  @override
  State<AnimationStatefulWidget> createState() => _AnimationStatefulWidgetState();
}

class _AnimationStatefulWidgetState extends State<AnimationStatefulWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 20),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(-0.2, 0.0),
    end: const Offset(0.2, 0.0),
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
      child: Container(
        height: double.infinity,
          child: Center(
            child: Image.asset('assets/images/wolken1.png'),
          ),
        ),
      );
  }
}
