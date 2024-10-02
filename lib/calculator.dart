// import 'package:flutter/material.dart';

// void main() {
//   runApp(CalculatorApp());
// }

// class CalculatorApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Calculator',
//       home: Calculator(),
//     );
//   }
// }

// class Calculator extends StatefulWidget {
//   @override
//   _CalculatorState createState() => _CalculatorState();
// }

// class _CalculatorState extends State<Calculator> {
//   String _output = "0";

//   void _buttonPressed(String buttonText) {
//     setState(() {
//       if (buttonText == "C") {
//         _output = "0";
//       } else if (_output == "0") {
//         _output = buttonText;
//       } else {
//         _output += buttonText;
//       }
//     });
//   }

//   void _calculate() {
//     try {
//       final result = _evaluateExpression(_output);
//       setState(() {
//         _output = result.toString();
//       });
//     } catch (e) {
//       setState(() {
//         _output = "Error";
//       });
//     }
//   }

//   double _evaluateExpression(String expression) {
//     // Using a simple evaluation approach
//     // Note: This can be improved further for more complex expressions
//     List<String> parts = expression.split(RegExp(r'(\+|\-|\*|\/)'));

//     if (parts.length < 3) {
//       return double.parse(parts[0]); // return only the number if no operation
//     }

//     double num1 = double.parse(parts[0]);
//     double num2 = double.parse(parts[2]);
//     String operator = parts[1].trim();

//     switch (operator) {
//       case "+":
//         return num1 + num2;
//       case "-":
//         return num1 - num2;
//       case "*":
//         return num1 * num2;
//       case "/":
//         if (num2 == 0) throw Exception("Division by zero");
//         return num1 / num2;
//       default:
//         throw Exception("Invalid operator");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Calculator')),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
//             alignment: Alignment.centerRight,
//             child: Text(
//               _output,
//               style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
//             ),
//           ),
//           SizedBox(height: 20),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   _buildButton("7"),
//                   _buildButton("8"),
//                   _buildButton("9"),
//                   _buildButton("/"),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   _buildButton("4"),
//                   _buildButton("5"),
//                   _buildButton("6"),
//                   _buildButton("*"),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   _buildButton("1"),
//                   _buildButton("2"),
//                   _buildButton("3"),
//                   _buildButton("-"),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   _buildButton("C"),
//                   _buildButton("0"),
//                   _buildButton("="),
//                   _buildButton("+"),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildButton(String buttonText) {
//     return Container(
//       margin: EdgeInsets.all(5.0),
//       child: ElevatedButton(
//         onPressed: () {
//           if (buttonText == "=") {
//             _calculate();
//           } else {
//             _buttonPressed(buttonText);
//           }
//         },
//         child: Text(
//           buttonText,
//           style: TextStyle(fontSize: 24),
//         ),
//         style: ElevatedButton.styleFrom(
//           minimumSize: Size(70, 70),
//         ),
//       ),
//     );
//   }
// }
