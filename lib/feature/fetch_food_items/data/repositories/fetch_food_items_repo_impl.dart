import 'package:food_tracker/core/failures_successes/failures.dart';
import 'package:food_tracker/core/entities/food_item.dart';
import 'package:dartz/dartz.dart';
import 'package:food_tracker/feature/fetch_food_items/domain/repositories/fetch_food_item_repo_contract.dart';

class FetchFoodItemRepoImpl implements FetchFoodItemRepo {
  @override
  Future<Either<Failure, List<FoodItem>>> fetechFoodItems() {
    // TODO: implement fetechFoodItems
    throw UnimplementedError();
  }
}
