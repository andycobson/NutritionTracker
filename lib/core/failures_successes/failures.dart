abstract class Failure {
  final String? message;
  const Failure({this.message});
}

class FetchFoodItemFailure extends Failure {
  const FetchFoodItemFailure({String? message}) : super(message: message);
}
