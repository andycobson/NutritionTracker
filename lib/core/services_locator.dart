import 'package:food_tracker/core/services/datastore_service.dart';
import 'package:food_tracker/feature/create_food/data/data_sources/create_to_datastore.dart';
import 'package:food_tracker/feature/create_food/data/repositories/create_food_item_repo_impl.dart';
import 'package:get_it/get_it.dart';
import '../feature/create_food/domain/repositories/create_food_item_repo_contract.dart';

final GetIt sl = GetIt.instance;

void setUpServices() {
  sl.registerSingleton<DataStoreSource>(DataStoreSourceImpl());
  sl.registerSingleton<CreateFoodItemToDS>(CreateFoodItemToDSImpl());
  sl.registerSingleton<CreateFoodItemRepo>(CreateFoodItemRepoImpl());
}
