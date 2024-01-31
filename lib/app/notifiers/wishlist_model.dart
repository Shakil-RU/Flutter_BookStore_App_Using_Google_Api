// wishlist_model.dart

import 'package:flutter/foundation.dart';

class WishlistModel extends ChangeNotifier {
  // List to store IDs of items in the wishlist
  List<dynamic> _wishlistItems = [];

  // Get the current wishlist items
  List<dynamic> get wishlistItems => _wishlistItems;

  // Check if an item is in the wishlist
  bool isInWishlist(dynamic itemId) {
    return _wishlistItems.contains(itemId);
  }

  // Add an item to the wishlist
  void addToWishlist(dynamic itemId) {
    _wishlistItems.add(itemId);
    notifyListeners();
  }

  // Remove an item from the wishlist
  void removeFromWishlist(dynamic itemId) {
    _wishlistItems.remove(itemId);
    notifyListeners();
  }
}
