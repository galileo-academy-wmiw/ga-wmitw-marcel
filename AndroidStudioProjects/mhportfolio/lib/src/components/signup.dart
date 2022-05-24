import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:math' as math;
import '../../local_imports.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:io';

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

  // Avatar imagepicker
  XFile? imgXFile;
  final ImagePicker imagePicker = ImagePicker();

  getImageFromGallery() async
  {
    imgXFile = await imagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      imgXFile;
    });
  }


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

        // Firebase
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 85, 20, 0),
              child: Form(
                key: formKey,
                autovalidateMode: autovalidateMode,
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        getImageFromGallery();
                      },
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 10,
                                offset: const Offset(5, 5), // changes position of shadow
                              ),
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 80,
                            backgroundColor: Colors.white,
                              child: CircleAvatar(
                              radius: 75,
                              backgroundColor: Colors.blueGrey,
                              backgroundImage: imgXFile == null
                                ? null
                                : FileImage(
                                  File(imgXFile!.path)
                                ),
                                  child: imgXFile == null
                                  ? Icon(
                                  Icons.add_photo_alternate,
                                  color: Colors.white,
                                  size: MediaQuery.of(context).size.width * 0.15,
                                  ) : null,
                              ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
