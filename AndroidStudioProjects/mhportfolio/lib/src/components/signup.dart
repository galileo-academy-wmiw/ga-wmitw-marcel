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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  Future<void> validate() async {
    if (formKey.currentState!.validate()) {
      try {
        FirebaseAuth.instance
            .createUserWithEmailAndPassword(
          email: _emailTextController.text,
          password: _passwordTextController.text,
        )
            .then((value) {
          print("Created New Account for ${value.user!.email}");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatScreen(),
            ),
          );
        }).onError((error, stackTrace) {
          print("Error ${error.toString()}");
        });
      } on FirebaseException catch (e) {
        print(e.code);
      }
    } else {
      setState(() {
        autovalidateMode = AutovalidateMode.always;
      });
    }
  }

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
              child: Form(
                key: formKey,
                autovalidateMode: autovalidateMode,
                child: Column(
                  children: <Widget>[
                    reusableTextField(
                        labelText: "Geef een naam op",
                        icon: Icons.person_outline,
                        isPasswordType: false,
                        controller: _userNameTextController,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Je hebt nog niks ingevuld';
                          }
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField(
                        labelText: "Geef een emailadres op",
                        icon: Icons.person_outline,
                        isPasswordType: false,
                        controller: _emailTextController,
                        validator: (String? value) {
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
                            return "Dit is geen geldig emailadres!";
                          }
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField(
                        labelText: "Geef een wachtwoord op",
                        icon: Icons.lock_outline,
                        isPasswordType: true,
                        controller: _passwordTextController,
                        validator: (String? value) {
                          if (!RegExp(
                                  r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$')
                              .hasMatch(value!)) {
                            return "Je wachtwoord moet minimaal 8 karakters bevatten";
                          }
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    firebaseUIButton2(
                      context: context,
                      title: "Aanmelden",
                      onTap: () {
                        validate();
                      },
                    ),
                    signOutOption()
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
  Row signOutOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Ik heb al een account en wil ",
          style: Theme.of(context).textTheme.bodyText2,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/login');
          },
          child: Text(
            "inloggen",
            style: Theme.of(context).textTheme.bodyText2?.copyWith(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
