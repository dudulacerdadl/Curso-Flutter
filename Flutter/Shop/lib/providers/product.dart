import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product({
    this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
    this.isFavorite = false,
  });

  // Método usado para inverter a lógica do favorito, e ao mesmo tempo, notificando por meio di notify
  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
