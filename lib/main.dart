import 'package:flutter/material.dart';
import 'package:splash_screen/screen/home_screen.dart';
import 'package:splash_screen/screen/route_one_screen.dart';
import 'package:splash_screen/screen/route_three_screen.dart';
import 'package:splash_screen/screen/route_two_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/one': (context) => const RouteOneScreen(),
        '/two': (context) => const RouteTwoScreen(),
        '/three': (context) => const RouteThreeScreen()
      },
    ),
  );
}
