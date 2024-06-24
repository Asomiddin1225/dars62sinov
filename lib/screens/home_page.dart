import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asomiddin"),
      ),
      body: Column(children: [
        Center(child: Text("Hello",
        style: TextStyle(
          fontSize: 30,
          color: Colors.red
        ),
        ),


        ),
      ],),
    );
  }
}