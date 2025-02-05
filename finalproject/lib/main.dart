import 'package:flutter/material.dart';
import 'package:finalproject/views/buyers/main_screen.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, 
      ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Lato-Bold',
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}
