// import 'package:flutter/material.dart';


// void main() {
//  runApp(BurgerShopApp());
// }


// class BurgerShopApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Burger Shop Menu',
//      home: BurgerShopHome(),
//    );
//  }
// }


// class BurgerShopHome extends StatefulWidget {
//  @override
//  _BurgerShopHomeState createState() => _BurgerShopHomeState();
// }


// class _BurgerShopHomeState extends State<BurgerShopHome> {
//  String _selectedDish = 'No dish selected';
//  void _selectDish(BuildContext context) async {
//    final result = await Navigator.push(
//      context,
//      MaterialPageRoute(builder: (context) => DishSelectionScreen()),
//    );


//    if (result != null) {
//      setState(() {
//        _selectedDish = result;
//      });
//      ScaffoldMessenger.of(context).showSnackBar(
//        SnackBar(content: Text('Selected dish: $result')),
//      );
//    } else {
//      ScaffoldMessenger.of(context).showSnackBar(
//        SnackBar(content: Text('No dish selected')),
//      );
//    }
//  }


//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Burger Next', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: [
         
//            Text(
//              'Selected Dish: $_selectedDish',
//              style: TextStyle(fontSize: 20),
//            ),
//            SizedBox(height: 20),
          
//            ElevatedButton(
//              onPressed: () => _selectDish(context),
//              child: Text('Select a Dish'),
//              style: ElevatedButton.styleFrom(
//                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
// }


// class DishSelectionScreen extends StatelessWidget {
//  void _showDishDescription(BuildContext context, String dish, String description) {
//    showDialog(
//      context: context,
//      builder: (BuildContext context) {
//        return AlertDialog(
//          title: Text(dish),
//          content: Text(description),
//          actions: [
//            TextButton(
//              onPressed: () => Navigator.of(context).pop(),
//              child: Text('OK'),
//            ),
//          ],
//        );
//      },
//    );
//  }


//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Choose Your Dish'),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: [
//            // Burgers
//            ElevatedButton(
//              onPressed: () {
//                Navigator.pop(context, 'Classic Cheeseburger');
//              },
//              onLongPress: () {
//                _showDishDescription(context, 'Classic Cheeseburger', 'A juicy beef patty with melted cheese, lettuce, and tomato.');
//              },
//              style: ElevatedButton.styleFrom(
//                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                backgroundColor: Colors.brown,
//              ),
//              child: Text('Classic Cheeseburger'),
//            ),
//            SizedBox(height: 20),
//            ElevatedButton(
//              onPressed: () {
//                Navigator.pop(context, 'BBQ Bacon Burger');
//              },
//              onLongPress: () {
//                _showDishDescription(context, 'BBQ Bacon Burger', 'A beef patty topped with crispy bacon and BBQ sauce.');
//              },
//              style: ElevatedButton.styleFrom(
//                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                backgroundColor: Colors.deepOrange,
//              ),
//              child: Text('BBQ Bacon Burger'),
//            ),
//            SizedBox(height: 20),
//            ElevatedButton(
//              onPressed: () {
//                Navigator.pop(context, 'Mushroom Swiss Burger');
//              },
//              onLongPress: () {
//                _showDishDescription(context, 'Mushroom Swiss Burger', 'A beef patty topped with sautéed mushrooms and Swiss cheese.');
//              },
//              style: ElevatedButton.styleFrom(
//                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                backgroundColor: Colors.orangeAccent,
//              ),
//              child: Text('Mushroom Swiss Burger'),
//            ),
//            SizedBox(height: 20),
//            ElevatedButton(
//              onPressed: () {
//                Navigator.pop(context, 'Spicy Jalapeño Burger');
//              },
//              onLongPress: () {
//                _showDishDescription(context, 'Spicy Jalapeño Burger', 'A spicy burger with jalapeños, pepper jack cheese, and chipotle mayo.');
//              },
//              style: ElevatedButton.styleFrom(
//                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                backgroundColor: Colors.redAccent,
//              ),
//              child: Text('Spicy Jalapeño Burger'),
//            ),
//            SizedBox(height: 20),
//            // Drinks
//            ElevatedButton(
//              onPressed: () {
//                Navigator.pop(context, 'Cola');
//              },
//              onLongPress: () {
//                _showDishDescription(context, 'Cola', 'A classic carbonated soft drink.');
//              },
//              style: ElevatedButton.styleFrom(
//                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                backgroundColor: Colors.blueAccent,
//              ),
//              child: Text('Cola'),
//            ),
//            SizedBox(height: 20),
//            ElevatedButton(
//              onPressed: () {
//                Navigator.pop(context, 'Lemonade');
//              },
//              onLongPress: () {
//                _showDishDescription(context, 'Lemonade', 'A refreshing drink made with lemon juice, water, and sugar.');
//              },
//              style: ElevatedButton.styleFrom(
//                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                backgroundColor: Colors.yellowAccent,
//              ),
//              child: Text('Lemonade'),
//            ),
//            SizedBox(height: 20),
//            // Desserts
//            ElevatedButton(
//              onPressed: () {
//                Navigator.pop(context, 'Chocolate Shake');
//              },
//              onLongPress: () {
//                _showDishDescription(context, 'Chocolate Shake', 'A rich and creamy chocolate milkshake topped with whipped cream.');
//              },
//              style: ElevatedButton.styleFrom(
//                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                backgroundColor: Colors.brown[300],
//              ),
//              child: Text('Chocolate Shake'),
//            ),
//            SizedBox(height: 20),
//            ElevatedButton(
//              onPressed: () {
//                Navigator.pop(context, 'Ice Cream Sundae');
//              },
//              onLongPress: () {
//                _showDishDescription(context, 'Ice Cream Sundae', 'A delicious sundae topped with hot fudge and nuts.');
//              },
//              style: ElevatedButton.styleFrom(
//                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                backgroundColor: Colors.pink,
//              ),
//              child: Text('Ice Cream Sundae'),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
// }
