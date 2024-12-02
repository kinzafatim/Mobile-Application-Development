// import 'package:flutter/material.dart';
// void main() {
//   runApp(
//     MyApp()
//     );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("SadaPay"),
//           backgroundColor: Colors.black,
//         ),
//         body: Center(
//           child: SadaPayCard(),
//         ),
//       ),
//     );
//   }
// }

// class SadaPayCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.topCenter,
//       margin: EdgeInsets.only(top: 20.0),
//       child: SizedBox(
//         width: 380.0,
//         height: 200.0,
//         child: Card(
//           color: Color(0xFF00BFA5),
//           elevation: 12.0, 
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20.0),
//           ),
//           child: Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
  
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(
//                       Icons.credit_card,
//                       size: 40,
//                       color: Colors.white,
//                     ),
//                     Text(
//                       "SadaPay",
//                       style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 16.0),
//                 Center(
//                   child: Text(
//                     "1234   5678   9012   3456",
//                     style: TextStyle(
//                       fontSize: 18,
//                       letterSpacing: 2.0,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 Divider(
//                   color: Colors.white.withOpacity(0.5),
//                   thickness: 1.0,
//                   height: 16.0,
//                 ),
            
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Kinza Fatima",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.grey[200],
//                       ),
//                     ),
//                     Text(
//                       "EXP: 12/25",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.grey[200],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
