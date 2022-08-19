import 'package:etiket/pages/home_page.dart';
import 'package:etiket/pages/splash.dart';
import 'package:etiket/providers/rekomen_provider.dart';
import 'package:etiket/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      // home: HomePage(),
    );
  }
}
