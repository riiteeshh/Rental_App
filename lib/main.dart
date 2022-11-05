import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rental_app/carpage.dart';
import 'package:rental_app/home_page.dart';
import './login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RentIt',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/homepage': (context) => HomePage(),
        '/carpage': (context) => CarPage()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      print('reached');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 1,
                child: Image.asset('asset/gifs/splash_image.gif'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              child: Text(
                'GAS \"N\" GO',
                style: TextStyle(
                    fontFamily: 'Ceviche',
                    color: Colors.blueAccent,
                    fontSize: MediaQuery.of(context).size.aspectRatio * 150,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
