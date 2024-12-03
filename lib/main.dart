import 'package:flutter/material.dart';
import 'package:ukl_1/home.dart';
import 'package:ukl_1/login.dart';
import 'package:ukl_1/movies.dart';
import 'package:ukl_1/mymovies.dart';
import 'package:ukl_1/splashscreen.dart';
import 'package:ukl_1/ticket.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/SplashScreen',
      routes: {
       '/': (context) => Splashscreen(),
       '/login':(context) => Loginscreen(),
       '/home': (context) => Homescreen(),
        '/movie': (context) => Movies(),
     '/mymovie': (context) => Mymovies(),
      '/ticket': (context) => Ticket(),
      },
    );
  }
}