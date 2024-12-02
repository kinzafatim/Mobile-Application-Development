// import 'package:flutter/material.dart';
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
// 	return MaterialApp(
//   	debugShowCheckedModeBanner: false,
//   	title: 'Timetable App',
//   	theme: ThemeData(primarySwatch: Colors.blue),
//   	home: HomePage(),
// 	);
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
// 	return Scaffold(
//   	appBar: AppBar(title: Text('TimeTable')),
//   	body: GridView.builder(
//     	gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//     	itemCount: 8,
//     	itemBuilder: (context, index) {
//       	return GestureDetector(
//         	onTap: () {
//           	Navigator.push(
//             	context,
//             	MaterialPageRoute(builder: (context) => SemesterPage(semester: index + 1)),
//           	);
//         	},
//         	child: Card(
// 				margin: EdgeInsets.all(10),
// 				child: Container(
// 					decoration: BoxDecoration(
// 						gradient: LinearGradient(
// 							colors: [
// 								Colors.blue,       // First shade
// 								 Colors.lightBlue,  // Second shade
// 								 ],
// 								 begin: Alignment.topLeft,
//         end: Alignment.bottomRight,
//       ),
//     ),
//     child: Center(
//       child: Text(
//         'Semester ${index + 1}',
//         style: TextStyle(fontSize: 20, color: Colors.white), // Adjust color for contrast
//       ),
//     ),
//   ),
// ),

//       	);
//     	},
//   	),
// 	);
//   }
// }


// class SemesterPage extends StatelessWidget {
//   final int semester;

//   SemesterPage({required this.semester});

//   @override
//   Widget build(BuildContext context) {
// 	return Scaffold(
//   	appBar: AppBar(title: Text('Semester $semester')),
//   	body: Center(
//     	child: ElevatedButton(
//       	child: Text('Proceed'),
//       	onPressed: () {
//         	Navigator.push(
//           	context,
//           	MaterialPageRoute(builder: (context) => ProgramSectionPage(semester: semester)),
//         	);
//       	},
//     	),
//   	),
// 	);
//   }
// }


// class ProgramSectionPage extends StatelessWidget {
//   final int semester;

//   ProgramSectionPage({required this.semester});

//   @override
//   Widget build(BuildContext context) {
// 	String selectedProgram = 'CS';
// 	String selectedSection = 'A';

// 	return Scaffold(
//   	appBar: AppBar(title: Text('Choose Program and Section')),
//   	body: Column(
//     	children: [
//       	DropdownButton<String>(
//         	value: selectedProgram,
//         	items: ['CS', 'SE']
//             	.map((program) => DropdownMenuItem(value: program, child: Text(program)))
//             	.toList(),
//         	onChanged: (value) {
//           	selectedProgram = value!;
//         	},
//       	),
//       	DropdownButton<String>(
//         	value: selectedSection,
//         	items: ['A', 'B', 'C', 'D']
//             	.map((section) => DropdownMenuItem(value: section, child: Text(section)))
//             	.toList(),
//         	onChanged: (value) {
//           	selectedSection = value!;
//         	},
//       	),
//       	ElevatedButton(
//         	child: Text('View Timetable'),
//         	onPressed: () {
//           	Navigator.push(
//             	context,
//             	MaterialPageRoute(
//               	builder: (context) => TimetablePage(
//                 	semester: semester,
//                 	program: selectedProgram,
//                 	section: selectedSection,
//               	),
//             	),
//           	);
//         	},
//       	),
//     	],
//   	),
// 	);
//   }
// }


// class TimetablePage extends StatelessWidget {
//   final int semester;
//   final String program;
//   final String section;

//   TimetablePage({required this.semester, required this.program, required this.section});

//   @override
//   Widget build(BuildContext context) {
// 	return Scaffold(
//   	appBar: AppBar(title: Text('Timetable')),
//   	body: Center(
//     	child: Text(
//       	'Semester: $semester\nProgram: $program\nSection: $section\n\n[Insert Timetable Here]',
//       	style: TextStyle(fontSize: 18),
//       	textAlign: TextAlign.center,
//     	),
//   	),
// 	);
//   }
// }

