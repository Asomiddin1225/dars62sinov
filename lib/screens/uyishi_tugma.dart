
// import 'package:flutter/material.dart';

// class ButtonNight extends StatefulWidget {
//   const ButtonNight({super.key});

//   @override
//   State<ButtonNight> createState() => _ButtonNightState();
// }

// class _ButtonNightState extends State<ButtonNight> {
 
  
//   bool isBig=false;

 

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedTheme(
//       data: isBig ? ThemeData.light() : ThemeData.dark(),
//       duration: const Duration(microseconds: 500),
//       child: Scaffold(
//         body: Center(
//           child: AnimatedSwitcher(duration: Duration(seconds: 1),
//           child: isBig?Container(
//             width: 200,
//             height: 200,
//             color: Colors.blue,
//           ):FlutterLogo(size: 50,),)
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             isBig = !isBig;
//             setState(
//               () {},
//             );
//           },
//           child: const Icon(
//             Icons.telegram,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Toggle Button Example'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isToggled = !isToggled;
              });
            },
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: isToggled
                  ? Image.network(
                      'https://catherineasquithgallery.com/uploads/posts/2021-02/1614527863_103-p-samolet-na-belom-fone-140.png', // Path to the first image
                      key: ValueKey(1),
                    )
                  : Image.network(
                      'https://catherineasquithgallery.com/uploads/posts/2021-02/1614527863_103-p-samolet-na-belom-fone-140.png', // Path to the second image
                      key: ValueKey(2),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}




