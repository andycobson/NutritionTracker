import 'package:food_tracker/core/entities/food_item.dart';

class FoodItemModel extends FoodItem {
  const FoodItemModel({
    required String id,
    required String foodName,
    required double protein,
    required double fat,
    required double carbs,
  }) : super(
          id: id,
          foodName: foodName,
          protein: protein,
          fat: fat,
          carbs: carbs,
        );

  factory FoodItemModel.fromMap(Map<String, dynamic> map) {
    return FoodItemModel(
      id: map['id'],
      foodName: map['foodName'],
      protein: map['protein'],
      fat: map['fat'],
      carbs: map['carbs'],
    );
  }
}
