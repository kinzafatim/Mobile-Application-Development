// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   _MyState createState() => _MyState();
// }

// class _MyState extends State<MyApp> {
//   Color _containerColor = Colors.yellow;

//   void changeColor() {
//     setState(() {
//       _containerColor = _containerColor == Colors.yellow ? Colors.red : Colors.yellow;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Background Color Changer',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('LAB 2 ---- Task 2  Background Color Changer'),
//         ),
//         body: Center(
//           child: Container(
//             height: 100,
//             width: 100,
//             color: _containerColor,
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: changeColor,
//           // child: const Icon(Icons.color_lens), 
//           child: const Text('Change'), 
//         ),
//       ),
//     );
//   }
// }
