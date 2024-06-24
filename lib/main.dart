
import 'package:flutter/material.dart';
import 'package:myapp/screens/aminetid.dart';
import 'package:myapp/screens/animatedPhysica.dart';
import 'package:myapp/screens/animetinPosen.dart';
import 'package:myapp/screens/home_page.dart';
import 'package:myapp/screens/teks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AniPosition(),
    );
  }
}


    
