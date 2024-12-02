// import 'package:flutter/material.dart';
// import 'dart:async';

// void main() {
//   runApp(CrickStatsApp());
// }

// class CrickStatsApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'ScoreSonic',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: SplashScreen(),
//     );
//   }
// }

// // Splash Screen with Animation
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 3),
//     );
//     _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
//     _controller.forward();
//     Timer(Duration(seconds: 3), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => MainScreen()),
//       );
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green.shade700,
//       body: Center(
//         child: ScaleTransition(
//           scale: _animation,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.sports_cricket, size: 100, color: Colors.white),
//               SizedBox(height: 20),
//               Text(
//                 "ScoreSonic",
//                 style: TextStyle(
//                   fontSize: 36,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Main Screen with Bottom Navigation
// class MainScreen extends StatefulWidget {
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _currentIndex = 0;

//   final List<Widget> _screens = [
//     HomePage(),
//     MatchListPage(),
//     PlayerProfilePage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         selectedItemColor: Colors.green,
//         unselectedItemColor: Colors.grey,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.sports),
//             label: "Matches",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Profiles",
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Home Page
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ScoreSonic"),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               "Welcome to ScoreSonic!",
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           Expanded(
//             child: GridView.count(
//               crossAxisCount: 2,
//               padding: EdgeInsets.all(16.0),
//               children: [
//                 HomeOption(
//                   title: "Upcoming Matches",
//                   icon: Icons.calendar_today,
//                   onTap: () {},
//                 ),
//                 HomeOption(
//                   title: "Live Scores",
//                   icon: Icons.live_tv,
//                   onTap: () {},
//                 ),
//                 HomeOption(
//                   title: "Tournament Stats",
//                   icon: Icons.emoji_events,
//                   onTap: () {},
//                 ),
//                 HomeOption(
//                   title: "Player Rankings",
//                   icon: Icons.leaderboard,
//                   onTap: () {},
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Match List Page
// class MatchListPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Matches"),
//         centerTitle: true,
//       ),
//       body: ListView(
//         padding: EdgeInsets.all(16.0),
//         children: [
//           MatchCard(
//             title: "Team A vs Team B",
//             date: "Nov 20, 2024",
//             time: "3:00 PM",
//           ),
//           MatchCard(
//             title: "Team C vs Team D",
//             date: "Nov 21, 2024",
//             time: "5:00 PM",
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Player Profile Page with Additional Features
// class PlayerProfilePage extends StatelessWidget {
//   final String name = "Syed Saad Akhtar";
//   final String mobileNumber = "+92 3213757003";
//   final String email = "ssaad.akhtar@gmail.com";
//   final String gender = "Male";
//   final String city = "Karachi, Pakistan";
//   final String battingStyle = "Right-Handed";
//   final String playingRole = "Top-order Batter";
//   final String dateOfBirth = "July 10, 2003";
//   final int followers = 2030;
//   final int following = 150;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Player Profile"),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: CircleAvatar(
//                 radius: 60,
//                 backgroundImage: AssetImage("assets/profile.jpg"), // Replace with a real image
//               ),
//             ),
//             SizedBox(height: 16),
//             Center(
//               child: Text(
//                 name,
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(height: 8),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ProfileStat(title: "Followers", value: followers.toString()),
//                 SizedBox(width: 20),
//                 ProfileStat(title: "Following", value: following.toString()),
//               ],
//             ),
//             Divider(height: 30, thickness: 1),
//             ProfileDetail(icon: Icons.phone, label: "Mobile Number", value: mobileNumber),
//             ProfileDetail(icon: Icons.email, label: "Email", value: email),
//             ProfileDetail(icon: Icons.person, label: "Gender", value: gender),
//             ProfileDetail(icon: Icons.location_city, label: "City", value: city),
//             ProfileDetail(icon: Icons.sports_cricket, label: "Batting Style", value: battingStyle),
//             ProfileDetail(icon: Icons.star, label: "Playing Role", value: playingRole),
//             ProfileDetail(icon: Icons.calendar_today, label: "Date of Birth", value: dateOfBirth),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Reusable Widgets
// class HomeOption extends StatelessWidget {
//   final String title;
//   final IconData icon;
//   final VoidCallback onTap;

//   HomeOption({required this.title, required this.icon, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(8.0),
//       child: InkWell(
//         onTap: onTap,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, size: 40, color: Colors.green),
//             SizedBox(height: 10),
//             Text(
//               title,
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MatchCard extends StatelessWidget {
//   final String title;
//   final String date;
//   final String time;

//   MatchCard({required this.title, required this.date, required this.time});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.symmetric(vertical: 8.0),
//       child: ListTile(
//         title: Text(title),
//         subtitle: Text("$date | $time"),
//         trailing: Icon(Icons.arrow_forward),
//         onTap: () {
//           // Navigate to detailed match info (future feature)
//         },
//       ),
//     );
//   }
// }

// class ProfileDetail extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final String value;

//   ProfileDetail({required this.icon, required this.label, required this.value});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         children: [
//           Icon(icon, size: 28, color: Colors.green),
//           SizedBox(width: 16),
//           Expanded(
//             child: Text(
//               "$label: $value",
//               style: TextStyle(fontSize: 16),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ProfileStat extends StatelessWidget {
//   final String title;
//   final String value;

//   ProfileStat({required this.title, required this.value});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           value,
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         Text(
//           title,
//           style: TextStyle(fontSize: 16, color: Colors.grey),
//         ),
//       ],
//     );
//   }
// }
