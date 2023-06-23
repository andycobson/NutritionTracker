import 'dart:convert';

import 'package:food_tracker/core/models/food_item_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class DataStoreSource {
  Future<void> createData(FoodItemModel foodItem);

  //Future<Map<String, dynamic>> getFoodItems();
}

class DataStoreSourceImpl implements DataStoreSource {
  @override
  Future<void> createData(FoodItemModel foodItem) async {
    final SharedPreferences ds = await SharedPreferences.getInstance();

    String encoded = json.encode(foodItem.toJson());

    ds.setString(foodItem.id, encoded);
  }
}

/*
class DataStoreSourceImpl implements DataStoreSource {
  @override
  Future<Map<String, dynamic>> createData() async {
    final SharedPreferences ds = await SharedPreferences.getInstance();

    
  }
}
*/