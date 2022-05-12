import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../local_imports.dart';

const Color myHexColor = Color(0xff123456);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AppRoot());
}
