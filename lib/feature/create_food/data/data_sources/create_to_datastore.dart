import 'package:food_tracker/core/entities/food_item.dart';
import 'package:food_tracker/core/failures_successes/exceptions.dart';
import 'package:food_tracker/core/models/food_item_model.dart';
import 'package:food_tracker/core/services/datastore_service.dart';
import 'package:food_tracker/core/services_locator.dart';

abstract class CreateFoodItemToDS {
  Future<void> createFoodItem(FoodItemModel foodItem);
}

class CreateFoodItemToDSImpl implements CreateFoodItemToDS {
  final DataStoreSource dataStoreSource = sl<DataStoreSource>();

  @override
  Future<void> createFoodItem(FoodItemModel foodItem) async {
    try {
      await dataStoreSource.createData(foodItem);
    } catch (e) {
      throw const CreateFoodException(message: 'Failed to create food item');
    }
  }
}
