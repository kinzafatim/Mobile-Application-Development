// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Multi-Screen App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomeScreen(),
//     ),
//   );
// }
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => AboutScreen()),
//                 );
//               },
//               child: Text('Go to About'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ContactScreen()),
//                 );
//               },
//               child: Text('Go to Contact'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => SettingsScreen()),
//                 );
//               },
//               child: Text('Go to Settings'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class AboutScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('About Screen'),
//       ),
//       body: Center(
//         child: Text(
//           'This is the About Screen',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
// class ContactScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Contact Screen'),
//       ),
//       body: Center(
//         child: Text(
//           'This is the Contact Screen',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
// class SettingsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Settings Screen'),
//       ),
//       body: Center(
//         child: Text(
//           'This is the Settings Screen',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
