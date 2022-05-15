import 'package:flutter/material.dart';

TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.indigo,
    style: TextStyle(color: Colors.indigo),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.indigo,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.indigo),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.7),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}


Container firebaseUIButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed('/login');
      },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25))),
      child: Ink(
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff00C9FF), Colors.indigo]),
            borderRadius: BorderRadius.circular(25)),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          alignment: Alignment.center,
          child: const Text(
            'Inloggen',
            style: const TextStyle(
                fontSize: 22, fontStyle: FontStyle.italic),
          ),
        ),
      ),
    ),
  );
}

Container firebaseUIButton2(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed('/signup');
      },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25))),
      child: Ink(
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff00C9FF), Colors.indigo]),
            borderRadius: BorderRadius.circular(25)),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          alignment: Alignment.center,
          child: const Text(
            'Aanmelden',
            style: const TextStyle(
                fontSize: 22, fontStyle: FontStyle.italic),
          ),
        ),
      ),
    ),
  );
}