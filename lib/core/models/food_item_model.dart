import 'package:food_tracker/core/entities/food_item.dart';

class FoodItemModel extends FoodItem {
  const FoodItemModel({
    required String id,
    required String foodName,
    required double calories,
    required double protein,
    required double fat,
    required double carbs,
  }) : super(
          id: id,
          foodName: foodName,
          calories: calories,
          protein: protein,
          fat: fat,
          carbs: carbs,
        );

  factory FoodItemModel.fromMap(Map<String, dynamic> map) {
    return FoodItemModel(
      id: map['id'],
      foodName: map['foodName'],
      calories: map['calories'],
      protein: map['protein'],
      fat: map['fat'],
      carbs: map['carbs'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'foodName': foodName,
        'calories': calories,
        'protein': protein,
        'fat': fat,
        'carbs': carbs
      };
}
