// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Returning Data Demo'),
//       ),
//       body: const Center(
//         child: SelectionButton(),
//       ),
//     );
//   }
// }

// class SelectionButton extends StatefulWidget {
//   const SelectionButton({super.key});

//   @override
//   State<SelectionButton> createState() => _SelectionButtonState();
// }

// class _SelectionButtonState extends State<SelectionButton> {
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         _navigateAndDisplaySelection(context);
//       },
//       child: const Text('Pick an option!!'),
//     );
//   }

//   Future<void> _navigateAndDisplaySelection(BuildContext context) async {
//     final result = await Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const SelectionScreen()),
//     );
//   }
// }

// class SelectionScreen extends StatelessWidget {
//   const SelectionScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Pick any option'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context, 'Yepp');
//                 },
//                 child: const Text('Yepp'),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context, 'Nope');
//                 },
//                 child: const Text('Nope'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
