// import 'dart:ui';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:nsutxapp/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NSUTX App',
      routes: appRoutes,
    );
  }
}
