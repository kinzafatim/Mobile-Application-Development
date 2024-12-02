import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/models/catalog.dart';

class CartModel extends ChangeNotifier {
  /// The private field backing [catalog].
  CatalogModel? _catalog;

  /// Internal, private state of the cart. Stores the ids of each item.
  final List<int> _itemIds = [];

  /// The current catalog. Used to construct items from numeric ids.
  CatalogModel? get catalog => _catalog;

  set catalog(CatalogModel? newCatalog) {
    _catalog = newCatalog;
    // Notify listeners, in case the new catalog provides information
    // different from the previous one. For example, availability of an item
    // might have changed.
    notifyListeners();
  }

  /// List of items in the cart.
  List<Item> get items {
    if (_catalog == null) {
      return [];
    }
    return _itemIds.map((id) => _catalog!.getById(id)).toList();
  }

  /// The current total price of all items.
  int get totalPrice => items.fold(0, (total, current) => total + current.price);

  /// Adds [item] to cart. This is the only way to modify the cart from outside.
  void add(Item item) {
    if (!_itemIds.contains(item.id)) {
      _itemIds.add(item.id);
      notifyListeners();
    }
  }

  /// Removes [item] from cart.
  void remove(Item item) {
    if (_itemIds.contains(item.id)) {
      _itemIds.remove(item.id);
      notifyListeners();
    }
  }
}
