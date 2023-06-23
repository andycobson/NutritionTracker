import 'package:food_tracker/core/failures_successes/exceptions.dart';
import 'package:food_tracker/core/failures_successes/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:food_tracker/core/models/food_item_model.dart';
import 'package:food_tracker/core/services_locator.dart';
import 'package:food_tracker/feature/create_food/data/data_sources/create_to_datastore.dart';
import '../../domain/repositories/create_food_item_repo_contract.dart';

class CreateFoodItemRepoImpl implements CreateFoodItemRepo {
  final CreateFoodItemToDS createFoodItemToDS = sl<CreateFoodItemToDS>();

  @override
  Future<Either<Failure, void>> createFoodItem(FoodItemModel model) async {
    try {
      return Right(await createFoodItemToDS.createFoodItem(model));
    } on CreateFoodException catch (e) {
      return Left(CreateFoodItemFailure(message: e.message));
    }
  }
}
