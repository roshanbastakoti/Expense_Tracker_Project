import 'package:expense/pages/splash.dart';
import 'package:expense/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyD0G4YxHnbtwQMEcVYVKeF41YmSSEXcDpY", 
    appId: "1:521507360576:android:5eb4e37ff47afd2ce1f4a5", 
    messagingSenderId: "521507360576", 
    projectId:"expensetracker-56989")
  );
  await Hive.initFlutter();
  await Hive.openBox('money');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ExpenseTrackerApp',
      theme: myTheme,
      home: const Splash(),
    );
  }
}
