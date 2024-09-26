// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'ShoppingCart App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
  
//   final List<Map<String, dynamic>> _products = [
//     {'name': 'Hydrating Foaming Oil Cleanser With Ceramides, Squalene Oil & Hyaluronic Acid', 'price': 8000},
//     {'name': 'Hydrating Mineral Face Sunscreen Lotion | SPF 50 |', 'price': 6000},
//     {'name': 'Ultra-Light Gel Moisturizer', 'price': 5500},
//     {'name': 'AM Facial Moisturizing Lotion SPF 50', 'price': 7000},
//     {'name': 'Skin Renewing Night Cream', 'price': 7500},
//     {'name': 'Hydrating Hyaluronic Acid Serum', 'price': 8000},
//     {'name': 'Daily Moisturizing Lotion', 'price': 8500},
//     {'name': 'Mineral Sunscreen Stick', 'price': 5300},

//   ];

//   final List<Map<String, dynamic>> _cart = [];
//   double get totalPrice {
//     return _cart.fold(0.0, (sum, item) => sum + item['price']);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(8),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 4.0,
//                     spreadRadius: 1.0,
//                     offset: Offset(0, 2),
//                   ),
//                 ],
//               ),
//               child: Text(
//                 'Cart Craze',
//                 style: const TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.yellow,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: _products.length,
//               itemBuilder: (context, index) {
//                 final product = _products[index];
//                 return ListTile(
//                   title: Text(product['name']),
//                   subtitle: Text('\Rs ${product['price']}'),
//                   trailing: ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         _cart.add(product);
//                       });
//                     },
//                     child: const Text('Add '),
//                   ),
//                 );
//               },
//             ),
//           ),
//           // const Divider(),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               'Total: Rs $totalPrice',
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _cart.clear();
//                 });
//               },
//               child: const Text('Clear Cart'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
