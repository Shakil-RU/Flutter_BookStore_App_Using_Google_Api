import 'package:books/app/notifiers/app_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app/notifiers/wishlist_model.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var wishlistModel = Provider.of<WishlistModel>(context);
    List<dynamic> favoriteBookIds = wishlistModel.wishlistItems;

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favoriteBookIds.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Book ID: ${favoriteBookIds[index]}'),
            // Customize this ListTile to display actual book details
          );
        },
      ),
    );
  }
}
