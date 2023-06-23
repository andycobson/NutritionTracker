abstract class Failure {
  final String? message;
  const Failure({this.message});
}

class FetchFoodItemFailure extends Failure {
  const FetchFoodItemFailure({String? message}) : super(message: message);
}

class CreateFoodItemFailure extends Failure {
  const CreateFoodItemFailure({String? message}) : super(message: message);
}
