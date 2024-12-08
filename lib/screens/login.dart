// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class MyLogin extends StatefulWidget {
//   const MyLogin({super.key});

//   @override
//   State<MyLogin> createState() => _MyLoginState();
// }

// class _MyLoginState extends State<MyLogin> {
//   final _formKey = GlobalKey<FormState>();
//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();
//   bool _obscurePassword = true;

//   @override
//   void dispose() {
//     _usernameController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           padding: const EdgeInsets.all(40.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Welcome',
//                   style: Theme.of(context).textTheme.displayLarge,
//                 ),
//                 const SizedBox(height: 24),
//                 TextFormField(
//                   controller: _usernameController,
//                   decoration: const InputDecoration(
//                     hintText: 'Username',
//                     labelText: 'Username',
//                     border: OutlineInputBorder(),
//                   ),
//                   textInputAction: TextInputAction.next,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your username';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 TextFormField(
//                   controller: _passwordController,
//                   decoration: InputDecoration(
//                     hintText: 'Password',
//                     labelText: 'Password',
//                     border: const OutlineInputBorder(),
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         _obscurePassword ? Icons.visibility : Icons.visibility_off,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _obscurePassword = !_obscurePassword;
//                         });
//                       },
//                     ),
//                   ),
//                   obscureText: _obscurePassword,
//                   textInputAction: TextInputAction.done,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your password';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 24),
//                 ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState?.validate() ?? false) {
//                       context.pushReplacement('/catalog');
//                     }
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Theme.of(context).primaryColor,
//                   ),
//                   child: const Text('ENTER'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
