import 'package:dartz/dartz.dart';
import 'package:food_tracker/core/models/food_item_model.dart';

import '../../../../core/failures_successes/failures.dart';

abstract class CreateFoodItemRepo {
  Future<Either<Failure, void>> createFoodItem(FoodItemModel model);
}
