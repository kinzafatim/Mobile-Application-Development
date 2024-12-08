// import 'package:flutter/material.dart';


// void main() {
//  runApp(ColorPickerApp());
// }


// class ColorPickerApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Color Picker',
//      home: ColorPickerHome(),
//    );
//  }
// }


// class ColorPickerHome extends StatefulWidget {
//  @override
//  _ColorPickerHomeState createState() => _ColorPickerHomeState();
// }


// class _ColorPickerHomeState extends State<ColorPickerHome> {
//  Color _selectedColor = Colors.white;
//  String _selectedColorName = 'White';


//  // Function to handle color selection using switch cases
//  void _selectColor(String colorName) {
//    switch (colorName) {
//      case 'Red':
//        setState(() {
//          _selectedColor = Colors.red;
//          _selectedColorName = 'Red';
//        });
//        break;
//      case 'Green':
//        setState(() {
//          _selectedColor = Colors.green;
//          _selectedColorName = 'Green';
//        });
//        break;
//      case 'Blue':
//        setState(() {
//          _selectedColor = Colors.blue;
//          _selectedColorName = 'Blue';
//        });
//        break;
//      default:
//        setState(() {
//          _selectedColor = Colors.white;
//          _selectedColorName = 'White';
//        });
//        break;
//    }


//    // Show a snackbar with the selected color name
//    ScaffoldMessenger.of(context).showSnackBar(
//      SnackBar(
//        content: Text('Selected Color: $_selectedColorName'),
//        duration: Duration(seconds: 2),
//      ),
//    );
//  }


//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Color Picker Home'),
//      ),
//      body: Container(
//        color: _selectedColor, // Background color changes based on selection
//        child: Center(
//          child: ElevatedButton(
//            child: Text('Pick a Color'),
//            onPressed: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(
//                  builder: (context) =>
//                      ColorSelectionScreen(onColorSelected: _selectColor),
//                ),
//              );
//            },
//            style: ElevatedButton.styleFrom(
//              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//              backgroundColor: Colors.black87,
//              shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(20),
//              ),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
// }


// class ColorSelectionScreen extends StatelessWidget {
//  final Function(String) onColorSelected;


//  ColorSelectionScreen({required this.onColorSelected});


//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Select a Color'),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: [
//            ElevatedButton(
//              onPressed: () {
//                onColorSelected('Red');
//                Navigator.pop(context);
//              },
//              style: ElevatedButton.styleFrom(
//                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                backgroundColor: Colors.redAccent,
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(20),
//                ),
//              ),
//              child: Text('Red'),
//            ),
//            SizedBox(height: 20), // Space between buttons
//            ElevatedButton(
//              onPressed: () {
//                onColorSelected('Green');
//                Navigator.pop(context);
//              },
//              style: ElevatedButton.styleFrom(
//                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                backgroundColor: Colors.greenAccent,
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(20),
//                ),
//              ),
//              child: Text('Green'),
//            ),
//            SizedBox(height: 20), // Space between buttons
//            ElevatedButton(
//              onPressed: () {
//                onColorSelected('Blue');
//                Navigator.pop(context);
//              },
//              style: ElevatedButton.styleFrom(
//                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                backgroundColor: Colors.blueAccent,
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(20),
//                ),
//              ),
//              child: Text('Blue'),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
// }
