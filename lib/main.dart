import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'Screen/home_screen.dart';
import 'login-signup/MyRegister.dart';
import 'login-signup/My_Login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  User? user;

  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser;
    print(user?.uid.toString());
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: AnimatedSplashScreen(
        splash: 'assets/realme.png',
        nextScreen: user != null ? Home_Screen() : const MyLogin(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 3,
        backgroundColor: Colors.black,
      ),
      builder: EasyLoading.init(),
      routes: {
        'login': (context) => MyLogin(),
        'register': (context) => MyRegister(),
      },
    );
  }
}
