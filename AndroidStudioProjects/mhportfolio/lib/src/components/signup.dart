import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../local_imports.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

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
                left: 50,
                top: 0,
                right: 0,
                bottom: 0,
              ),
              child: Transform.rotate(
                angle: -math.pi / 12,
                child: Text(
                  'Sign up...',
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
                  reusableTextField("Geef een naam op", Icons.person_outline, false,
                      _userNameTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Geef een emailadres op", Icons.person_outline, false,
                      _emailTextController),
                  const SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Geef een wachtwoord op", Icons.lock_outline, true,
                      _passwordTextController),
                  const SizedBox(
                    height: 10,
                  ),

                  firebaseUIButton2(context, "Aanmelden", () {
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _passwordTextController.text)
                        .then((value) {
                      print("Created New Account");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChatScreen()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  }),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

