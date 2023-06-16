import 'package:dartz/dartz.dart';
import 'package:food_tracker/core/entities/food_item.dart';

import '../../../../core/failures_successes/failures.dart';

abstract class FetchFoodItemRepo {
  Future<Either<Failure, List<FoodItem>>> fetechFoodItems();
}
