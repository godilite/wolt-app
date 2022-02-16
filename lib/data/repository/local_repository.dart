import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:woltapp/data/models/item.dart';

class LocalRepository {
  static const favoriteItemsKey = 'favoriteItems';

  Future<List<Item>> getFavoriteVenues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Fetch and decode data
    final String? items = prefs.getString(favoriteItemsKey);
    if (items != null) {
      final decodedItems = json.decode(items) as List;
      return decodedItems.map((e) => Item.fromJson(e)).toList();
    }
    return [];
  }

  Future<void> updateFavoriteList(List<Item> items) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(favoriteItemsKey, json.encode(items));
  }
}
