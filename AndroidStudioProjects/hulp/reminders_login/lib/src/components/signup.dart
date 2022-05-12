import 'package:flutter/material.dart';
import '../../local_imports.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:math' as math;


class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
              Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 0,
                        top: 15,
                        right: 0,
                        bottom: 0,
                      ),
                      child: Transform.rotate(
                        angle: -math.pi / 12,
                        child: Text(
                          'Wanna talk?',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                    ),
                  ],
            ),
              const SizedBox(
                height: 20,
              ),
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
              reusableTextField("Geef een wachtwoord op", Icons.lock_outlined, true,
    _passwordTextController),
              const SizedBox(
                height: 20,
              ),
              firebaseUIButton(context, "Sign Up", () {
                FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                  email: _emailTextController.text,
                  password: _passwordTextController.text)
                  .then((value) {
                  print("Created New Account");
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home()));
                  }).onError((error, stackTrace) {
                  print("Error ${error.toString()}");
                  });
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}