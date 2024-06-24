
import 'package:flutter/material.dart';

class AniPosition extends StatefulWidget {
  const AniPosition({super.key});

  @override
  State<AniPosition> createState() => _AniPositionState();
}

class _AniPositionState extends State<AniPosition> {
 
  
  bool _isHiglighted=false;

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text("Animatsiya"),
      ),
      body: 
      
      Stack(children: [
        AnimatedPositionedDirectional(
          width: 200.0,
          height: 200.0,
          // top: _isHiglighted?50.0:150.0,
          start:  _isHiglighted?50.0:150.0,
          duration: Duration(seconds: 1),
          child:
        
         Container(color: Colors.blueAccent,))
      ],),
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
