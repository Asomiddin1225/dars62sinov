
import 'package:flutter/material.dart';

class TextHome extends StatefulWidget {
  const TextHome({super.key});

  @override
  State<TextHome> createState() => _TextHomeState();
}

class _TextHomeState extends State<TextHome> {
 
  
  bool _isHiglighted=false;

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text("Animatsiya"),
      ),
      body: 
      
      Center(
        child: AnimatedDefaultTextStyle
        (style: _isHiglighted
        ?TextStyle(fontSize: 50,color: Colors.red):
        TextStyle(fontSize: 30,color: Colors.black),
        
        duration: Duration(seconds: 1),
        child: Text("Hello,Flutter"),)
          
      ),
      floatingActionButton: FloatingActionButton(
        
        onPressed: () {
          _isHiglighted=!_isHiglighted;
          setState(() {
            
          });
        },

        child: Icon(Icons.telegram),
      ),
    );
  }
}
