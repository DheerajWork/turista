import 'package:flutter/material.dart';
import 'package:turista/src/screens/home_screen/home_screen.dart';
import 'package:turista/src/screens/switch_to_hosting_animation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turista',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SwitchToHostingAnimationPage(),
    );
  }
}
