import 'package:food_tracker/core/entities/food_item.dart';
import 'package:food_tracker/core/models/food_item_model.dart';

class ModelConverter {
  static FoodItemModel fromFoodItemToModel(FoodItem foodItem) {
    return FoodItemModel(
        id: foodItem.id,
        foodName: foodItem.foodName,
        calories: foodItem.calories,
        protein: foodItem.protein,
        fat: foodItem.fat,
        carbs: foodItem.carbs);
  }
}
