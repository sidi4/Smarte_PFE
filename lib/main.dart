import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:volsapp/screens/home_screen.dart';
import 'package:volsapp/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:volsapp/screens/sign_up_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
