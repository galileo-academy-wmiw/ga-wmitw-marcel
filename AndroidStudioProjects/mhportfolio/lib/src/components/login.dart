import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../local_imports.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Foto
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              margin: const EdgeInsets.only(
                left: 25,
                top: 85,
                right: 25,
                bottom: 0,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 7,
                    offset: const Offset(5, 5), // changes position of shadow
                  ),
                ],
                image: const DecorationImage(
                  image: AssetImage('assets/images/pasfoto.jpg'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        // Titel
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 70,
                top: 0,
                right: 0,
                bottom: 0,
              ),
              child: Transform.rotate(
                angle: -math.pi / 12,
                child: Text(
                  'Log in...',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
          ],
        ),
        // Firebase
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 280, 20, 0),
              child: Column(
                children: <Widget>[
                  reusableTextField("Vul je naam in", Icons.person_outline, false,
                      _emailTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Vul je wachtwoord in", Icons.lock_outline, true,
                      _passwordTextController),
                  const SizedBox(
                    height: 10,
                  ),

                  firebaseUIButton(context, "Inloggen", () {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _passwordTextController.text)
                        .then((value) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChatScreen()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  }),
                  signUpOption()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Heb je nog geen account?",
            style: TextStyle(color: Colors.indigo)),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/signup');
          },
          child: const Text(
            " Meld je aan",
            style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

