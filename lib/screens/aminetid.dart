
import 'package:flutter/material.dart';

class AnimateHome extends StatefulWidget {
  const AnimateHome({super.key});

  @override
  State<AnimateHome> createState() => _AnimateHomeState();
}

class _AnimateHomeState extends State<AnimateHome> {
 
  
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
        child: AnimatedOpacity(
          opacity: _isHiglighted?1.0:0.0,
          duration: Duration(seconds: 1),
          child: FlutterLogo(size: 200,),)
          
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
