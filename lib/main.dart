import 'package:flutter/material.dart';
import 'package:tour_quest/Activity/Activity_chat.dart';
import 'package:tour_quest/Activity/Activity_famouse.dart';
import 'package:tour_quest/Activity/Activity_virtual.dart';
import 'package:tour_quest/Auth/Login.dart';
import 'package:tour_quest/Auth/SignUp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tour_quest/spalash.dart';
import 'Activity/Activity_places.dart';
import 'firebase_options.dart';
import 'lanActivity.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Spalash(),
    );
  }
}

