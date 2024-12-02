
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Assignment 1'),
//         centerTitle: true,
//       ),
//       body: ListView(
//         children: <Widget>[
//           Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: FlutterLogo(size: 100), 
//               ),
//             ),
//           ListTile(
//             leading: Icon(Icons.animation),
//             title: Text("Hero Animation Implementation"),
//             onTap: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Page2()),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.favorite),
//             title: Text("Snackbar Implementation"),
//             onTap: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Page3()),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.radio_button_checked),
//             title: Text("Buttons"),
//             onTap: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Page4()),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.slideshow),
//             title: Text("Card Implementation"),
//             onTap: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Page5()),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.center_focus_strong),
//             title: Text("DropDown"),
//             onTap: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Page6()),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.check_circle),
//             title: Text("Gesture Detector"),
//             onTap: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Page7()),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.expand),
//             title: Text("Expansion Panel"),
//             onTap: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Page8()),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// class Page2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Hero Animation')),
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Page2Detail()),
//             );
//           },
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Hero(
//                     tag: 'hero-tag-1',
//                     child: Container(
//                       width: 100,
//                       height: 100,
//                       color: Colors.blue,
//                       margin: EdgeInsets.all(10),
//                     ),
//                   ),
//                   Hero(
//                     tag: 'hero-tag-2',
//                     child: Container(
//                       width: 100,
//                       height: 100,
//                       color: Colors.red,
//                       margin: EdgeInsets.all(10),
//                     ),
//                   ),
//                   Hero(
//                     tag: 'hero-tag-3',
//                     child: Container(
//                       width: 100,
//                       height: 100,
//                       color: Colors.green,
//                       margin: EdgeInsets.all(10),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Touch me to see Hero animation',
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Page2Detail extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Hero Detail')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Hero(
//               tag: 'hero-tag-1',
//               child: Container(
//                 width: 150,
//                 height: 150,
//                 color: Colors.blue,
//                 margin: EdgeInsets.all(10),
//               ),
//             ),
//             Hero(
//               tag: 'hero-tag-2',
//               child: Container(
//                 width: 150,
//                 height: 150,
//                 color: Colors.red,
//                 margin: EdgeInsets.all(10),
//               ),
//             ),
//             Hero(
//               tag: 'hero-tag-3',
//               child: Container(
//                 width: 150,
//                 height: 150,
//                 color: Colors.green,
//                 margin: EdgeInsets.all(10),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Page3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Snackbar')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text('Dont touch pls')),
//                 );
//               },
//               child: Text('Touch me'),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text('dont touch me')),
//                 );
//               },
//               child: Text('Touch me'),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text('No ')),
//                 );
//               },
//               child: Text('Touch me'),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text('No dont touch')),
//                 );
//               },
//               child: Text('Touch me'),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text('No dont')),
//                 );
//               },
//               child: Text('Touch me'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Page4 extends StatefulWidget {
//   @override
//   _Page4State createState() => _Page4State();
// }

// class _Page4State extends State<Page4> {
//   bool _switchValue = false;
//   int _radioValue = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Radio & Switch')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               'Radio Button Selection:',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             Row(
//               children: [
//                 Radio<int>(
//                   value: 0,
//                   groupValue: _radioValue,
//                   onChanged: (int? value) {
//                     setState(() {
//                       _radioValue = value!;
//                     });
//                   },
//                 ),
//                 Text('Option 1'),
//                 Radio<int>(
//                   value: 1,
//                   groupValue: _radioValue,
//                   onChanged: (int? value) {
//                     setState(() {
//                       _radioValue = value!;
//                     });
//                   },
//                 ),
//                 Text('Option 2'),
//               ],
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Switch Control:',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             Switch(
//               value: _switchValue,
//               onChanged: (bool value) {
//                 setState(() {
//                   _switchValue = value;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text('Switch is ${_switchValue ? "ON" : "OFF"}')),
//                 );
//               },
//               child: Text('Check Switch Status'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text('Radio selected: Option $_radioValue')),
//                 );
//               },
//               child: Text('Check Radio Selection'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Page5 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('ListView with Cards')),
//       body: ListView.builder(
//         itemCount: 5,
//         itemBuilder: (context, index) {
//           return Card(
//             margin: EdgeInsets.all(10),
//             elevation: 5,
//             child: ListTile(
//               title: Text('Course ${index + 1}'),
//               subtitle: Text('Cs ${index + 1}'),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class Page6 extends StatefulWidget {
//   @override
//   _Page6State createState() => _Page6State();
// }

// class _Page6State extends State<Page6> {
//   String? _dropdownValue = 'One';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Dropdown & Elevated Button')),
//       body: Column(
//         children: <Widget>[
//           DropdownButton<String>(
//             value: _dropdownValue,
//             onChanged: (String? newValue) {
//               setState(() {
//                 _dropdownValue = newValue!;
//               });
//             },
//             items: <String>['One', 'Two', 'Three']
//                 .map<DropdownMenuItem<String>>((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text('You selected $_dropdownValue')),
//               );
//             },
//             child: Text('Show Selected Value'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Page7 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Gesture Detector')),
//       body: GestureDetector(
//         onTap: () {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Tapped on Gesture Detector!')),
//           );
//         },
//         child: Container(
//           width: 200,
//           height: 200,
//           color: Colors.orange,
//           child: Center(child: Text('Tap me!')),
//         ),
//       ),
//     );
//   }
// }

// class Page8 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Expansion Panel')),
//       body: ListView(
//         children: <Widget>[
//           ExpansionPanelList(
//             elevation: 1,
//             expandedHeaderPadding: EdgeInsets.all(0),
//             children: [
//               ExpansionPanel(
//                 headerBuilder: (BuildContext context, bool isExpanded) {
//                   return ListTile(
//                     title: Text('Panel 1'),
//                   );
//                 },
//                 body: ListTile(
//                   title: Text('This is item 1'),
//                 ),
//                 isExpanded: true, // Ensure the panel is expanded
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
