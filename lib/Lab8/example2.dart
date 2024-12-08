// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// // Photo Model
// class Photo {
//   final int albumId;
//   final int id;
//   final String title;
//   final String url;
//   final String thumbnailUrl;

//   const Photo({
//     required this.albumId,
//     required this.id,
//     required this.title,
//     required this.url,
//     required this.thumbnailUrl,
//   });

//   factory Photo.fromJson(Map<String, dynamic> json) {
//     return Photo(
//       albumId: json['albumId'] as int,
//       id: json['id'] as int,
//       title: json['title'] as String,
//       url: json['url'] as String,
//       thumbnailUrl: json['thumbnailUrl'] as String,
//     );
//   }
// }

// // Fetch Photos Function
// Future<List<Photo>> fetchPhotos(http.Client client) async {
//   final response =
//       await client.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

//   if (response.statusCode == 200) {
//     return compute(parsePhotos, response.body);
//   } else {
//     throw Exception('Failed to load photos');
//   }
// }

// // Parse Photos Function
// List<Photo> parsePhotos(String responseBody) {
//   final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
//   return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
// }

// // Main App Entry
// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Photo Grid',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: const MyHomePage(title: 'Photo Grid Example'),
//     );
//   }
// }

// // Home Page Widget
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   late Future<List<Photo>> futurePhotos;

//   @override
//   void initState() {
//     super.initState();
//     futurePhotos = fetchPhotos(http.Client());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: FutureBuilder<List<Photo>>(
//         future: futurePhotos,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(
//               child: Text(
//                 'Error: ${snapshot.error}',
//                 style: const TextStyle(color: Colors.red),
//               ),
//             );
//           } else if (snapshot.hasData) {
//             return PhotosGrid(photos: snapshot.data!);
//           } else {
//             return const Center(
//               child: Text('No data available'),
//             );
//           }
//         },
//       ),
//     );
//   }
// }

// // Photos Grid Widget
// class PhotosGrid extends StatelessWidget {
//   const PhotosGrid({super.key, required this.photos});
//   final List<Photo> photos;

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         mainAxisSpacing: 8,
//         crossAxisSpacing: 8,
//       ),
//       itemCount: photos.length,
//       itemBuilder: (context, index) {
//         return Card(
//           elevation: 2,
//           child: Column(
//             children: [
//               Expanded(
//                 child: Image.network(
//                   photos[index].thumbnailUrl,
//                   fit: BoxFit.cover,
//                   errorBuilder: (context, error, stackTrace) {
//                     return const Icon(Icons.broken_image, size: 50);
//                   },
//                   loadingBuilder: (context, child, loadingProgress) {
//                     if (loadingProgress == null) return child;
//                     return const Center(child: CircularProgressIndicator());
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   photos[index].title,
//                   style: const TextStyle(fontSize: 14),
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
