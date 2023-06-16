abstract class DataStoreSource {
  Future<Map<String, dynamic>> createData();

  Future<Map<String, dynamic>> getFoodItems();
}
