// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: HeroAnimation(),
//     );
//   }
// }

// class PhotoHero extends StatelessWidget {
//   const PhotoHero({
//     super.key,
//     required this.photo,
//     this.onTap,
//     required this.width,
//   });

//   final String photo;
//   final VoidCallback? onTap;
//   final double width;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       child: Hero(
//         tag: photo,
//         child: Material(
//           color: Colors.transparent,
//           child: InkWell(
//             onTap: onTap,
//             child: Image.asset(
//               photo,
//               fit: BoxFit.contain,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HeroAnimation extends StatelessWidget {
//   const HeroAnimation(
//     {
//       super.key});

//   @override
//   Widget build(BuildContext context) {
//     timeDilation = 5.0;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Basic Hero Animation'),
//       ),
//       body: Center(
//         child: PhotoHero(
//           photo: 'assets/i3.png',
//           width: 300.0,
//           onTap: () {
//             Navigator.of(context).push(MaterialPageRoute<void>(
//               builder: (context) {
//                 return Scaffold(
//                   appBar: AppBar(
//                     title: const Text('Flippers page'),
//                   ),
//                   body: Container(
//                     color: Colors.lightBlueAccent,
//                     padding: const EdgeInsets.all(16),
//                     alignment: Alignment.topLeft,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         PhotoHero(
//                           photo: 'assets/i3.png',
//                           width: 100.0,
//                           onTap: () {
//                             Navigator.of(context).pop();
//                           },
//                         ),
//                         const SizedBox(height: 16),
//                         const Text(
//                           'This is Batman',
//                           style: TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ));
//           },
//         ),
//       ),
//     );
//   }
// }
