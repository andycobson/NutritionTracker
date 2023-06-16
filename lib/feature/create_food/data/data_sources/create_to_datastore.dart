import 'package:food_tracker/core/entities/food_item.dart';
import 'package:food_tracker/core/services/datastore_service.dart';

abstract class CreateFoodItemToDS {
  Future<FoodItem> createFoodItem();
}

class CreateFoodItemToDSImpl implements CreateFoodItemToDS {
  final DataStoreSource dataStoreSource;

  CreateFoodItemToDSImpl({required this.dataStoreSource})

  @override
  Future<FoodItem> createFoodItem() async {
    await dataStoreSource.createData();
  }
}
