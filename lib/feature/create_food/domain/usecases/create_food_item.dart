import 'package:dartz/dartz.dart';
import 'package:food_tracker/core/models/food_item_model.dart';

import '../../../../core/failures_successes/failures.dart';
import '../../../../core/services_locator.dart';
import '../repositories/create_food_item_repo_contract.dart';

class CreateFoodItemUsecase {
  final CreateFoodItemRepo createFoodItemRepo = sl<CreateFoodItemRepo>();

  Future<Either<Failure, void>> createFoodItem(Map<String, dynamic> map) {
    FoodItemModel model = FoodItemModel.fromMap(map);
    return createFoodItemRepo.createFoodItem(model);
  }
}
