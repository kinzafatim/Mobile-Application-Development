// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Form',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: UserInputScreen(),
//     ),
//   );
// }

// class UserInputScreen extends StatefulWidget {
//   @override
//   _UserInputScreenState createState() => _UserInputScreenState();
// }

// class _UserInputScreenState extends State<UserInputScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _messageController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Fill this form with your details!'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: _nameController,
//                 decoration: InputDecoration(labelText: 'Name'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your name';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _emailController,
//                 decoration: InputDecoration(labelText: 'Email Address'),
//                 keyboardType: TextInputType.emailAddress,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your email';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _messageController,
//                 decoration: InputDecoration(labelText: 'Message or Feedback'),
//                 maxLines: 10,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your message or feedback';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => DisplayScreen(
//                           name: _nameController.text,
//                           email: _emailController.text,
//                           message: _messageController.text,
//                         ),
//                       ),
//                     );
//                   }
//                 },
//                 child: Text('Done'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class DisplayScreen extends StatelessWidget {
//   final String name;
//   final String email;
//   final String message;

//   DisplayScreen({required this.name, required this.email, required this.message});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Your Information'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Name: $name', style: TextStyle(fontSize: 22)),
//             SizedBox(height: 15),
//             Text('Email: $email', style: TextStyle(fontSize: 22)),
//             SizedBox(height: 15),
//             Text('Message: $message', style: TextStyle(fontSize: 22)),
//             SizedBox(height: 30),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text('<- Back to Form'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
