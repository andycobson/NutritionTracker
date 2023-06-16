import 'package:equatable/equatable.dart';

class FoodItem extends Equatable {
  // Id and name
  final String id;
  final String foodName;

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
      required this.protein,
      required this.fat,
      required this.carbs});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
