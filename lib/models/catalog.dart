// import 'package:flutter/material.dart';

// /// A proxy of the catalog of items the user can buy.
// ///
// /// In a real app, this might be backed by a backend and cached on device.
// /// In this sample app, the catalog is procedurally generated and infinite.
// ///
// /// For simplicity, the catalog is expected to be immutable (no products are
// /// expected to be added, removed, or changed during the execution of the app).
// class CatalogModel {
//   /// The list of item names in the catalog.
//   static const List<String> itemNames = [
//     'Code Smell',
//     'Control Flow',
//     'Interpreter',
//     'Recursion',
//     'Sprint',
//     'Heisenbug',
//     'Spaghetti',
//     'Hydra Code',
//     'Off-By-One',
//     'Scope',
//     'Callback',
//     'Closure',
//     'Automata',
//     'Bit Shift',
//     'Currying',
//   ];

//   get items => null;

//   /// Get item by [id].
//   ///
//   /// If [id] exceeds the length of [itemNames], it wraps around using modulo.
//   /// Throws an error if [id] is negative.
//   Item getById(int id) {
//     if (id < 0) {
//       throw ArgumentError('Item ID must be non-negative');
//     }
//     return Item(id, itemNames[id % itemNames.length]);
//   }

//   /// Get item by its position in the catalog.
//   ///
//   /// The position is equivalent to its [id].
//   Item getByPosition(int position) => getById(position);
// }

// @immutable
// class Item {
//   /// Unique identifier for the item.
//   final int id;

//   /// The name of the item.
//   final String name;

//   /// The color associated with the item.
//   final Color color;

//   /// The price of the item (fixed for simplicity).
//   final int price = 42;

//   /// Creates an item with the given [id] and [name].
//   ///
//   /// The color is assigned based on the [id] using Material Design's primary colors.
//   Item(this.id, this.name)
//       : color = Colors.primaries[id % Colors.primaries.length];

//   @override
//   int get hashCode => id;

//   @override
//   bool operator ==(Object other) => other is Item && other.id == id;
// }
