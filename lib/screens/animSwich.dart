
import 'package:flutter/material.dart';

class AniSwitcher extends StatefulWidget {
  const AniSwitcher({super.key});

  @override
  State<AniSwitcher> createState() => _AniSwitcherState();
}

class _AniSwitcherState extends State<AniSwitcher> {
 
  
  bool isBig=false;

 

  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      data: isBig ? ThemeData.light() : ThemeData.dark(),
      duration: const Duration(microseconds: 500),
      child: Scaffold(
        body: Center(
          child: AnimatedSwitcher(duration: Duration(milliseconds: 1500),
          child: isBig?Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ):FlutterLogo(size: 50,),)
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            isBig = !isBig;
            setState(
              () {},
            );
          },
          child: const Icon(
            Icons.telegram_outlined,
          ),
        ),
      ),
    );
  }
}
