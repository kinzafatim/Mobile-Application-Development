// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Contact List',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ContactListScreen(),
//     ),
//   );
// }

// class Contact {
//   final String name;
//   final String phoneNumber;
//   final String email;

//   Contact({required this.name, required this.phoneNumber, required this.email});
// }

// class ContactListScreen extends StatelessWidget {
//   final List<Contact> contacts = [
//     Contact(name: "MOM", phoneNumber: "0321******3", email: "XYZ@example.com"),
//     Contact(name: "PAPA", phoneNumber: "032122****3", email: "XYZ@example.com"),
//     Contact(name: "BROTHER", phoneNumber: "0333******3", email: "XYZ@example.com"),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Contact List'),
//       ),
//       body: ListView.builder(
//         itemCount: contacts.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(contacts[index].name),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ContactDetailScreen(contact: contacts[index]),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class ContactDetailScreen extends StatelessWidget {
//   final Contact contact;

//   ContactDetailScreen({required this.contact});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(contact.name),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Name: ${contact.name}', style: TextStyle(fontSize: 18)),
//             SizedBox(height: 10),
//             Text('Phone: ${contact.phoneNumber}', style: TextStyle(fontSize: 18)),
//             SizedBox(height: 10),
//             Text('Email: ${contact.email}', style: TextStyle(fontSize: 18)),
//             SizedBox(height: 30),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text('Back to Contacts'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
