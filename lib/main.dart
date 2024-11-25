import 'package:flutter/material.dart';
import 'package:taskmapsmonth/Silverappar.dart';

import 'package:flutter/material.dart';
import 'package:taskmapsmonth/Silverappar.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:taskmapsmonth/pagview.dart';

import 'pagview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => PageVieww()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('imaegs/splash.jpg'),
            SizedBox(height: 20,),
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('اهلا بك في تطبيقنا',style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}

