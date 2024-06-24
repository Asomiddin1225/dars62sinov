
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  bool isBig=false;
  

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text("Animatsiya"),
      ),
      body: 
      
      Center(
        child: AnimatedContainer(
          
          width:isBig ?200:100,
          height:isBig ?200:100,
          color:isBig ? Colors.red :Colors.blue,
          duration: Duration(seconds: 1),),
          
      ),
      floatingActionButton: FloatingActionButton(
        
        onPressed: () {
          isBig=!isBig;
          setState(() {
            
          });
        },

        child: Icon(Icons.telegram),
      ),
    );
  }
}
