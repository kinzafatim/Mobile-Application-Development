// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Interactive Widgets',
//       home: InteractiveWidgets(),
//     );
//   }
// }

// class InteractiveWidgets extends StatefulWidget {
//   @override
//   _InteractiveWidgetsState createState() => _InteractiveWidgetsState();
// }

// class _InteractiveWidgetsState extends State<InteractiveWidgets> {
//   String? selectedValue;
//   bool switchValue = false;
//   bool checkboxValue = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Lab2--- Task3   Interactive Widgets")),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             // DropdownButton
//             Text("Select your city:"),
//             DropdownButton<String>(
//               hint: Text("Choose one"),
//               value: selectedValue,
//               items: <String>['Karachi', 'Islamabad', 'Lahore', 'Peshawar']
//                   .map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//               onChanged: (String? newValue) {
//                 setState(() {
//                   selectedValue = newValue;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//             // Switch
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Switch is ${switchValue ? 'ON' : 'OFF'}"),
//                 Switch(
//                   value: switchValue,
//                   onChanged: (bool newValue) {
//                     setState(() {
//                       switchValue = newValue;
//                     });
//                   },
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             // Checkbox
//             Row(
//               children: [
//                 Checkbox(
//                   value: checkboxValue,
//                   onChanged: (bool? newValue) {
//                     setState(() {
//                       checkboxValue = newValue ?? false;
//                     });
//                   },
//                 ),
//                 Text("Check me!"),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
