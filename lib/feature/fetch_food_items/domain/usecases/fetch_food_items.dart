import 'package:dartz/dartz.dart';
import 'package:food_tracker/core/failures_successes/failures.dart';
import 'package:food_tracker/core/entities/food_item.dart';
import 'package:food_tracker/feature/fetch_food_items/domain/repositories/fetch_food_item_repo_contract.dart';

class FetchFoodItemsUsecase {
  final FetchFoodItemRepo fetchFoodItemRepo;

  FetchFoodItemsUsecase({required this.fetchFoodItemRepo});

  Future<Either<Failure, List<FoodItem>>> fetchFoodItems() {
    return fetchFoodItemRepo.fetechFoodItems();
  }
}
