
import 'package:flutter/material.dart';

class AnimatePhyisical extends StatefulWidget {
  const AnimatePhyisical({super.key});

  @override
  State<AnimatePhyisical> createState() => _AnimatePhyisicalState();
}

class _AnimatePhyisicalState extends State<AnimatePhyisical> {
 
  
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
        child: AnimatedPhysicalModel(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
          elevation: _isHiglighted?20:5,
          shadowColor: Colors.green,
          shape: BoxShape.rectangle,
          duration:Duration(seconds: 2),
          child: Container(width: 300,height: 150,),

        )
          
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
