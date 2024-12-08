import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Books Grid',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: const BookGridScreen(),
//     );
//   }
// }

// class Book {
//   final int id;
//   final String title;
//   final String author;
//   final String coverUrl;

//   const Book({
//     required this.id,
//     required this.title,
//     required this.author,
//     required this.coverUrl,
//   });

//   factory Book.fromJson(Map<String, dynamic> json) {
//     return Book(
//       id: json['id'],
//       title: json['title'],
//       author: json['author'],
//       coverUrl: json['coverUrl'],
//     );
//   }
// }

// Future<List<Book>> fetchBooks(http.Client client) async {
//   final response = await client.get(Uri.parse('YOUR_MOCK_API_ENDPOINT'));
//   final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
//   return parsed.map<Book>((json) => Book.fromJson(json)).toList();
// }

// class BookGridScreen extends StatefulWidget {
//   const BookGridScreen({super.key});

//   @override
//   State<BookGridScreen> createState() => _BookGridScreenState();
// }

// class _BookGridScreenState extends State<BookGridScreen> {
//   late Future<List<Book>> futureBooks;

//   @override
//   void initState() {
//     super.initState();
//     futureBooks = fetchBooks(http.Client());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Books Grid')),
//       body: FutureBuilder<List<Book>>(
//         future: futureBooks,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return const Center(child: Text('Error fetching data'));
//           } else if (snapshot.hasData) {
//             return BooksGrid(books: snapshot.data!);
//           } else {
//             return const Center(child: Text('No books found'));
//           }
//         },
//       ),
//     );
//   }
// }

// class BooksGrid extends StatelessWidget {
//   final List<Book> books;

//   const BooksGrid({super.key, required this.books});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 0.7,
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//       ),
//       itemCount: books.length,
//       padding: const EdgeInsets.all(10),
//       itemBuilder: (context, index) {
//         final book = books[index];
//         return GestureDetector(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => BookDetailScreen(book: book),
//               ),
//             );
//           },
//           child: Column(
//             children: [
//               Expanded(
//                 child: Image.network(
//                   book.coverUrl,
//                   fit: BoxFit.cover,
//                   errorBuilder: (context, error, stackTrace) =>
//                       const Icon(Icons.broken_image),
//                 ),
//               ),
//               const SizedBox(height: 5),
//               Text(book.title, style: const TextStyle(fontWeight: FontWeight.bold)),
//               Text(book.author, style: const TextStyle(color: Colors.grey)),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class BookDetailScreen extends StatelessWidget {
//   final Book book;

//   const BookDetailScreen({super.key, required this.book});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(book.title)),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           children: [
//             Expanded(
//               child: Image.network(
//                 book.coverUrl,
//                 fit: BoxFit.contain,
//                 errorBuilder: (context, error, stackTrace) =>
//                     const Icon(Icons.broken_image, size: 100),
//               ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               book.title,
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 5),
//             Text(
//               'by ${book.author}',
//               style: const TextStyle(fontSize: 18, color: Colors.grey),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
