import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gp23/NavPage/Based.dart';
import 'UI/HomePage.dart';
import 'RegestrationScreen/SplashPage.dart';

import 'package:gp23/NavPage/Const.dart';
import 'package:gp23/RegestrationScreen/Login.dart';
import 'package:gp23/firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
 void initState(){
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      //home:Splashpage() ,
      debugShowCheckedModeBanner: false,
      initialRoute: route1,
      onGenerateRoute: routeClass.generator,


    );
  }
}