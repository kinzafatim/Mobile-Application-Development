// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     title: 'My App',
//     home: SafeArea(
//       child: MyScaffold(),
//     ),
//   ));
// }

// class MyAppBar extends StatelessWidget {
//   const MyAppBar({required this.title, super.key});

//   // Fields in a Widget subclass are always marked "final".
//   final Widget title;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 56, // in logical pixels
//       padding: const EdgeInsets.symmetric(horizontal: 8),
//       decoration: BoxDecoration(color: Colors.blue[500]),
//       // Row is a horizontal, linear layout.
//       child: Row(
//         children: [
//           IconButton(
//             icon: const Icon(Icons.menu), // Use 'const' for better performance
//             tooltip: 'Navigation menu',
//             onPressed: () {
//               // Add functionality for the button if needed
//             },
//           ),
//           // Expanded expands its child to fill the available space.
//           Expanded(
//             child: title,
//           ),
//           const IconButton(
//             icon: Icon(Icons.search), // Use 'const' for better performance
//             tooltip: 'Search',
//             onPressed: () {
//               // Add functionality for the button if needed
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyScaffold extends StatelessWidget {
//   const MyScaffold({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Material is a conceptual piece of paper on which the UI appears.
//     return Material(
//       // Column is a vertical, linear layout.
//       child: Column(
//         children: [
//           MyAppBar(
//             title: Text(
//               'Example title',
//               style: Theme.of(context).textTheme.headline6, // Updated to access the correct text theme property
//             ),
//           ),
//           // You can add more widgets to the column as needed.
//           Expanded(
//             child: Center(
//               child: Text('Hello, world!'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
