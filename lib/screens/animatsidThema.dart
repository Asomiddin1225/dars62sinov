
import 'package:flutter/material.dart';

class AniTheme extends StatefulWidget {
  const AniTheme({super.key});

  @override
  State<AniTheme> createState() => _AniThemeState();
}

class _AniThemeState extends State<AniTheme> {
 
  
  bool isBig=false;

 

  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      data: isBig ? ThemeData.light() : ThemeData.dark(),
      duration: const Duration(microseconds: 500),
      child: Scaffold(
        body: Center(
          child: AnimatedPhysicalModel(
            shape: isBig ? BoxShape.circle : BoxShape.rectangle,
            elevation: isBig ? 20 : 2,
            color: Colors.white,
            shadowColor: Colors.black,
            duration: const Duration(seconds: 1),
            child: const SizedBox(
              width: 100,
              height: 100,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            isBig = !isBig;
            setState(
              () {},
            );
          },
          child: const Icon(
            Icons.telegram,
          ),
        ),
      ),
    );
  }
}
