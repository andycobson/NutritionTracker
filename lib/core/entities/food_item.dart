import 'package:equatable/equatable.dart';

class FoodItem extends Equatable {
  // Id and name
  final String id;
  final String foodName;

  final double calories;

  // Macros
  final double protein;
  final double fat;
  final double carbs;

  // // Sub Macro
  // final double monoFat;
  // final double polyFat;
  // final double fibre;
  // final double sugar;

  // // Micros
  // final double calcium;

  const FoodItem(
      {required this.id,
      required this.foodName,
      required this.calories,
      required this.protein,
      required this.fat,
      required this.carbs});

  @override
  List<Object?> get props => [id, foodName, calories, protein, fat, carbs];
}
